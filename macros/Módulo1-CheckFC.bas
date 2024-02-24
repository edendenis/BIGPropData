Attribute VB_Name = "Módulo1"
'

Sub CheckFC()


    'Formatação
    Sheets("Cromossomo Ótimo").Select
    Columns("E:E").Select
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Range("H1:H4").Select
    Selection.Cut
    Range("E1").Select
    ActiveSheet.Paste
    Range("D6").Select
    ActiveCell.FormulaR1C1 = "Saldo Do Dia do Programa"
    Range("E6").Select
    ActiveCell.FormulaR1C1 = "Saldo do Dia Fixo"
    Range("F6").Select
    ActiveCell.FormulaR1C1 = "Saldo do Dia Final"
    Range("G6").Select
    ActiveCell.FormulaR1C1 = "Delta"
    Range("R6").Select
    ActiveCell.FormulaR1C1 = "VP Papel/Hover"
    Range("R7").Select
    Columns("R:R").EntireColumn.AutoFit
    ActiveWindow.ScrollColumn = 13
    
    Range("T6").Select
    ActiveCell.FormulaR1C1 = "1"
    Range("U6").Select
    ActiveCell.FormulaR1C1 = "2"
    Range("T6:U6").Select
    Selection.AutoFill Destination:=Range("T6:NT6"), Type:=xlFillDefault
    Range("T6:NT6").Select
    Range("NT6").Select
    Range("T5:NT5").Select
    Range("NT5").Activate
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.Merge
    Range("T5:NT5").Select
    ActiveCell.FormulaR1C1 = "DIA"
    Range("A6").Select
    Range(Selection, Selection.End(xlToRight)).Select
    Range(Selection, Selection.End(xlDown)).Select
    ActiveSheet.ListObjects.Add(xlSrcRange, Range("$A$6:$R$371"), , xlYes).Name = _
        "Tabela1"
    Range("E7").Select
    ActiveCell.FormulaR1C1 = "=[@[Entrada ($)]]-[@[Saída ($)]]"
    Range("E7").Select
    Selection.AutoFill Destination:=Range("Tabela1[Saldo do Dia Fixo]")
    Range("Tabela1[Saldo do Dia Fixo]").Select
    Range("F7").Select
    ActiveCell.FormulaR1C1 = "=[@[Saldo do Dia Fixo]]+SUM(RC[14]:RC[378])"
    Range("F7").Select
    Selection.AutoFill Destination:=Range("Tabela1[Saldo do Dia Final]")
    Range("Tabela1[Saldo do Dia Final]").Select
    Range("G7").Select
    ActiveCell.FormulaR1C1 = _
        "=[@[Saldo Do Dia do Programa]]-[@[Saldo do Dia Final]]"
    Range("G7").Select
    Selection.AutoFill Destination:=Range("Tabela1[Delta]")
    Range("Tabela1[Delta]").Select
    Range("R7").Select
    ActiveCell.FormulaR1C1 = _
        "=([@[Saldo do Dia Final]]*(1+[@[Taxa de juros]])^[@[Tempo mínimo]])-[@Encargos]*[@[Tempo mínimo]]"
    Range("R7").Select
    Selection.AutoFill Destination:=Range("Tabela1[VP Papel/Hover]")
    Range("Tabela1[VP Papel/Hover]").Select
    Range("A6").Select
    Calculate
    
    Dim TempMinimo(0 To 10000) As Integer
    Dim refLinha(0 To 1000) As Integer
    Dim d As Integer
    
    'Joga valor no dia
    d = 1
    Do While d <= 364
        Range("M6").Select
        If ActiveCell >= 1 Then
            ActiveCell.Offset(d, 0).Select
            TempMinimo(d) = ActiveCell
            refLinha(d) = Range(Selection.Address).Row
            ActiveCell.Offset(TempMinimo(d), d + 6).Select
            ActiveCell = "=R" & refLinha(d)
       End If
        d = d + 1
    Loop
    
    Calculate
    
    'Check do delta (programa e calculado)
    Dim DiaErro As Integer
    Range("S6") = "Check"
    d = 1
    Do While d <= 365
        Range("G6").Select
        ActiveCell.Offset(d, 0).Select
        If ActiveCell > 0.05 Then
            DiaErro = ActiveCell.Offset(d, -6).Value
            MsgBox "Dia " & DiaErro & " contém divergência > 0,05."
            ActiveCell.Offset(0, 12).Value = "Atenção"
        Else
            ActiveCell.Offset(0, 12).Value = "OK"
        End If
        d = d + 1
    Loop
End Sub

