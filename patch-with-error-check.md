```
If(
    IsEmpty(
        Errors('App Report Requests',Patch('App Report Requests',Defaults('FIT PMO App Report Requests'),{'Requester Email':User().Email,'Report Type':{Value:"Email Project Overview"},ProjectSPID:varSelectedProjId}))
    ),
    Notify("Report request created! You will be emailed in a few minutes.",NotificationType.Success,4000),
    Notify("Request failed.",NotificationType.Error,4000)
)
```
