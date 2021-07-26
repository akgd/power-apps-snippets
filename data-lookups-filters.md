```Set(varOrgAdditional, LookUp(Organizations,'Organization Name'= DataCardValue13.Selected.Value, ID))```


```If(varOrgPrimary=0,ResetForm(Form2_1),First(Filter('Organization Name', ID= Value(varOrgAdditional))))```
