
## 1. What are best practices for data modeling in Power BI?

Design a **star schema**: central fact tables linked to denormalized dimension tables. Use surrogate integer keys, proper data types, and remove unused columns. Create a hidden, marked date table with continuous dates. Optimize for VertiPaq by minimizing row and column counts—eliminate unnecessary precision, avoid calculated columns when measures suffice, and use display folders and descriptive naming. Implement row-level security and document relationships and measures. For large models, consider aggregation tables and incremental refresh.  

## 2. What is DAX and why is it important?

**DAX (Data Analysis Expressions)** is Power BI’s formula language for defining measures, calculated columns, and tables. It extends Excel-like functions to relational tables, supports filter and row contexts, and enables dynamic, context-aware calculations such as time intelligence and ranking. DAX unlocks advanced analytics—KPIs, cohort analysis, and custom aggregations—making Power BI interactive and powerful for business insights.

## 3. What are the three fundamental concepts of DAX?

1. **Syntax:** Function names, arguments, and operators must follow DAX grammar, e.g. `SUM(Table[Column])`.  
2. **Functions:** Predefined operations (aggregation, filter, relationship, time intelligence, text, logical) that process entire columns or tables.  
3. **Context:**  
   - **Filter context:** Set of slicers, filters, and row/column headers that narrow data.  
   - **Row context:** Current row in calculated columns or iterators (e.g., `SUMX`).  
   - **Context transition:** Converting row to filter context when calling measures within `CALCULATE()` or calculated columns.

## 4. What is the difference between calculated columns and measures?

- **Calculated Column:** Evaluated during data refresh, stored in the model, uses row context, increases file size, and can be used as a slicer/filter.  
- **Measure:** Evaluated at query time, not stored, uses filter context, minimal size impact, dynamic with visuals and slicers. Use measures for aggregations and calculations that depend on current filters; use columns for row-level fixed data or categories.  

## 5. What are row context and filter context in DAX?

- **Row Context:** The “current row” when computing calculated columns or within iterator functions (`SUMX`, `FILTER`). You can reference other columns in that row directly.  
- **Filter Context:** The set of filters applied by slicers, visual filters, page/report filters, or modified by DAX functions (`CALCULATE`, `ALL`). It determines which rows in the model are visible to measures.

## 6. What is context transition and when does it occur?

**Context transition** occurs when DAX transforms row context into filter context, typically within `CALCULATE()` or when a measure is called in a calculated column. The engine applies filters matching the current row’s key values to the measure. You can simulate it explicitly with `CALCULATE([Measure])`, forcing the row’s values to become filters for that measure.

## 7. What are the ALL and ALLEXCEPT functions?

- **ALL(TableOrColumn):** Ignores all filters on the specified table or column, returning unfiltered values.  
- **ALLEXCEPT(Table, Column1,…):** Removes all filters from the table except those on the specified columns.  
Use `ALL` for grand totals or percent-of-total calculations, and `ALLEXCEPT` to keep grouping filters while removing others—for example, `% of category total`.

## 8. What are DISTINCT and VALUES functions and their differences?

- **DISTINCT(Table[Column]):** Returns unique non-blank values from a column, ignoring blanks.  
- **VALUES(Table[Column]):** Returns unique values including blanks and fully respects current filter context.  
Use `VALUES` when blanks matter or you need context-sensitive lists; use `DISTINCT` when blanks should be excluded for performance.

## 9. What are time intelligence functions in DAX? Give examples.

Time intelligence functions enable date-based analyses:
- **`TOTALYTD()`/`TOTALQTD()`/`TOTALMTD()`:** Cumulative sums to date.  
- **`SAMEPERIODLASTYEAR()`/`PREVIOUSMONTH()`/`PREVIOUSYEAR()`:** Compare to prior periods.  
- **`DATEADD()`/`PARALLELPERIOD()`:** Shift date ranges flexibly.  
- **Example:**  
  ```dax
  YTD Sales = TOTALYTD(SUM(Sales[Amount]), 'Calendar'[Date])
  YoY Growth = DIVIDE([Total Sales] - CALCULATE([Total Sales], SAMEPERIODLASTYEAR('Calendar'[Date])), CALCULATE([Total Sales], SAMEPERIODLASTYEAR('Calendar'[Date])))
  ```

## 10. What is the CALCULATE function and how is it used?

`CALCULATE(<expression>, <filter1>, <filter2>,…)` evaluates an expression in a modified filter context. It performs context transition if called in row context, adds or replaces filters, and enables conditional measures. Use `CALCULATE` to apply slicer-like filters in DAX, override existing filters (`ALL`), or implement complex scenarios:
```dax
Sales_North = CALCULATE(SUM(Sales[Amount]), Sales[Region]="North")
Sales_All = CALCULATE([Total Sales], ALL(Sales))
```

## 11. What is the difference between SUM and SUMX functions?

- **SUM(Table[Column]):** Aggregates values directly from a column.  
- **SUMX(Table, Expression):** Iterates row by row, evaluates `Expression` for each row, then sums the results.  
Use `SUM` for simple column sums; use `SUMX` when you need per-row calculations before aggregation (e.g., `SUMX(Sales, Sales[Quantity]*Sales[UnitPrice])`).

## 12. What is TOTALYTD and how is it used?

`TOTALYTD(<expression>, Dates[Date], [filter], [year_end_date])` calculates the year-to-date total of an expression. It dynamically filters the date table from January 1 (or a custom fiscal start) to the last date in context. Example:
```dax
YTD Revenue = TOTALYTD(SUM(Sales[Amount]), 'Calendar'[Date])
Fiscal YTD = TOTALYTD(SUM(Sales[Amount]), 'Calendar'[Date], , "6/30")
```

