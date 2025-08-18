Here’s a list of **advanced Excel formulas** that are widely used for complex data analysis, modeling, and reporting. These formulas can help you handle multiple data points, perform conditional logic, manipulate text, and much more. Let’s dive into them!

### **1. Array Formulas**

Array formulas are powerful formulas that allow you to perform multiple calculations on one or more of the items in an array (range of data). These formulas can return either a single result or multiple results.

#### **Example:**

```excel
=SUM(A2:A10 * B2:B10)
```

This array formula multiplies the values in columns A and B, then sums the results.

To enter an array formula, press `Ctrl + Shift + Enter`.

---

### **2. INDEX & MATCH (Advanced Lookup)**

The `INDEX` and `MATCH` combination is often used as an alternative to `VLOOKUP` because it offers more flexibility and can look up values to the left of the lookup column.

#### **Example:**

```excel
=INDEX(B2:B10, MATCH("Apple", A2:A10, 0))
```

This formula searches for "Apple" in the range `A2:A10` and returns the corresponding value from `B2:B10`.

* `MATCH` finds the position of "Apple" in `A2:A10`.
* `INDEX` uses that position to fetch the value from `B2:B10`.

---

### **3. SUMPRODUCT**

The `SUMPRODUCT` function multiplies corresponding elements in given arrays and returns the sum of those products. It’s useful for conditional summing and working with arrays of data.

#### **Example:**

```excel
=SUMPRODUCT((A2:A10="Apple")*(B2:B10))
```

This formula sums the values in `B2:B10` where `A2:A10` equals "Apple".

---

### **4. OFFSET**

The `OFFSET` function returns a value or range that is a specified number of rows and columns from a given reference.

#### **Example:**

```excel
=SUM(OFFSET(A1, 1, 0, 5, 1))
```

This formula sums a range of 5 rows starting from the cell `A2` (1 row below `A1`).

---

### **5. INDIRECT**

The `INDIRECT` function returns a cell reference specified by a text string, which can be used to dynamically reference ranges.

#### **Example:**

```excel
=SUM(INDIRECT("A2:A10"))
```

This formula sums the range `A2:A10`. You can change `"A2:A10"` dynamically by referencing another cell.

---

### **6. IFERROR**

`IFERROR` is used to trap and handle errors in formulas. It returns a custom result (or blank) if the formula encounters an error, otherwise it returns the result of the formula.

#### **Example:**

```excel
=IFERROR(A2/B2, "Error in Division")
```

This formula divides `A2` by `B2` but returns "Error in Division" if there’s a division error (like dividing by zero).

---

### **7. TEXT Functions (LEFT, MID, RIGHT, CONCATENATE)**

These functions are often used to manipulate text data.

* **LEFT**: Extracts characters from the start of a string.
* **RIGHT**: Extracts characters from the end of a string.
* **MID**: Extracts characters from the middle of a string.
* **CONCATENATE** (or `&` operator): Combines text strings.

#### **Examples:**

```excel
=LEFT(A2, 5)        'Extracts first 5 characters from A2
=MID(A2, 3, 4)      'Extracts 4 characters starting from the 3rd character in A2
=RIGHT(A2, 3)       'Extracts last 3 characters from A2
=CONCATENATE(A2, B2) 'Combines A2 and B2 into one string
=A2 & " " & B2      'Same as CONCATENATE, combines A2 and B2 with a space
```

---

### **8. SUMIFS / COUNTIFS / AVERAGEIFS**

These are the conditional versions of `SUM`, `COUNT`, and `AVERAGE`, allowing you to perform calculations based on multiple criteria.

#### **Examples:**

```excel
=SUMIFS(C2:C10, A2:A10, "Apple", B2:B10, "Red")
=COUNTIFS(A2:A10, "Apple", B2:B10, "Red")
=AVERAGEIFS(C2:C10, A2:A10, "Apple", B2:B10, "Red")
```

* `SUMIFS` sums values in `C2:C10` where `A2:A10` equals "Apple" and `B2:B10` equals "Red".
* `COUNTIFS` counts the number of rows that meet the specified criteria.
* `AVERAGEIFS` averages values based on multiple conditions.

---

### **9. VLOOKUP / HLOOKUP / XLOOKUP (Newer Excel versions)**

The **VLOOKUP** and **HLOOKUP** functions are used for looking up a value in a vertical or horizontal range, respectively. **XLOOKUP** is a more flexible version available in newer versions of Excel.

