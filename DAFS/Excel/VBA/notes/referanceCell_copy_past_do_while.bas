Option Explicit

Sub HeadingCopy()
    Sheet2.Range("A2", "A6").Select
    Selection.Copy
    Range("E1").PasteSpecial Paste:=xlPasteAll, Operation:=xlPasteSpecialOperationNone, _
    SkipBlanks:=True, Transpose:=True
End Sub

Sub bodyCopy()

    Call HeadingCopy

    Sheet2.Range("B2").Select
    ActiveCell.Range("A1", "A5").Select
    
Do While ActiveCell <> ""
    Selection.Copy
    ActiveCell.Offset(0, 3).Range("A1").PasteSpecial Paste:=xlPasteAll, Operation:=xlPasteSpecialOperationNone, _
    SkipBlanks:=True, Transpose:=True
    ActiveCell.Offset(5, -3).Range("A1", "A5").Select
Loop

    Call removecell
End Sub


Sub removecell()
    Columns("E:I").Select
    Selection.SpecialCells(xlCellTypeBlanks).Select
    Application.CutCopyMode = False
    Selection.Delete Shift:=xlUp
    Range("E1").Select
End Sub
