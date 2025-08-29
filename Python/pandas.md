\### 1. How do you read and write Parquet files for efficient storage?  

Use `pd.read\_parquet()` and `DataFrame.to\_parquet()`. Parquet is columnar, compressed, and fast for large datasets.  

```python

df = pd.read\_parquet('data.parquet')

df.to\_parquet('out.parquet', index=False)

```



\### 2. How can you memory‐map large CSVs with Pandas?  

Use `pd.read\_csv()` with `iterator=True` and `chunksize`, or use Dask for out‐of‐memory processing.  

```python

for chunk in pd.read\_csv('large.csv', chunksize=100000):

&nbsp;   process(chunk)

```



\### 3. Explain how to use `pd.Categorical` for custom ordering.  

Create categories with a specified order to sort or compare.  

```python

cats = pd.Categorical(df\['size'], categories=\['S','M','L','XL'], ordered=True)

df\['size'] = cats

df.sort\_values('size')

```



\### 4. How do you merge on multiple keys with different join types?  

Pass lists to `on` and use `how` argument.  

```python

pd.merge(df1, df2, on=\['id','date'], how='outer')

```



\### 5. How can you perform an anti‐join (rows in A not in B)?  

Use `merge` with `indicator=True` then filter.  

```python

m = df1.merge(df2, on='id', how='left', indicator=True)

anti = m\[m\['\_merge']=='left\_only'].drop(columns=\['\_merge'])

```



\### 6. Describe pivoting with multiple aggregation functions.  

Use `aggfunc` as list or dict in `pivot\_table`.  

```python

df.pivot\_table(index='group', values='val', aggfunc=\['sum','mean'])

```



\### 7. How do you flatten MultiIndex columns after aggregation?  

Use `map` or list comprehension to join levels.  

```python

df.columns = \['\_'.join(col).strip() for col in df.columns.values]

```



\### 8. How can you explode a column of lists into separate rows?  

Use `DataFrame.explode()`.  

```python

df = df.explode('tags')

```



\### 9. Explain using `rolling.apply()` with a custom function.  

Pass a function to apply over rolling windows.  

```python

df\['ma'] = df\['val'].rolling(5).apply(lambda x: x.max()-x.min())

```



\### 10. How do you compute exponentially weighted statistics?  

Use `ewm()` for EWMA, EWM variance, etc.  

```python

df\['ewm\_mean'] = df\['val'].ewm(span=10).mean()

```



\### 11. Describe vectorized date offset arithmetic.  

Add `pd.DateOffset` to datetime index.  

```python

df.index = pd.to\_datetime(df\['date'])

df.index + pd.DateOffset(months=1)

```



\### 12. How do you shift and lag multiple columns?  

Use `shift()` on DataFrame or assign separately.  

```python

df\[\['lag1','lag2']] = df\['val'].shift(1), df\['val'].shift(2)

```



\### 13. Explain time‐zone aware resampling.  

Convert to a time‐zone, then `resample()`.  

```python

df.index = pd.to\_datetime(df\['dt']).dt.tz\_localize('UTC').dt.tz\_convert('Asia/Kolkata')

df.resample('D').sum()

```



\### 14. How can you interpolate missing time‐series values?  

Use `interpolate()` with method and limit.  

```python

df\['val'].interpolate(method='time')

```



\### 15. Describe rolling groupby operations.  

Chain `groupby` and `rolling`, then `agg`.  

```python

df.groupby('id')\['val'].rolling(3).mean().reset\_index(level=0, drop=True)

```



\### 16. How do you compute cumulative metrics per group?  

Use `groupby().cumsum()` or `cumcount()`.  

```python

df\['cum\_sum'] = df.groupby('id')\['val'].cumsum()

```



\### 17. How can you pivot irregular time stamps onto a regular grid?  

Use `resample()` with forward/backfill.  

```python

df.set\_index('ts').resample('H').ffill()

```



\### 18. Explain using `.pipe()` to improve method chaining.  

`pipe()` passes DataFrame to a function for clarity.  

