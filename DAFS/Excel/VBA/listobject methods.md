In Excel VBA, a **ListObject** represents an Excel **Table** (also known as a data table), and you can use it to interact with the table's data, formatting, headers, and more. Here are some common methods you can use with the **ListObject Object** in Excel VBA.

### Common Methods for **ListObject Object** in Excel VBA

1. **ListObjects.Add**
   Adds a new table (ListObject) to the worksheet.
   Syntax:

   ```vba
   Set myTable = ActiveSheet.ListObjects.Add( _
       SourceType:=xlSrcRange, _
       Source:=Range("A1:C10"), _
       XlListObjectHasHeaders:=xlYes)
   ```

   Example:

   ```vba
   Set myTable = ActiveSheet.ListObjects.Add(xlSrcRange, Range("A1:D10"), , xlYes)
   ```

2. **ListObjects.Item**
   Returns a specific table (ListObject) from the ListObjects collection by index or name.
   Syntax:

   ```vba
   Set myTable = ActiveSheet.ListObjects("Table1")
   ```

3. **Delete**
   Deletes the table (ListObject) from the worksheet.
   Syntax:

   ```vba
   ActiveSheet.ListObjects("Table1").Delete
   ```

4. **Resize**
   Changes the size of the table by modifying the range it covers.
   Syntax:

   ```vba
   ActiveSheet.ListObjects("Table1").Resize Range("A1:E20")
   ```

5. **ShowTotals**
   Toggles the display of total row at the bottom of the table.
   Syntax:

   ```vba
   ActiveSheet.ListObjects("Table1").ShowTotals = True
   ```

6. **Sort**
   Sorts the data in the table by one or more columns.
   Syntax:

   ```vba
   ActiveSheet.ListObjects("Table1").Sort.SortFields.Add Key:=Range("Table1[Column1]"), _
       SortOn:=xlSortOnValues, Order:=xlAscending
   ActiveSheet.ListObjects("Table1").Sort.Apply
   ```

7. **Range**
   Returns a `Range` object representing the range of cells that the table covers.
   Syntax:

   ```vba
   Set tableRange = ActiveSheet.ListObjects("Table1").Range
   ```

8. **Unlist**
   Converts the table to a normal range (removes the table formatting and functionality but keeps the data).
   Syntax:

   ```vba
   ActiveSheet.ListObjects("Table1").Unlist
   ```

9. **HeaderRowRange**
   Returns a `Range` object that refers to the header row of the table.
   Syntax:

   ```vba
   Set headerRange = ActiveSheet.ListObjects("Table1").HeaderRowRange
   ```

10. **DataBodyRange**
    Returns the `Range` of data within the table (excluding the headers and total row).
    Syntax:

    ```vba
    Set dataRange = ActiveSheet.ListObjects("Table1").DataBodyRange
    ```

11. **TableStyle**
    Changes the style of the table, which includes predefined styles for table formatting.
    Syntax:

    ```vba
    ActiveSheet.ListObjects("Table1").TableStyle = "TableStyleMedium9"
    ```

12. **ListColumns**
    Returns a **ListColumns** collection, which represents all columns in a table.
    Syntax:

    ```vba
    Set myColumn = ActiveSheet.ListObjects("Table1").ListColumns("Column1")
    ```

13. **ListRows**
    Returns a **ListRows** collection, which represents all rows in the table.
    Syntax:

    ```vba
    Set myRow = ActiveSheet.ListObjects("Table1").ListRows(1)
    ```

14. **AddDataRow**
    Adds a new row to the table (in Excel 2013 and later).
    Syntax:

    ```vba
    ActiveSheet.ListObjects("Table1").ListRows.Add
    ```

15. **ConvertToRange**
    Converts the table back into a normal range of data (removes the table functionality).
    Syntax:

    ```vba
    ActiveSheet.ListObjects("Table1").ConvertToRange
    ```

16. **Update**
    Refreshes the table if it is linked to an external data source (for example, a query table).
    Syntax:

    ```vba
    ActiveSheet.ListObjects("Table1").Refresh
    ```

---

### Common Methods for **ListColumn** in Excel VBA

Once you have a reference to a specific **ListColumn** (a column in the table), you can use various methods to manipulate the columns.

1. **Range**
   Returns the range of cells in the specific column.
   Syntax:

   ```vba
   Set columnRange = ActiveSheet.ListObjects("Table1").ListColumns("Column1").Range
   ```

2. **DataBodyRange**
   Returns the `Range` of data within the specific column (excluding the header and total row).
   Syntax:

   ```vba
   Set columnDataRange = ActiveSheet.ListObjects("Table1").ListColumns("Column1").DataBodyRange
   ```

3. **Delete**
   Deletes the entire column from the table.
   Syntax:

   ```vba
   ActiveSheet.ListObjects("Table1").ListColumns("Column1").Delete
   ```

4. **Add**
   Adds a new column to the table.
   Syntax:

   ```vba
   ActiveSheet.ListObjects("Table1").ListColumns.Add
   ```

---

### Common Methods for **ListRow** in Excel VBA

Once you have a reference to a **ListRow** (a row in the table), you can use methods to interact with the row data.

1. **Range**
   Returns the range of cells in a specific row.
   Syntax:

   ```vba
   Set rowRange = ActiveSheet.ListObjects("Table1").ListRows(1).Range
   ```

2. **Delete**
   Deletes the entire row from the table.
   Syntax:

   ```vba
   ActiveSheet.ListObjects("Table1").ListRows(1).Delete
   ```

---

### Example Code

Here’s a small example that demonstrates how to add a table, format it, and manipulate its data:

```vba
Sub CreateTable()
    Dim myTable As ListObject
    Dim lastRow As Long

    ' Define the last row with data in the sheet
    lastRow = ActiveSheet.Cells(Rows.Count, "A").End(xlUp).Row

    ' Create a new table using the data in the range A1 to C[lastRow]
    Set myTable = ActiveSheet.ListObjects.Add(xlSrcRange, Range("A1:C" & lastRow), , xlYes)

    ' Set a table style
    myTable.TableStyle = "TableStyleMedium2"

    ' Add a new row to the table
    myTable.ListRows.Add

    ' Delete the first row of the table
    myTable.ListRows(1).Delete

    ' Resize the table range
    myTable.Resize Range("A1:D" & lastRow)

    ' Toggle the total row
    myTable.ShowTotals = True

    ' Set column headers in the table
    myTable.HeaderRowRange.Cells(1, 1).Value = "Name"
    myTable.HeaderRowRange.Cells(1, 2).Value = "Age"
    myTable.HeaderRowRange.Cells(1, 3).Value = "City"
End Sub
```

This code creates a table, adds a row, deletes a row, resizes the table, and adds a total row. It also modifies column headers in the table.

---

Let me know if you need more examples or further explanations!
