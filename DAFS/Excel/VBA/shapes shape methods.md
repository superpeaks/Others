In Excel VBA, shapes are objects that represent various graphical elements such as charts, text boxes, pictures, and more. Here's a list of common methods used with **Shapes** and **Shape Objects** in VBA:

### Common Methods for **Shapes** in Excel VBA

These methods are generally used when you work with a **Shapes collection** (the collection of all shapes on a worksheet or a chart).

1. **AddShape**
   Adds a shape to a worksheet or chart.
   Syntax:

   ```vba
   Set myShape = ActiveSheet.Shapes.AddShape(msoShapeType, Left, Top, Width, Height)
   ```

   Example:

   ```vba
   ActiveSheet.Shapes.AddShape(msoShapeRectangle, 50, 50, 100, 50)
   ```

2. **AddPicture**
   Adds a picture to a worksheet or chart.
   Syntax:

   ```vba
   Set myShape = ActiveSheet.Shapes.AddPicture(Filename, LinkToFile, SaveWithDocument, Left, Top, Width, Height)
   ```

   Example:

   ```vba
   ActiveSheet.Shapes.AddPicture("C:\path\to\image.jpg", msoPicture, msoTrue, 100, 100, 200, 150)
   ```

3. **Range**
   Returns a range of cells occupied by a shape.
   Syntax:

   ```vba
   Set shapeRange = ActiveSheet.Shapes("ShapeName").TopLeftCell
   ```

4. **Delete**
   Deletes a shape from the collection.
   Syntax:

   ```vba
   ActiveSheet.Shapes("ShapeName").Delete
   ```

5. **Select**
   Selects a shape.
   Syntax:

   ```vba
   ActiveSheet.Shapes("ShapeName").Select
   ```

6. **Group**
   Groups several shapes into a single shape object.
   Syntax:

   ```vba
   Set myShapeGroup = ActiveSheet.Shapes.Range(Array("Shape1", "Shape2")).Group
   ```

7. **Ungroup**
   Ungroups a previously grouped shape object.
   Syntax:

   ```vba
   ActiveSheet.Shapes("GroupName").Ungroup
   ```

8. **Copy**
   Copies a shape to the clipboard.
   Syntax:

   ```vba
   ActiveSheet.Shapes("ShapeName").Copy
   ```

9. **Cut**
   Cuts a shape from the sheet.
   Syntax:

   ```vba
   ActiveSheet.Shapes("ShapeName").Cut
   ```

10. **Paste**
    Pastes the shape (after it has been copied or cut).
    Syntax:

    ```vba
    ActiveSheet.Shapes.Paste
    ```

---

### Common Methods for **Shape Objects** in Excel VBA

Once you’ve referenced a specific **Shape Object**, here are some methods you can use to manipulate or modify that shape:

1. **Top**
   Returns or sets the distance from the top edge of the worksheet or chart to the top of the shape.
   Syntax:

   ```vba
   myShape.Top = 100
   ```

2. **Left**
   Returns or sets the distance from the left edge of the worksheet or chart to the left side of the shape.
   Syntax:

   ```vba
   myShape.Left = 50
   ```

3. **Width**
   Returns or sets the width of the shape.
   Syntax:

   ```vba
   myShape.Width = 200
   ```

4. **Height**
   Returns or sets the height of the shape.
   Syntax:

   ```vba
   myShape.Height = 150
   ```

5. **Fill**
   Accesses the shape’s fill properties, allowing you to change the background color or texture.
   Syntax:

   ```vba
   myShape.Fill.ForeColor.RGB = RGB(255, 0, 0)  ' Red color
   ```

6. **Line**
   Accesses the shape’s border (line) properties, such as color, width, or style.
   Syntax:

   ```vba
   myShape.Line.ForeColor.RGB = RGB(0, 0, 0)  ' Black border
   myShape.Line.Weight = 3  ' Line thickness
   ```

7. **TextFrame**
   Accesses the text-related properties of a shape (for shapes with text, such as a text box).
   Syntax:

   ```vba
   myShape.TextFrame.Characters.Text = "Hello, World!"
   ```

8. **Rotation**
   Rotates the shape by a given angle.
   Syntax:

   ```vba
   myShape.Rotation = 45  ' Rotate 45 degrees
   ```

9. **ZOrder**
   Changes the z-order (layering) of the shape (i.e., brings it forward or sends it backward).
   Syntax:

   ```vba
   myShape.ZOrder msoSendToBack  ' Send shape to back
   myShape.ZOrder msoBringToFront  ' Bring shape to front
   ```

10. **LockAspectRatio**
    Locks or unlocks the aspect ratio of the shape, so resizing it keeps the width-to-height ratio constant.
    Syntax:

    ```vba
    myShape.LockAspectRatio = msoTrue
    ```

11. **Visible**
    Sets or gets the visibility of the shape.
    Syntax:

    ```vba
    myShape.Visible = msoTrue  ' Shape is visible
    ```

12. **Adjustments**
    Allows adjustments to shapes with adjustable properties (like a pie chart shape, etc.).
    Syntax:

    ```vba
    myShape.Adjustments(1) = 0.5  ' Adjust the first adjustment property
    ```

13. **Shadow**
    Controls the shadow effects of a shape.
    Syntax:

    ```vba
    myShape.Shadow.Type = msoShadow6  ' Set shadow style
    ```

---

### Example Code

Here's a small example that demonstrates adding a rectangle and manipulating it:

```vba
Sub CreateShape()
    Dim myShape As Shape

    ' Add a rectangle shape
    Set myShape = ActiveSheet.Shapes.AddShape(msoShapeRectangle, 50, 50, 200, 100)

    ' Set the fill color to blue
    myShape.Fill.ForeColor.RGB = RGB(0, 0, 255)

    ' Set the border color to black
    myShape.Line.ForeColor.RGB = RGB(0, 0, 0)

    ' Rotate the shape 45 degrees
    myShape.Rotation = 45

    ' Set the text inside the shape
    myShape.TextFrame.Characters.Text = "Hello, Excel VBA!"
End Sub
```

This example adds a rectangle, customizes its fill and line colors, rotates it, and adds text inside it.

Let me know if you'd like more details or examples on a specific method!