## 13. How do you calculate year-over-year growth using DAX?

Use `SAMEPERIODLASTYEAR` or `DATEADD`:
```dax
YoY Growth % = 
VAR Current = [Total Sales]
VAR Prior = CALCULATE([Total Sales], SAMEPERIODLASTYEAR('Calendar'[Date]))
RETURN DIVIDE(Current - Prior, Prior, BLANK())
```
For monthly or quarterly YOY, wrap `SAMEPERIODLASTYEAR` inside `DATESMTD` or `DATESQTD`.

## 14. What is the RANKX function and when would you use it?

`RANKX(Table, Expression, [Value], [Order], [Ties])` ranks each row in `Table` based on `Expression`. Use it to find top performers, rank products by sales, or segment customers:
```dax
ProductRank = RANKX(ALL(Product), [Total Sales], , DESC, Dense)
```

## 15. What are the EARLIER and EARLIEST functions?

- **EARLIER(Column, [n]):** Returns the value of `Column` from the outer row context—useful in nested row contexts (iterator or nested filters).  
- **EARLIEST(Column):** Equivalent to `EARLIER(Column, n)` for the first (outermost) context when multiple nestings occur.  
Typically used in calculated columns to compare values across rows in the same group.

## 16. What are the RELATED and RELATEDTABLE functions?

- **RELATED(Column):** Retrieves a value from a related table via a many-to-one relationship (row context only).  
- **RELATEDTABLE(Table):** Returns a table of related rows in a one-to-many relationship—used in measures or calculated columns with `COUNTROWS()`/`SUMX()`.  
Examples:
```dax
Sales[CustomerName] = RELATED(Customer[Name])
Customer[OrderCount] = COUNTROWS(RELATEDTABLE(Sales))
```

## 17. What are variables in DAX and what are their benefits?

Variables (`VAR name = expression RETURN result`) store intermediate results within a measure for reuse. Benefits:
- **Performance:** Avoid recalculating expressions  
- **Readability:** Break complex logic into named steps  
- **Debugging:** Isolate parts of a formula  
Example:
```dax
ProfitMargin = 
VAR Revenue = SUM(Sales[Amount])
VAR Cost = SUM(Sales[Cost])
RETURN DIVIDE(Revenue - Cost, Revenue)
```

## 18. What is the SWITCH function and when is it useful?

`SWITCH(Expression, Value1, Result1, Value2, Result2, …, [ElseResult])` evaluates `Expression` against multiple values. For complex conditions, use `SWITCH(TRUE(), condition1, result1, condition2, result2, …)`. It’s cleaner and more performant than nested `IF` statements:
```dax
Segment = SWITCH(TRUE(),
    [Total Sales] > 100000, "High",
    [Total Sales] > 50000, "Medium",
    "Low")
```

## 19. What is the SELECTEDVALUE function?

`SELECTEDVALUE(Column, [AlternateResult])` returns the single selected value of `Column` in the current filter context; if multiple or no values are selected, it returns `AlternateResult` or blank. It simplifies scenarios where you need a single slicer or filter value:
```dax
SelectedRegion = SELECTEDVALUE(Sales[Region], "All Regions")
```

## 20. What are slicers in Power BI and how are they different from filters?

**Slicers** are visual, on-canvas filter controls (lists, dropdowns, date ranges, hierarchy) that users interactively select to filter report data. **Filters** are pane-based settings (visual, page, report filters) configured by report designers and often hidden. Slicers provide a user-friendly, self-service mechanism, while filters are for fixed, behind-the-scenes filtering.

## 21. What are the different refresh options in Power BI ("Import", "DirectQuery", "Live Connection")?

- **Import:** Data is loaded into Power BI’s in-memory engine. Fast queries and full modeling, but requires scheduled or manual refresh for new data.  
- **DirectQuery:** Queries are sent at runtime to the source database. Always up‐to‐date but performance depends on source. No local data caching beyond metadata.  
- **Live Connection:** Connects to an external Analysis Services or Power BI dataset. Report visuals query the external model directly. No model editing in Desktop, and security/logic come from the external model.  

## 22. What is a Power BI Gateway and why is it needed?

A **Power BI Gateway** is on-premises software that securely tunnels requests from the cloud to on-premises data sources. It’s required for scheduled refresh or DirectQuery against on-premises databases (SQL Server, Oracle, etc.). The gateway uses only outbound HTTPS and ensures enterprise data remains behind the firewall while allowing Power BI Service to retrieve or query data.  

## 23. What are the Power BI licensing options?

- **Free:** Personal use, no sharing, 1 GB storage, manual refresh only.  
- **Pro (\$10/user/month):** Collaboration, publish/share, 10 GB/user, eight scheduled refreshes/day.  
- **Premium Per User (PPU, \$20/user/month):** All Pro features plus Premium capabilities—100 GB datasets, paginated reports, AI, 48 refreshes/day, XMLA read/write.  
- **Premium (capacity, \$5 000+/month):** Dedicated v-cores, unlimited sharing, large dataset sizes, advanced governance, deployment pipelines, and multi-geo.  

## 24. What is Row-Level Security (RLS) and how is it implemented?

**RLS** restricts data at the row level based on user identity/role. In Desktop you define roles with DAX filters (static or dynamic via `USERNAME()`/`USERPRINCIPALNAME()`). After publishing, assign Azure AD users/groups to roles in the Power BI Service under dataset security. Dynamic RLS queries a user mapping table to apply personalized filters, while static RLS hardcodes filter logic per role.  

## 25. What are workspaces in Power BI Service?