```python

(df

&nbsp;.pipe(clean\_names)

&nbsp;.pipe(filter\_date, start='2025-01-01'))

```



\### 19. How do you implement custom rolling window functions in Cython or Numba?  

Write a Numba‐decorated function and apply via `rolling().apply()`.  

```python

from numba import njit



@njit

def my\_roll(arr):

&nbsp;   # custom logic

&nbsp;   return arr.mean()



df\['val'].rolling(10).apply(my\_roll, raw=True)

```



\### 20. How can you join multiple DataFrames on index with different axes?  

Use `join()` with list of DataFrames.  

```python

df.join(\[df2, df3], how='inner')

```



\### 21. Describe checking DataFrame equality with tolerance.  

Use `pd.testing.assert\_frame\_equal()` with `atol`/`rtol`.  

```python

pd.testing.assert\_frame\_equal(df1, df2, atol=1e-6)

```



\### 22. How do you assign values based on complex conditions?  

Use `np.select()` for multiple conditions.  

```python

cond = \[df\['A']>0, df\['B']<0]

choices = \['pos','neg\_b']

df\['flag'] = np.select(cond, choices, default='other')

```



\### 23. Explain how to apply SQL window functions via Pandas.  

Emulate rank, dense\_rank using `groupby().rank()`.  

```python

df\['rank'] = df.groupby('group')\['val'].rank(method='dense')

```



\### 24. How do you sample stratified subsets?  

Use `groupby().sample(frac=...)`.  

```python

df.groupby('category', group\_keys=False).sample(frac=0.1)

```



\### 25. Describe efficient string replacement on columns.  

Use vectorized `.str.replace()`.  

```python

df\['text'] = df\['text'].str.replace(r'\\d+', '', regex=True)

```



\### 26. How can you categorize numeric columns into bins?  

Use `pd.cut()` or `pd.qcut()`.  

```python

df\['bin'] = pd.cut(df\['val'], bins=\[0,10,20,30], labels=\['L','M','H'])

```



\### 27. How do you detect and remove columns with low variance?  

Compute variance and drop below threshold.  

```python

vars = df.var()

low\_var\_cols = vars\[vars<0.1].index

df.drop(columns=low\_var\_cols, inplace=True)

```



\### 28. Explain using `swifter` for faster apply.  

Install `swifter`; wrap `df.swifter.apply()`. It auto-chooses Pandas, Dask, or vectorized code.  

```python

import swifter

df\['new'] = df\['val'].swifter.apply(lambda x: x\*\*2)

```



\### 29. How can you profile Pandas code for hotspots?  

Use `line\_profiler` or `memory\_profiler` decorators on functions manipulating DataFrames.  

```python

%load\_ext line\_profiler

%lprun -f func\_to\_profile func\_to\_profile(df)

```



\### 30. Describe integrating Pandas with SQLite for fast prototyping.  

Use `to\_sql()` and `read\_sql\_query()` on an in-memory SQLite database.  

```python

con = sqlite3.connect(':memory:')

df.to\_sql('tmp', con)

pd.read\_sql\_query('SELECT \* FROM tmp', con)

```



\### 31. How do you reshape a DataFrame from long to wide when multiple index levels exist?  

Use `unstack()` on the desired level.  

```python

df.set\_index(\['A','B'])\['val'].unstack(level='B')

```



\### 32. Explain efficient concatenation of many DataFrames.  

Collect DataFrames in a list then call a single `pd.concat()` to avoid repeated copying.  

```python

pd.concat(list\_of\_dfs, axis=0, ignore\_index=True)

```



\### 33. How can you downcast numeric types to save memory?  

Use `pd.to\_numeric(..., downcast='integer')` or `float`.  

```python

df\['ints'] = pd.to\_numeric(df\['ints'], downcast='unsigned')

```



\### 34. Describe chaining fillna with group-specific values.  

Use `groupby().apply(lambda x: x.fillna(x.mean()))`.  

```python

df\['val'] = df.groupby('grp')\['val'].apply(lambda x: x.fillna(x.mean()))

```



\### 35. How do you compute pairwise differences between rows?  