#### **Examples:**

* **VLOOKUP**:

```excel
=VLOOKUP("Apple", A2:B10, 2, FALSE)
```

Looks for "Apple" in `A2:A10` and returns the corresponding value from column 2.

* **HLOOKUP**:

```excel
=HLOOKUP("Apple", A1:E5, 3, FALSE)
```

Looks for "Apple" in the first row of `A1:E5` and returns the corresponding value from the third row.

* **XLOOKUP** (available in Office 365 and Excel 2021+):

```excel
=XLOOKUP("Apple", A2:A10, B2:B10)
```

Looks for "Apple" in `A2:A10` and returns the corresponding value from `B2:B10`. **XLOOKUP** works both horizontally and vertically, and is more robust than `VLOOKUP` (e.g., no need to specify column index).

---

### **10. SUMIF / COUNTIF / AVERAGEIF**

These functions allow you to perform conditional summing, counting, or averaging based on a single criterion.

#### **Examples:**

```excel
=SUMIF(A2:A10, "Apple", B2:B10)
=COUNTIF(A2:A10, "Apple")
=AVERAGEIF(A2:A10, "Apple", B2:B10)
```

* `SUMIF`: Adds values from `B2:B10` where `A2:A10` equals "Apple".
* `COUNTIF`: Counts the number of cells in `A2:A10` that equal "Apple".
* `AVERAGEIF`: Averages the values in `B2:B10` where `A2:A10` equals "Apple".

---

### **11. EOMONTH / EDATE**

These functions are used to calculate the end of a month or add/subtract months from a given date.

#### **Examples:**

```excel
=EOMONTH(A2, 1)    'Returns the last day of the month, 1 month after the date in A2
=EDATE(A2, -1)     'Returns the date 1 month before the date in A2
```

---

### **12. RANK / RANK.EQ / RANK.AVG**

These functions are used to rank numbers in a data set.

#### **Examples:**

```excel
=RANK(A2, A2:A10)
=RANK.EQ(A2, A2:A10)    'Ranks based on equal numbers giving the same rank
=RANK.AVG(A2, A2:A10)   'Ranks based on equal numbers giving the average rank
```

---

### **13. TRANSPOSE**

This function changes the orientation of a range (i.e., it swaps rows and columns).

#### **Example:**

```excel
=TRANSPOSE(A1:B5)
```

This transposes a range of data from `A1:B5` (switches rows to columns and vice versa).

---

### **14. AND / OR**

These logical functions allow you to combine multiple conditions.

#### **Examples:**

```excel
=AND(A2 > 10, B2 < 20)  'Returns TRUE if both conditions are true
=OR(A2 > 10, B2 < 20)   'Returns TRUE if either condition is true
```

---

### **15. TEXTJOIN (Excel 2016+)**

This function is used to combine multiple text values into one, with a delimiter of your choice.

#### **Example:**

```excel
=TEXTJOIN(", ", TRUE, A2:A10)
```

This joins all the values in `A2:A10`, separated by a comma and space, ignoring any empty cells.

---

### **16. CONCAT / CONCATENATE**

The `CONCAT` function (a newer version of `CONCATENATE`) is used to combine multiple text strings into one.

#### **Example:**

```excel
=CONCAT(A2, " ", B2)
```

This combines the text in `A2` and `B2` with a space in between.

---

### **17. UNIQUE (Excel 365 & Excel 2021+)**

This function returns a list of unique values from a given range or array.

#### **Example:**

```excel
```


\=UNIQUE(A2\:A10)

````
This formula returns a list of distinct values from `A2:A10`.

---

### **18. SEQUENCE (Excel 365 & Excel 2021+)**
Generates a list of sequential numbers in an array.

#### **Example:**
```excel
=SEQUENCE(5, 1, 1, 1)
````

This generates a vertical array of numbers: 1, 2, 3, 4, 5.

---

### **19. LET (Excel 365 & Excel 2021+)**

`LET` allows you to assign names to calculation results, making formulas easier to read and reducing redundant calculations.

#### **Example:**

```excel
=LET(x, A2 * B2, y, A2 + B2, x + y)
```

This formula calculates `A2 * B2` and `A2 + B2`, assigns these calculations to `x` and `y`, and returns the sum of `x` and `y`.

---

These advanced Excel formulas will help you analyze data more effectively, streamline your workflows, and make your spreadsheets more powerful.