**Workspaces** are collaborative containers where content is developed and managed. Roles include Admin, Member (full edit), Contributor (create/edit but no manage users), and Viewer (read-only). They separate dev/test/prod environments, enable content promotion, and act as the publishing source for Apps. My Workspace is personal; Shared Workspaces support team collaboration.  

## 26. What is Power Query and its role?

**Power Query** is Power BI’s ETL engine, letting users connect, combine, and transform data from various sources via a visual interface or M code. It performs data cleansing (remove blanks, fix types), shaping (pivot/unpivot), merging/appending tables, and custom transformations with query folding to push work to the source. Queries load transformed data into the model for reporting.  

## 27. What are deployment pipelines?

**Deployment pipelines** automate content promotion through Development, Test, and Production stages. They link three workspaces so you can validate and deploy changes systematically. Pipelines support version control, parameter overrides, and metadata comparison. Use them to enforce governance, minimize manual steps, and reduce deployment risk.  

## 28. Difference between Import, DirectQuery, Live Connection (see Q21).  

(Repeat brevity.)  

## 29. Power BI Desktop vs. Power BI Service?

- **Desktop:** Windows app for data modeling, report authoring, full DAX and transformation features, .pbix files, offline dev.  
- **Service:** SaaS for sharing, collaboration, automated refresh, dashboards, apps, workspace management, usage metrics, mobile access.  

## 30. How do you secure embedded Power BI reports?

Use **App owns data** with a service principal or master user authenticating via REST API. Generate short-lived embed tokens scoped by report, user, and RLS role. Keep credentials in secure vaults, run token-generation server-side, and use HTTPS. Validate user sessions and apply RLS in the dataset so embedded viewers see only authorized data.  

## 31. What are Dataflows?

**Dataflows** are cloud ETL pipelines that run in Power BI Service, storing entities in Azure Data Lake Storage. They enable reusable, centralized data ingestion and transformation via Power Query online. Use them to offload heavy transformations, share cleaned data across multiple datasets, support incremental refresh in the lake, and maintain a managed data layer for self-service BI.  

## 32. What are bookmarks and the selection pane?

- **Bookmarks:** Capture current page state (filters, slicers, selected visuals, drill state) and let users navigate between saved views.  
- **Selection pane:** Lists all visuals on a page, allowing you to show/hide or reorder them. Combined with bookmarks, you can create dynamic layouts, pop-ups, and guided navigation.  

## 33. What is Premium Per User (PPU)?

**PPU** (\$20 /user/month) unlocks Premium features for individual users without capacity purchase. Features include larger datasets (up to 100 GB), paginated reports, deployment pipelines, AI visuals, XMLA endpoint for admin, and up to 48 refreshes/day. Ideal for teams needing Premium capabilities before scaling to capacity.  

## 34. How do you monitor and optimize Premium capacity?

Install the **Premium Capacity Metrics app**, track CPU, memory, query durations, refresh times, and active queries. Set alerts for thresholds. Optimize by scaling v cores, redistributing workloads (dataflows, aggregations), refining refresh schedules to off-peak hours, and configuring workload isolation. Archive or retire idle content and enforce dataset quotas per workspace.  

## 35. What are governance best practices?

Define a BI strategy, naming conventions, and workspace lifecycles (dev/test/prod). Implement RLS and sensitivity labels for security. Use deployment pipelines, dataflows, and certified datasets. Monitor usage, performance, and audit logs. Assign data stewards for data quality and lineage. Document model logic, train users, and review capacity regularly.  

## 36. Azure Analysis Services vs. Power BI Premium?

**AAS:** Dedicated tabular OLAP engine in Azure, supports advanced modeling (partitions, perspectives), developer tooling, and use by multiple clients (Excel, SSMS).  
**Premium:** Embedded tabular engine optimized for Power BI, integrates with REST API, supports unlimited sharing. Premium is often sufficient for BI workloads; AAS suits enterprise teams needing broad tool support and advanced model management.  

## 37. How to connect to SAP HANA/BW?

Use the **SAP HANA** native connector with DirectQuery or Import—ensure gateway for on-premises. For **SAP BW**, use the SAP BW connector, import queries or InfoProviders, and choose between MDX or DAX compatibility modes. Optimize performance by limiting columns, using filter parameters, and following SAP’s query best practices (e.g., setting “EnableNumericFormatting” and “UseSAPBWHierarchy”).  

## 38. Mobile report layout considerations?

In Desktop’s Phone Layout view, stack visuals vertically, use large fonts and simple charts (cards, sparklines). Avoid complex interactions, keep one metric per visual, enable touch-friendly buttons, minimize slicers, and use drillthroughs for details. Test on devices to ensure readability and performance.  

## 39. How to handle time zones and date/time conversions?

Store UTC timestamps in source. In Power Query, convert with `DateTimeZone.ToLocal()` or `DateTime.AddZone`. In DAX, use `UTCNOW()` and adjust by `TIMEZONEOFFSET()` if available or maintain a time zone offset table for translations. Build date dimensions with both UTC and local date/time columns/time columns

## 40. What are the best practices for data modeling in Power BI?

Use a star schema: one central fact table joined to denormalized dimension tables. Employ surrogate integer keys and hide technical columns. Mark and use a dedicated date table. Remove unused columns and rows in Power Query, choose appropriate data types (integers over decimals, minimize text), and eliminate high-cardinality columns when possible. Favor measures over calculated columns to reduce model size. Organize measures in display folders, document relationships, and implement row-level security. For large datasets, use incremental refresh and aggregation tables.

## 41. What is DAX and why is it important in Power BI?

