If SharePoint choice field equals a certain value

```If(DataCardValue2.Selected.Value="Other",true,false)```

If SharePoint multi-choice field contains a certain value

```If(CountIf(DataCardValue19.SelectedItems,Value="Other")>0,true,false)```
