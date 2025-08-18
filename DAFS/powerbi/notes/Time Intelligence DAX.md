 **Time Intelligence DAX functions** with syntax examples to help you master Power BI date-based analysis:

---

### 🧠 Aggregation Functions

These calculate totals over specific time periods.

| Function        | Description                          | Syntax Example |
|----------------|--------------------------------------|----------------|
| `TOTALYTD`     | Year-to-date total                   | `TOTALYTD(SUM(Sales[Amount]), 'Date'[Date])` |
| `TOTALMTD`     | Month-to-date total                  | `TOTALMTD(SUM(Sales[Amount]), 'Date'[Date])` |
| `TOTALQTD`     | Quarter-to-date total                | `TOTALQTD(SUM(Sales[Amount]), 'Date'[Date])` |

---

### 📆 Date Range Functions

These return a table of dates for filtering.

| Function        | Description                          | Syntax Example |
|----------------|--------------------------------------|----------------|
| `DATESYTD`     | Dates from start of year to current  | `DATESYTD('Date'[Date])` |
| `DATESMTD`     | Dates from start of month to current | `DATESMTD('Date'[Date])` |
| `DATESQTD`     | Dates from start of quarter to current | `DATESQTD('Date'[Date])` |
| `DATESBETWEEN` | Dates between two specific dates     | `DATESBETWEEN('Date'[Date], DATE(2024,1,1), DATE(2024,12,31))` |
| `DATESINPERIOD`| Dates in a rolling period            | `DATESINPERIOD('Date'[Date], TODAY(), -3, MONTH)` |

---

### 🔁 Date Shifting Functions

These shift dates forward or backward.

| Function              | Description                          | Syntax Example |
|-----------------------|--------------------------------------|----------------|
| `DATEADD`             | Shift dates by interval              | `DATEADD('Date'[Date], -1, YEAR)` |
| `PARALLELPERIOD`      | Shift dates by interval (returns range) | `PARALLELPERIOD('Date'[Date], -1, MONTH)` |
| `SAMEPERIODLASTYEAR`  | Same period last year                | `SAMEPERIODLASTYEAR('Date'[Date])` |
| `PREVIOUSYEAR`        | Previous year dates                  | `PREVIOUSYEAR('Date'[Date])` |
| `NEXTYEAR`            | Next year dates                      | `NEXTYEAR('Date'[Date])` |

---

### 📅 Start/End of Period Functions

Useful for pinpointing boundaries.

| Function         | Description                          | Syntax Example |
|------------------|--------------------------------------|----------------|
| `STARTOFMONTH`   | First date of current month          | `STARTOFMONTH('Date'[Date])` |
| `ENDOFMONTH`     | Last date of current month           | `ENDOFMONTH('Date'[Date])` |
| `STARTOFYEAR`    | First date of current year           | `STARTOFYEAR('Date'[Date])` |
| `ENDOFYEAR`      | Last date of current year            | `ENDOFYEAR('Date'[Date])` |

---

### 📊 Opening/Closing Balance Functions

Evaluate expressions at start or end of periods.

| Function                  | Description                          | Syntax Example |
|---------------------------|--------------------------------------|----------------|
| `OPENINGBALANCEMONTH`     | Value at start of month              | `OPENINGBALANCEMONTH(SUM(Sales[Amount]), 'Date'[Date])` |
| `CLOSINGBALANCEMONTH`     | Value at end of month                | `CLOSINGBALANCEMONTH(SUM(Sales[Amount]), 'Date'[Date])` |
| `OPENINGBALANCEYEAR`      | Value at start of year               | `OPENINGBALANCEYEAR(SUM(Sales[Amount]), 'Date'[Date])` |
| `CLOSINGBALANCEYEAR`      | Value at end of year                 | `CLOSINGBALANCEYEAR(SUM(Sales[Amount]), 'Date'[Date])` |

---

### 🧭 Navigation Functions

These help you move through time.

| Function        | Description                          | Syntax Example |
|----------------|--------------------------------------|----------------|
| `NEXTDAY`      | Next day                             | `NEXTDAY('Date'[Date])` |
| `PREVIOUSDAY`  | Previous day                         | `PREVIOUSDAY('Date'[Date])` |
| `NEXTMONTH`    | Next month                           | `NEXTMONTH('Date'[Date])` |
| `PREVIOUSMONTH`| Previous month                       | `PREVIOUSMONTH('Date'[Date])` |

---


 **Master list of all Time Intelligence DAX functions** in Power BI, grouped by category and formatted for quick reference:

---

### 📊 Aggregation Functions
- `TOTALYTD(expression, dates[, filter])`
- `TOTALMTD(expression, dates[, filter])`
- `TOTALQTD(expression, dates[, filter])`

---

### 📅 Date Range Functions
- `DATESYTD(dates[, year_end_date])`
- `DATESMTD(dates)`
- `DATESQTD(dates)`
- `DATESBETWEEN(dates, start_date, end_date)`
- `DATESINPERIOD(dates, start_date, number_of_intervals, interval)`

---

### 🔁 Date Shifting Functions
- `DATEADD(dates, number_of_intervals, interval)`
- `PARALLELPERIOD(dates, number_of_intervals, interval)`
- `SAMEPERIODLASTYEAR(dates)`
- `PREVIOUSYEAR(dates[, year_end_date])`
- `NEXTYEAR(dates[, year_end_date])`
- `PREVIOUSMONTH(dates)`
- `NEXTMONTH(dates)`
- `PREVIOUSDAY(dates)`
- `NEXTDAY(dates)`
- `PREVIOUSQUARTER(dates)`
- `NEXTQUARTER(dates)`

---

### 🧭 Period Start/End Functions
- `STARTOFMONTH(dates)`
- `ENDOFMONTH(dates)`
- `STARTOFYEAR(dates)`
- `ENDOFYEAR(dates)`
- `STARTOFQUARTER(dates)`
- `ENDOFQUARTER(dates)`

---

### 🧮 Opening/Closing Balance Functions
- `OPENINGBALANCEMONTH(expression, dates[, filter])`
- `CLOSINGBALANCEMONTH(expression, dates[, filter])`
- `OPENINGBALANCEQUARTER(expression, dates[, filter])`
- `CLOSINGBALANCEQUARTER(expression, dates[, filter])`
- `OPENINGBALANCEYEAR(expression, dates[, filter])`
- `CLOSINGBALANCEYEAR(expression, dates[, filter])`

---

### 🕰️ Navigation & Context Functions
- `FIRSTDATE(dates)`
- `LASTDATE(dates)`
- `NEXTDAY(dates)`
- `PREVIOUSDAY(dates)`
- `NEXTMONTH(dates)`
- `PREVIOUSMONTH(dates)`
- `FIRSTNONBLANK(dates, expression)`
- `LASTNONBLANK(dates, expression)`

---