DAX (Data Analysis Expressions) is Power BI’s formula language for creating measures, calculated columns, and tables—extending Excel formula syntax to relational data. DAX is context-aware (filter and row contexts), enabling dynamic, interactive analytics like time-intelligence, ranking, and custom aggregations. Mastery of DAX unlocks Power BI’s full analytical power, allowing advanced KPIs, cohorts, and business logic that respond to slicers and visuals in real time.

## 42. What are the three fundamental concepts of DAX?

1. **Syntax:** Proper function names, parentheses, commas, and comments—e.g., `SUM(Table[Column])`.  
2. **Functions:** Categories like aggregation (`SUM`), filter (`CALCULATE`, `FILTER`), time intelligence (`TOTALYTD`), relationship (`RELATED`), logical (`IF`, `SWITCH`), and iterators (`SUMX`).  
3. **Context:**  
   - **Filter context:** Active filters from visuals, slicers, `CALCULATE`.  
   - **Row context:** Current row in calculated columns or iterators.  
   - **Context transition:** Row context becomes filter context when calling measures in `CALCULATE` or calculated columns.

## 43. What is the difference between calculated columns and measures?

- **Calculated Column:** Computed at data-refresh, stored in the model, uses row context, increases file size, and can be used in axes or slicers.  
- **Measure:** Computed at query time, not stored, uses filter context, minimal size impact, dynamic across visuals, best for aggregations, KPIs, and time intelligence.

## 44. What is row context and filter context in DAX?

- **Row Context:** The current row’s data when iterating (e.g., `SUMX`, calculated columns). You can reference other columns directly.  
- **Filter Context:** Active filters applied by slicers, visual/page/report filters, and by DAX functions (`CALCULATE`, `ALL`), determining which rows are visible to measures.

## 45. What is context transition and when does it occur?

Context transition happens when DAX transforms an existing row context into an equivalent filter context—typically within `CALCULATE()` or when a measure is called in a calculated column. It applies filters matching the current row’s key to the measure, enabling per-row aggregations with measures.

## 46. What are the ALL and ALLEXCEPT functions used for?

- **ALL(TableOrColumns):** Removes all filters on the specified table or columns—used for grand totals or percent-of-total calculations.  
- **ALLEXCEPT(Table, Columns…):** Removes all filters except the specified columns—useful to calculate totals within a group while keeping group filters.

## 47. What are the DISTINCT and VALUES functions and their differences?

- **DISTINCT(Column):** Returns a one-column table of unique non-blank values, ignoring blanks.  
- **VALUES(Column):** Returns unique values including blanks when present, fully honoring the current filter context. Use `VALUES` for context-sensitive lists or when blanks matter; use `DISTINCT` for simple unique lists.

## 48. What is TOTALYTD and how is it used?

`TOTALYTD(Expression, Dates[Date], [Filter], [YearEnd])` computes cumulative year-to-date values. It dynamically filters the date table from the year’s start (or a custom fiscal start via `YearEnd`) to the last date in context.  
```dax
YTD Sales = TOTALYTD(SUM(Sales[Amount]), 'Calendar'[Date])
```

## 49. How do you calculate year-over-year growth using DAX?

Use `SAMEPERIODLASTYEAR()` inside `CALCULATE()`:  
```dax
YoY Growth % =
VAR Current = [Total Sales]
VAR Prior = CALCULATE([Total Sales], SAMEPERIODLASTYEAR('Calendar'[Date]))
RETURN DIVIDE(Current - Prior, Prior, BLANK())
```
For monthly or quarterly YoY, wrap the period first in `DATESMTD` or `DATESQTD`.

## 50. What is the RANKX function and when would you use it?

`RANKX(Table, Expression, [Value], [Order], [Ties])` ranks rows based on the expression value. Use it to rank products by sales, customers by lifetime value, or regions by performance:
```dax
ProductRank =
RANKX(ALL(Product), [Total Sales], , DESC, Dense)
```

## 51. What are the EARLIER and EARLIEST functions?

- **EARLIER(Column, [n]):** In nested row contexts, returns the column value from the outer (n-th) row context—commonly used in calculated columns for ranking within groups.  
- **EARLIEST(Column):** Shorthand for the outermost row context.  
Use these to reference values from a previous iteration when nesting filters or iterators.

## 52. What are the RELATED and RELATEDTABLE functions?

- **RELATED(Column):** Retrieves a value from a one-to-many (many-to-one) related table within row context—like a VLOOKUP.  
- **RELATEDTABLE(Table):** Returns the child rows in a one-to-many relationship—useful with `COUNTROWS()` or `SUMX()`:  
```dax
CustomerOrderCount = COUNTROWS(RELATEDTABLE(Orders))
```

## 53. What are variables in DAX and what are their benefits?

Variables (`VAR name = expression RETURN result`) store an expression’s result within a measure. They improve performance (prevent repeated calculations), readability (break complex logic into steps), and maintainability. They also help capture and reuse filter contexts.

## 54. What is the SWITCH function and when is it useful?

`SWITCH(Expression, Value1, Result1, Value2, Result2, …, [Else])` compares `Expression` to multiple values. For complex conditions, use:
```dax
SWITCH(TRUE(),
    [Sales] > 100000, "High",
    [Sales] > 50000, "Medium",
    "Low")
```
It’s cleaner and faster than nested `IF` statements.

## 55. What is the SELECTEDVALUE function?

`SELECTEDVALUE(Column, [Alternate])` returns the single selected value of a column in the current filter context, or `Alternate` if zero or multiple values are selected. This is ideal for dynamic titles or conditional measures based on a slicer selection.

## 56. What are slicers in Power BI and how are they different from filters?