Use `diff()` method on DataFrame.  

```python

df.diff(periods=1)

```



\### 36. Explain converting DataFrame styles for HTML reports.  

Use `df.style` with formatters and apply functions, then `.render()` or export to HTML.  

```python

html = df.style.highlight\_max(axis=0).render()

```



\### 37. How can you apply quantile normalization across samples?  

Rank-order transform and average ranks. Implement via `rank()` and group operations.  

```python

ranks = df.rank(method='average')

df\_norm = df.copy()

for col in df:

&nbsp;   df\_norm\[col] = ranks\[col].apply(lambda r: sorted(df\[col])\[int(r)-1])

```



\### 38. Describe how to implement a rolling window join.  

Use `merge\_asof()` with `by` and `tolerance` for nearest join in time.  

```python

pd.merge\_asof(df1.sort\_values('ts'), df2.sort\_values('ts'), on='ts', by='id', tolerance=pd.Timedelta('1H'))

```



\### 39. How do you pivot DataFrame with multiple value columns?  

Pass list of columns to `values`.  

```python

df.pivot(index='date', columns='category', values=\['val1','val2'])

```



\### 40. Explain how to drop columns based on missing‐value thresholds.  

Compute fraction of missing and filter.  

```python

mask = df.isna().mean() < 0.2

df = df.loc\[:, mask]

```



\### 41. How can you perform a fuzzy merge between DataFrames?  

Use `fuzzywuzzy` or `thefuzz` and apply matching on keys.  

```python

from thefuzz import process

choices = df2\['name'].tolist()

df\['match'] = df\['name'].apply(lambda x: process.extractOne(x, choices)\[0])

```



\### 42. Describe using `.at\[]` and `.iat\[]` for fast scalar access.  

`.at` uses label-based, `.iat` uses integer-based indexing for single element, faster than `loc`/`iloc`.  

```python

df.at\[5,'col'] = 10

df.iat\[5,2] = 20

```



\### 43. How do you normalize columns to ?

Subtract min and divide by range.  

```python

df\['norm'] = (df\['val'] - df\['val'].min()) / (df\['val'].max() - df\['val'].min())

```



\### 44. Explain combining DataFrames with differing schemas via schema alignment.  

Reindex columns after concat to ensure same order, fill missing columns with NaN.  

```python

all\_cols = set().union(\*\[df.columns for df in dfs])

aligned = \[df.reindex(columns=all\_cols) for df in dfs]

pd.concat(aligned)

```



\### 45. How can you randomly mask a fraction of DataFrame entries?  

Use random mask and `where()`.  

```python

mask = np.random.rand(\*df.shape) < 0.1

df\_masked = df.where(~mask, other=np.nan)

```



\### 46. Describe creating a custom DataFrame accessor for domain methods.  

Use `pd.api.extensions.register\_dataframe\_accessor`. See earlier Geo example.  



\### 47. How do you detect change points in time-series using Pandas?  

Compute differences and look for large jumps or apply rolling statistics.  

```python

df\['diff'] = df\['val'].diff()

change\_points = df.index\[df\['diff'].abs() > threshold]

```



\### 48. Explain staging incremental updates in place without full reload.  

Read new records based on timestamp, `append`, and optionally drop duplicates.  

```python

new = pd.read\_csv('new.csv')

df = pd.concat(\[df, new]).drop\_duplicates(subset='id', keep='last')

```



\### 49. How can you merge DataFrames with multi‐level indexes?  

Use `merge` on index by passing `left\_index=True`, `right\_index=True`.  

```python

pd.merge(df1, df2, left\_index=True, right\_index=True)

```



\### 50. Describe using `extract()` with regex to parse columns.  

Use `.str.extract()` with capturing groups.  

```python

df\['year'] = df\['date\_str'].str.extract(r'(\\d{4})')

```



\### 51. How do you apply sparse DataFrame structures?  

Convert to sparse type to save memory for mostly missing data.  

```python

sdf = df.astype(pd.SparseDtype("float", np.nan))

```



\*\*\*



