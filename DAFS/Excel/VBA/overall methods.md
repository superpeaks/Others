Here is a detailed list of **methods** for the most commonly used **Excel VBA objects**, with brief descriptions for each method. A **method** in VBA is an action that an object can perform (like opening a workbook, setting a value, or copying a range).

---

### **1. Range Object (Cells, Rows, Columns, etc.)**

#### Methods for Range:

* **Activate**: Activates the range (makes it the active selection).

  ```vba
  Range("A1").Activate
  ```
* **Clear**: Clears the content, formatting, and comments in the range.

  ```vba
  Range("A1:A10").Clear
  ```
* **ClearContents**: Clears only the content (leaves formatting and comments intact).

  ```vba
  Range("A1:A10").ClearContents
  ```
* **Copy**: Copies the range to the clipboard.

  ```vba
  Range("A1:B2").Copy
  ```
* **Cut**: Cuts the range to the clipboard.

  ```vba
  Range("A1:B2").Cut
  ```
* **Delete**: Deletes the range (shifts cells to fill the gap).

  ```vba
  Range("A1:B2").Delete
  ```
* **Formula**: Sets or gets the formula for a range.

  ```vba
  Range("A1").Formula = "=SUM(B1:B10)"
  ```
* **Insert**: Inserts a range, shifting cells down or right.

  ```vba
  Range("A1:A5").Insert
  ```
* **Merge**: Merges the cells in the range.

  ```vba
  Range("A1:B1").Merge
  ```
* **UnMerge**: Unmerges the cells in the range.

  ```vba
  Range("A1:B1").UnMerge
  ```
* **Offset**: Returns a range that is offset from the original range by a given number of rows and columns.

  ```vba
  Range("A1").Offset(1, 2).Value = "New Value"
  ```
* **PasteSpecial**: Pastes the clipboard contents with special options.

  ```vba
  Range("A1").PasteSpecial Paste:=xlPasteValues
  ```
* **Select**: Selects the range.

  ```vba
  Range("A1").Select
  ```
* **Sort**: Sorts the range according to the specified criteria.

  ```vba
  Range("A1:A10").Sort Key1:=Range("A1"), Order1:=xlAscending
  ```
* **TextToColumns**: Converts text in a range to columns based on delimiters.

  ```vba
  Range("A1:A10").TextToColumns Destination:=Range("B1"), DataType:=xlDelimited, TextQualifier:=xlDoubleQuote, ConsecutiveDelimiter:=False, Tab:=True
  ```
* **WrapText**: Sets or gets the wrap text property.

  ```vba
  Range("A1").WrapText = True
  ```

---

### **2. Worksheet Object**

#### Methods for Worksheet:

* **Activate**: Activates the worksheet.

  ```vba
  Sheets("Sheet1").Activate
  ```
* **Copy**: Copies the worksheet to a new location.

  ```vba
  Sheets("Sheet1").Copy After:=Sheets("Sheet2")
  ```
* **Delete**: Deletes the worksheet.

  ```vba
  Sheets("Sheet1").Delete
  ```
* **Move**: Moves the worksheet to a new location.

  ```vba
  Sheets("Sheet1").Move After:=Sheets("Sheet3")
  ```
* **Select**: Selects the worksheet.

  ```vba
  Sheets("Sheet1").Select
  ```
* **Protect**: Protects the worksheet from modifications.

  ```vba
  Sheets("Sheet1").Protect Password:="password"
  ```
* **Unprotect**: Unprotects the worksheet.

  ```vba
  Sheets("Sheet1").Unprotect Password:="password"
  ```

---

### **3. Workbook Object**

#### Methods for Workbook:

* **Activate**: Activates the workbook.

  ```vba
  Workbooks("Book1.xlsx").Activate
  ```
* **Close**: Closes the workbook.

  ```vba
  Workbooks("Book1.xlsx").Close SaveChanges:=True
  ```
* **Save**: Saves the workbook.

  ```vba
  Workbooks("Book1.xlsx").Save
  ```
* **SaveAs**: Saves the workbook under a new name or format.

  ```vba
  Workbooks("Book1.xlsx").SaveAs Filename:="C:\NewBook.xlsx"
  ```
* **Open**: Opens an existing workbook.

  ```vba
  Workbooks.Open Filename:="C:\Book1.xlsx"
  ```
* **PrintOut**: Prints the workbook.

  ```vba
  Workbooks("Book1.xlsx").PrintOut
  ```

---

### **4. Application Object (Excel Application)**

#### Methods for Application:

* **Calculate**: Forces Excel to recalculate all formulas.

  ```vba
  Application.Calculate
  ```
* **CalculateFull**: Forces a full recalculation of all formulas.

  ```vba
  Application.CalculateFull
  ```