- **Slicers:** Visible, on-canvas filter controls (lists, dropdowns, date sliders) for end-user interaction, affecting multiple visuals at once.  
- **Filters:** Behind-the-scenes settings in the Filter pane (visual, page, report level), configured by the report author, often hidden from users. Slicers enable self-service filtering; filters enforce fixed conditions.

## 57. What are the different refresh options in Power BI?

- **Import Mode:** Data cached in memory; requires scheduled or manual refresh (up to 8/day for Pro, 48/day for Premium).  
- **DirectQuery:** Queries live data at runtime; no caching beyond metadata, always current but performance depends on source.  
- **Live Connection:** Connects to external Analysis Services or Power BI dataset; queries the external semantic model directly.

## 58. What is a Power BI Gateway and why is it needed?

A Power BI Gateway is on-premises software that securely connects the Power BI Service to internal data sources for scheduled refresh or DirectQuery. It uses outbound HTTPS only, so no inbound firewall openings are required, ensuring corporate data stays behind the firewall.

## 59. What are the Power BI licensing options?

- **Free:** Personal authoring, no sharing, 1 GB storage, manual refresh.  
- **Pro (\$10/user/month):** Collaboration, sharing, 10 GB/user, eight refreshes/day.  
- **Premium per user (PPU, \$20/user/month):** Premium features—100 GB datasets, paginated reports, AI, 48 refreshes/day.  
- **Premium (capacity, \$5k+/month):** Dedicated v-cores, unlimited sharing, large dataset sizes (to 400 GB), advanced governance, multi-geo.

## 60. What is Row-Level Security (RLS) and how is it implemented?

RLS restricts dataset rows based on user identity. In Desktop you define roles with DAX filters (`[Region]=USERNAME()`), then test via “View as Role.” After publishing, you assign Azure AD users/groups to roles in Service. Dynamic RLS uses functions like `USERPRINCIPALNAME()` to filter data per user.

## 61. What are workspaces in Power BI Service?

Workspaces are collaborative containers for datasets, reports, dashboards, and dataflows. Roles: Admin (full control), Member (create/edit), Contributor (create/edit but cannot manage users), Viewer (read-only). Separate development, test, and production environments; publishing point for apps.

## 62. What is Power Query and its role in Power BI?

Power Query is the ETL engine for ingesting, cleaning, and transforming data. In Desktop’s Query Editor or Service dataflows, users apply filters, remove columns, pivot/unpivot, merge/append tables, and write M code. It supports query folding so transformations run on the source when possible.

## 63. What are deployment pipelines in Power BI?

Deployment pipelines automate migration of content through Dev, Test, and Prod workspaces. They compare metadata, enable param overrides per stage, and support one-click deployment. Pipelines enforce release governance, reduce manual errors, and streamline CI/CD for Power BI assets.

## 64. What is the difference between Import, DirectQuery, and Live Connection?

See question 21.  

## 65. Power BI Desktop vs. Power BI Service?

- **Desktop:** Local Windows app for data modeling, transformations, and report authoring; full DAX and M capabilities; .pbix files; offline dev.  
- **Service:** Cloud SaaS for publishing, sharing, collaboration, scheduled refresh, dashboards, apps, workspace and usage management; mobile access.

## 66. How do you secure embedded Power BI reports?

Use “App owns data” with a service principal or master user to authenticate via REST API. Generate short-lived embed tokens with RLS roles, store secrets in Azure Key Vault, and run token generation on the server side over HTTPS. Ensure tokens carry minimal privileges.

## 67. What are Dataflows and when do you use them?

Dataflows are ETL pipelines in Power BI Service storing entities in Azure Data Lake Storage Gen2. Use them to centralize common data transformations, enable incremental refresh at the lake level, share cleansed data across multiple datasets/workspaces, and support a unified data layer for business users.

## 68. What are bookmarks and the selection pane used for?

- **Bookmarks:** Save a page’s state (filters, slicers, visibility, drill levels).  
- **Selection Pane:** Lists all visuals, letting you toggle visibility and layer order.  
Together they enable interactive storytelling, navigation, dynamic show/hide visuals, and pop-up dialogs.

## 69. What is Premium per user (PPU) and when is it appropriate?

PPU (\$20/month) grants Premium features—larger models up to 100 GB, XMLA read/write, deployment pipelines, paginated reports, AI visuals—for individual users. It’s ideal for small teams needing Premium capabilities before investing in capacity-based Premium.

## 70. How do you monitor and optimize Premium capacity?

Use the Premium Capacity Metrics app to track CPU, memory, query duration, and refresh times. Set alerts for thresholds. Optimize by distributing heavy workloads (dataflows, aggregations), scaling capacity up or down, tuning refresh schedules to off-peak hours, and retiring idle content.
## 71. What are Power BI Apps and how do they differ from workspaces?

**Power BI Apps** are curated, read-only packages of content (dashboards, reports, datasets) published from a workspace for wide distribution. Unlike workspaces—which are collaborative development environments with role-based editing—apps provide a simplified, consistent user experience, version control, and streamlined navigation. Apps allow administrators to govern which content and data users see without exposing the underlying workspace structure.

## 72. What is Power BI Premium and what benefits does it offer?

**Power BI Premium** is a capacity-based license providing dedicated v-cores and memory. Benefits include unlimited sharing (no Pro license needed for viewers), large dataset support (up to 400 GB), higher refresh frequency (48/day), AI features, XMLA read/write endpoint, paginated reports, multi-geo deployment, and dedicated performance isolation. It’s ideal for large-scale, enterprise deployments.

## 73. How do you implement incremental refresh for large datasets?

Define `RangeStart` and `RangeEnd` date/time parameters in Power Query. Filter your fact table by these parameters, then configure incremental refresh in the dataset settings: specify how many years/days to archive and how many days to refresh. Optionally enable change detection on a ModifiedDate column to refresh only changed rows. This significantly reduces refresh time and resource consumption.

