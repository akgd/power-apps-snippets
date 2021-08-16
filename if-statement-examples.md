If a choice field contains certain values, update some variables. If not, reset some fields.
```
If(
    (
        Purpose.Selected.Value = "Extranet Proposal" || 
        Purpose.Selected.Value = "Internal Proposal"
    ),
    UpdateContext({proposalFieldsVisible: true}) && UpdateContext({projectFieldsVisible: false}),
    Reset(SecurityAgreement) && Reset(ConfidentialUsers)
);
```

If a choice field contains a certain string, update a variable. If not, reset some fields.
```
If(
    Not(IsBlank(Find("Internal",Purpose.Selected.Value))),
    UpdateContext({confidentialRequired: false}),
    Reset(SecurityAgreement) && Reset(ConfidentialUsers)
);
```

If a multichoice field containes a value, return true.
```
If(IsBlank(Find("Other",DataCardValue2.Selected.Value)),false,true)
```