* **EnableEvents**: Enables or disables events.

  ```vba
  Application.EnableEvents = False
  ```
* **Quit**: Quits the Excel application.

  ```vba
  Application.Quit
  ```
* **DisplayAlerts**: Turns display alerts on/off.

  ```vba
  Application.DisplayAlerts = False
  ```
* **Undo**: Undoes the last action.

  ```vba
  Application.Undo
  ```
* **Wait**: Pauses the code for a specified amount of time.

  ```vba
  Application.Wait Now + TimeValue("00:00:05")
  ```

---

### **5. Chart Object**

#### Methods for Chart:

* **Activate**: Activates the chart.

  ```vba
  ActiveSheet.ChartObjects("Chart1").Activate
  ```
* **Copy**: Copies the chart to the clipboard.

  ```vba
  ActiveSheet.ChartObjects("Chart1").Copy
  ```
* **Delete**: Deletes the chart.

  ```vba
  ActiveSheet.ChartObjects("Chart1").Delete
  ```
* **Export**: Exports the chart as an image file.

  ```vba
  ActiveSheet.ChartObjects("Chart1").Chart.Export Filename:="C:\chart.png"
  ```
* **Paste**: Pastes the chart from the clipboard.

  ```vba
  ActiveSheet.ChartObjects("Chart1").Paste
  ```
* **Resize**: Resizes the chart.

  ```vba
  ActiveSheet.ChartObjects("Chart1").Width = 400
  ActiveSheet.ChartObjects("Chart1").Height = 300
  ```

---

### **6. Shape Object**

#### Methods for Shape:

* **Copy**: Copies the shape to the clipboard.

  ```vba
  ActiveSheet.Shapes("Shape1").Copy
  ```
* **Delete**: Deletes the shape.

  ```vba
  ActiveSheet.Shapes("Shape1").Delete
  ```
* **Select**: Selects the shape.

  ```vba
  ActiveSheet.Shapes("Shape1").Select
  ```
* **Duplicate**: Duplicates the shape.

  ```vba
  ActiveSheet.Shapes("Shape1").Duplicate
  ```
* **Group**: Groups multiple shapes into one.

  ```vba
  ActiveSheet.Shapes.Range(Array("Shape1", "Shape2")).Group
  ```
* **Ungroup**: Ungroups a group of shapes.

  ```vba
  ActiveSheet.Shapes("Group1").Ungroup
  ```

---

### **7. Comment Object**

#### Methods for Comment:

* **Delete**: Deletes the comment.

  ```vba
  Range("A1").Comment.Delete
  ```
* **Show**: Makes the comment visible.

  ```vba
  Range("A1").Comment.Show
  ```
* **Hide**: Hides the comment.

  ```vba
  Range("A1").Comment.Hide
  ```
* **Add**: Adds a new comment to a cell.

  ```vba
  Range("A1").AddComment "This is a comment"
  ```

---

### **8. Name Object (Defined Names)**

#### Methods for Name:

* **Delete**: Deletes the defined name.

  ```vba
  ThisWorkbook.Names("MyRange").Delete
  ```
* **RefersTo**: Changes the range the name refers to.

  ```vba
  ThisWorkbook.Names("MyRange").RefersTo = "=Sheet2!$A$1:$A$10"
  ```

---

### **9. PivotTable Object**

#### Methods for PivotTable:

* **RefreshData**: Refreshes the data in the PivotTable.

  ```vba
  ActiveSheet.PivotTables("PivotTable1").RefreshData
  ```
* **ClearAllFilters**: Clears all filters in the PivotTable.

  ```vba
  ActiveSheet.PivotTables("PivotTable1").ClearAllFilters
  ```
* **Update**: Updates the PivotTable.

  ```vba
  ActiveSheet.PivotTables("PivotTable1").Update
  ```
* **AddDataField**: Adds a new data field to the PivotTable.

  ```vba
  ActiveSheet.PivotTables
  ```


("PivotTable1").PivotFields("Sales").Orientation = xlDataField

````

---

### **10. FileDialog Object (File Picker)**

#### Methods for FileDialog:
- **Show**: Displays the file dialog.
```vba
fd.Show
````

* **SelectedItems**: Returns the selected file(s) from the dialog.

  ```vba
  MsgBox fd.SelectedItems(1)
  ```
* **AllowMultiSelect**: Sets whether multiple files can be selected.

  ```vba
  fd.AllowMultiSelect = True
  ```

---

This list covers the **key methods** used across common **Excel VBA objects**. You can use them to manipulate your Excel files, automate tasks, and perform a variety of operations based on your needs. Let me know if you want more examples or need further clarification on any of the methods!