## 74. What are composite models in Power BI?

**Composite models** allow mixing Import, DirectQuery, and Dual storage modes within one dataset. You can import dimension tables for fast slicing and use DirectQuery for real-time transactional tables. Dual tables cache data locally but revert to DirectQuery when needed. Composite models let you balance performance and freshness, connect to multiple sources in one model, and leverage incremental refresh on import tables.

## 75. How can you reduce dataset size in Power BI?

Remove unused columns and tables, filter out old or irrelevant rows during ETL, convert high-cardinality text to integer keys, minimize decimal precision, and use measures instead of calculated columns. Implement incremental refresh to archive historical partitions. Create aggregation tables for large fact tables and optimize relationships (one-to-many, single-direction) to reduce storage footprint.

## 76. What is the Power BI REST API and common use cases?

The **Power BI REST API** allows programmatic management of Power BI assets: automating deployment (uploading .pbix files, updating parameters), refreshing datasets on demand, generating embed tokens, retrieving usage metrics, managing users and groups, and orchestrating CI/CD with Azure DevOps or other pipelines. It’s used for embedding, monitoring, and enterprise-scale automation.

## 77. How do you secure Power BI embedded reports in custom applications?

Use **App owns data** with a service principal or master user for authentication, generate time-limited embed tokens via the REST API, scope tokens with RLS roles, and store client secrets in a secure vault (e.g., Azure Key Vault). Perform token generation server-side over HTTPS, never expose secrets in client code, and validate user sessions before granting embed tokens.

## 78. What are workspaces vs. apps decision criteria?

- Use **workspaces** during development, collaboration, and iterative editing by multiple users with roles (Admin/Member/Contributor/Viewer).  
- Use **apps** for distributing finalized, read-only content to end users at scale with simplified navigation and version control. Apps are ideal for broad consumption—especially for users who don’t need edit rights.

## 79. What is Power BI Premium Per User (PPU)?

Premium Per User (PPU) is a \$20/user/month license that unlocks Premium features—100 GB models, paginated reports, deployment pipelines, AI visuals, XMLA endpoint—for individual analysts. It’s cost-effective for small teams needing Premium capabilities without buying a full capacity SKU.

## 80. How do you monitor and optimize Power BI Premium capacity?

Install the **Premium Capacity Metrics** app to track CPU/memory usage, query durations, and refresh performance. Set alerts for thresholds. Optimize by scaling v-cores up/down based on utilization, distributing workloads (dataflows, aggregations) evenly, scheduling refreshes during off-peak times, and archiving or deleting idle datasets. Continuous monitoring and proactive tuning ensure stable performance.

## 81. How do you implement incremental refresh for large datasets in Power BI?

Incremental refresh in Power BI is configured in Power Query by first defining two datetime parameters — `RangeStart` and `RangeEnd` — and using them to filter your fact table so that only the partition corresponding to the incremental window (e.g., last 30 days) is refreshed on each run. In the table’s storage settings, you then enable incremental refresh, specifying how many days or years of historical data to keep and how many days to refresh. Change detection can be turned on by pointing to a “ModifiedDate” column so only rows that have changed since the last refresh are processed. This dramatically reduces refresh time and resource consumption, making it ideal for multi-gigabyte transactional tables that append new data daily but rarely change historically.  

## 82. What are composite models in Power BI?

Composite models allow you to combine data from multiple storage modes (Import, DirectQuery, Dual) within a single dataset. For example, you might import large dimension tables for fast filtering while using DirectQuery for a real-time transactional fact table. Dual mode tables can act as import caches but fall back to DirectQuery when slicers require fresh data. Composite models support relationships across these storage modes and enable incremental refresh on import tables. They let you optimize performance and freshness simultaneously, handle many data sources in one model, and overcome the traditional Import vs. DirectQuery trade-off.  

## 83. How can you reduce dataset size in Power BI?

To reduce dataset size, remove unused tables and columns, change high-cardinality text columns to integer keys, and convert numeric columns to the smallest data type that fits (e.g., Whole Number instead of Decimal). Denormalize dimensions only when necessary and avoid calculated columns in favor of measures. Implement incremental refresh to archive old partitions off memory, and use aggregations tables to summarize granular data. Finally, optimize relationships and use query folding in Power Query so transformations occur on the source server, not in memory.  

## 84. What is Power BI REST API and common use cases?

The Power BI REST API enables programmatic management and automation of Power BI artifacts (datasets, reports, dashboards, workspaces, and capacities). Common use cases include automating deployment pipelines (uploading new .pbix files, deploying to different environments), generating embed tokens for custom applications, refreshing datasets on demand, monitoring refresh history, and retrieving usage metrics. It’s also used for user and group administration, licensing reports, and orchestrating CI/CD workflows in DevOps pipelines.  

## 85. How do you secure Power BI embedding in custom applications?

To securely embed Power BI reports in web or mobile applications, use an Azure AD service principal or master user to authenticate against Power BI REST APIs. Generate embed tokens scoped to a specific report and optional RLS roles, with short lifetimes and minimal privileges. Store secrets securely (e.g., in Azure Key Vault) and never expose them in client-side code. Use HTTPS, validate incoming requests, and implement server-side token generation. For user-based embedding (App owns data), apply row-level security in the dataset so each user sees only authorized data.  

## 86. What is a Dataflow and when do you use it?

Power BI Dataflows are ETL layers in the Power BI Service that use Power Query online to ingest, transform, and store reusable entities in Azure Data Lake Storage. You use dataflows to centralize common data‐preparation logic across multiple reports or workspaces, support data lineage and incremental refresh, and share cleansed, conformed data models. Dataflows are ideal for enterprise-grade data integration, building a reusable data lake for self-service BI, and offloading heavy transformations from individual report datasets.  

## 87. How does row-level security differ in Power BI Desktop versus Service?

In Power BI Desktop, you define RLS roles and DAX filter expressions (static or dynamic using `USERNAME()`/`USERPRINCIPALNAME()`). You can test them locally with “View as Role.” After publishing, in the Power BI Service you assign Azure AD users or groups to each role under dataset security settings. The same role definitions apply, but assignments happen in the Service. Dynamic RLS works both locally and in the Service once roles are assigned.  

## 88. What are bookmark and selection panes used for?

Bookmarks capture the current state of a report page, including filters, slicers, visual visibility, and sort order. Selection panes list all report objects, allowing you to toggle their visibility or layer order. Together they enable interactive storytelling and custom navigation: you can create buttons tied to bookmarks, use selection pane to show/hide visuals for pop-ups or dynamic layouts, and guide users through a report narrative or dashboard.  

## 89. What is Premium per user (PPU) and when is it appropriate?

Premium per user (PPU) sits between Pro and capacity-based Premium. Priced at \$20 per user per month, it unlocks Premium features—large model sizes up to 100 GB, XMLA read/write endpoints, deployment pipelines, paginated reports, AI features, and 48 refreshes/day—for individual analysts without requiring organization-wide capacity purchase. PPU is ideal for small teams or pilot projects that need Premium capabilities cost-effectively before scaling to capacity-based Premium.  

## 90. How do you monitor and optimize Power BI Premium capacity?

Use the Premium Capacity Metrics app in the Service to monitor CPU, memory, query durations, refresh times, and active queries per node. Configure alerts for resource thresholds. Optimize by distributing workloads across capacities, scaling v-cores up or down based on utilization, and off-loading heavy transformations to dataflows or Azure data platforms. Implement workload prioritization (assigning more memory to important workloads), limit dataset sizes, and schedule refreshes during off-peak hours.  

## 91. What are the best practices for Power BI governance?

Governance best practices include defining a BI strategy and deployment framework, standardizing naming conventions, implementing workspace lifecycle management (development, test, production), enforcing RLS and sensitivity labels, monitoring usage and performance, and automating deployments via pipelines. Maintain a central catalog of datasets and certified content, establish data stewardship roles, and regularly audit security, refresh errors, and capacity utilization. Provide training and documentation to ensure consistent development standards.  

## 92. What is Azure Analysis Services compared to Power BI Premium?

Azure Analysis Services (AAS) is a dedicated tabular OLAP engine managed in Azure, offering more features for enterprise modeling (partitions, perspective security, role translations), scale, and advanced connectivity. Power BI Premium includes an embedded analysis engine with similar tabular capabilities but is optimized for report consumption in Power BI. Use AAS when you need complex semantic model management, developer tooling, or share models across multiple client tools.  

## 93. How do you connect Power BI to SAP HANA or BW?

Power BI supports native connectors for SAP HANA and SAP BW. For SAP HANA, use DirectQuery to push calculations to the SAP database; ensure gateway configuration and proper credentials. For SAP BW, connect via the SAP BW connector, import metadata and queries, and consider performance by selecting infocubes or query shortcuts. Always use SAP-recommended best practices—like MDX toggles and parameter passing—to optimize query folding and reduce data transfer.  

## 94. What are the considerations for mobile report layouts?

In Power BI Desktop’s phone layout view, design vertically stacked cards and visuals for small screens. Use larger fonts, simplified charts (e.g., single-value cards, sparklines), avoid complex interactions, and minimize navigation. Enable mobile-optimized bookmarks or drill-through for detailed views. Test on actual devices, ensure touch-friendly controls, and prioritize key KPIs for immediate visibility.  

## 95. How do you handle time zones and date/time conversions?

Always store and import UTC or standardized datetime values. In Power Query, use `DateTimeZone.ToLocal` or `DateTime.AddZone` to convert to local time. In DAX, use `UTCNOW()` or `NOW()` functions and adjust with `TIMEZONEOFFSET()` where available. Create a robust date/time dimension with UTC and local columns, and account for daylight saving time by including offset tables. Clearly document the time zone assumptions in your model.  

## 96. What is Microsoft Datamarts in Power BI?

Microsoft Datamarts (in Premium) provide a self-service, end-to-end database capability directly in the Power BI Service. They combine data ingestion, storage in Azure SQL Database, Power Query transformations, and built-in visuals for exploration. Datamarts let business users create relational data models without needing separate Azure or SQL expertise. They automatically generate a semantic model and support T-SQL queries, enabling advanced analytics and integration with other Azure services.  

## 97. How do you implement CI/CD for Power BI?

Implement CI/CD by storing `.pbix` files and configuration scripts in a source control system (e.g., Git). Use Azure DevOps pipelines or GitHub Actions to automate build and deployment: call Power BI REST APIs to upload new reports, assign workspace bindings, and update parameters. For Premium capacities, leverage deployment pipelines in the Service for dev/test/prod promotion. Automate dataset parameter updates and refresh jobs via REST API. Include validation steps (unit tests with DAX Studio or external tools) before deployment.  

## 98. How do you integrate Power BI with Azure Synapse Analytics?

Connect Power BI to Azure Synapse SQL pools using the built-in connector in Import or DirectQuery mode. Use Synapse Materialized Views or dedicated SQL serverless pools for optimized performance. Leverage Azure Synapse Link to bring real-time operational data from Azure Cosmos DB to Synapse, then visualize in Power BI. Implement dataflows in Power BI to stage data in Azure Data Lake Storage Gen2, and use Synapse pipelines for ETL orchestration.  

## 99. What are some advanced DAX optimization techniques?

Advanced DAX optimization includes minimizing row context transitions by using `CALCULATE` with explicit filters, replacing `EARLIER` with variables, avoiding `FILTER` on large tables by using simpler logical filters, and pre-aggregating in calculated tables or databases. Use variables to capture intermediate results, reduce repeated expressions, and leverage functions like `SUMMARIZECOLUMNS` for fast grouping. Limit `ALL` calls to specific columns, and prefer `REMOVEFILTERS` or `ALLEXCEPT` when needed. Profile slow queries with DAX Studio and optimize based on query plans.  

## 100. How do you handle many-to-many relationships in Power BI?

Power BI handles many-to-many relationships via composite models or by introducing bridge tables. In composite models, enable dual storage mode on dimension tables to let Power BI automatically manage ambiguous relationships. Alternatively, create an explicit bridge table that lists all combinations of keys, relate both fact and dimension tables to this bridge, and use DAX functions like `TREATAS` to simulate many-to-many behavior. Always ensure filter directions and cardinalities are correctly configured to avoid ambiguous or circular relationships.  

## 101. What is TREATAS in DAX?

`TREATAS` applies the result of one table expression as filters on unrelated tables. It is used to simulate relationships or apply complex filter logic without physical relationships. For example, `CALCULATE([Measure], TREATAS(VALUES(Bridge[Key]), Target[Key]))` filters `Target` by keys in `Bridge`. `TREATAS` is useful in composite models, dynamic segmentation, and when you need to apply row-level filters across disconnected tables.  

## 102. How do you implement dynamic segmentation in Power BI?

Dynamic segmentation uses DAX measures or calculated tables driven by slicer inputs. Create a disconnected table of segment options; use a measure with `SELECTEDVALUE` on the slicer choice to drive conditional logic (e.g., `SWITCH(TRUE(), [Sales] > 100000, "High", ...)`). For complex segmentation, use `TREATAS` to apply dynamic filter tables to a fact or dimension, and visualize segments via calculated tables or measures that respect the selected segment definition.  

## 103. What are drillthrough and drilldown in Power BI?

**Drilldown** enables hierarchical navigation within a single visual: clicking on a category drills into its subcategories in place. It uses the hierarchy defined in the axis. **Drillthrough** provides a detailed page that focuses on the context item selected in a source visual. You configure drillthrough filters on a target page and enable the drillthrough action, allowing users to right-click any data point and navigate to the detailed page filtered to that point’s context.  

## 104. How do you configure and use sensitivity labels in Power BI?

Integrate Microsoft Purview sensitivity labels into Power BI both in Desktop and Service. In Desktop, assign labels to datasets and reports via the Sensitivity menu; these labels propagate to the dataset in the Service upon publishing. In the Service, enforce label policies and automatic application based on content patterns. Sensitivity labels control encryption, watermarking, and export restrictions, ensuring compliance with data classification policies. Labels are audited and can trigger governance workflows.  

## 105. What is Power BI lineage view and its importance?

The lineage view in the Power BI Service provides a visual map of dependencies between data sources, datasets, dataflows, reports, dashboards, and workspaces. It’s important for impact analysis, troubleshooting refresh failures, understanding downstream dependencies, and planning changes to data models. Lineage helps governance by making data flows transparent, aiding audit and compliance, and enabling data stewards to track end-to-end data provenance.  

## 106. How do you implement real-time streaming in Power BI?

Real-time streaming in Power BI can be implemented using streaming datasets via Azure Stream Analytics, Azure Event Hubs, or PubNub. Create a streaming dataset in Push or PubNub mode, and build streaming tiles or real-time dashboards that update automatically. For tiles pinned to dashboards, enable the “Historic data analysis” option if you need to see historical trends. Ensure your streaming source uses the Power BI REST API to push data at the required frequency.  

## 107. What are power automate visual and how do they integrate?

The Power Automate visual in Power BI lets report consumers trigger Power Automate flows directly from a report. You add the visual to a report, configure the flow trigger with required parameters (e.g., record IDs), and pass the selected row’s values into the flow. This enables end users to initiate actions—such as sending notifications, updating databases, or creating tasks—directly from their analytical context without leaving Power BI.  

## 108. How do you optimize DirectQuery performance with query caching?

Power BI’s DirectQuery cache feature (in Premium) caches results of frequently run queries for a defined time window. Enable query caching in the capacity settings, specify cache refresh intervals, and configure which tables to cache. Combining caching with query reduction techniques—like disabling unnecessary interactions, using aggregated tables, and limiting visuals—reduces backend load and improves report responsiveness.  

## 109. What is the XMLA endpoint in Power BI and when is it used?

The XMLA endpoint provides read/write access to Power BI Premium and PPU datasets via standard AMO/TOM client libraries using the Tabular model protocol. It’s used for advanced model management and automation, such as applying translations, manipulating partitions, creating perspectives, and running automated deployments with tools like SQL Server Management Studio or Tabular Editor. XMLA endpoints enable enterprise-grade development outside of Power BI Desktop.  

## 110. What are some strategies for data governance in Power BI?

Data governance strategies include establishing a central data catalog with certified datasets, enforcing naming conventions and documentation standards, and implementing RLS and sensitivity labels for security. Use workspace and app lifecycle management to control content promotion, monitor usage with audit logs, and deploy deployment pipelines for consistent releases. Provide a clear ownership model—data stewards and dataset owners—and automate quality checks with dataflows and Purview. Regularly review lineage, compliance reports, and capacity usage to maintain control and trust in your BI environment.  

***  
