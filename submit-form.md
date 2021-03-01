Submit form to SharePoint and navigate to success screen (no validation)

```SubmitForm(SPWalkUpForm);Navigate(Success,ScreenTransition.Fade);```

Validate and submit SharePoint form

```If(SharePointForm1.Valid,SubmitForm(SharePointForm1)&&Navigate(SuccessScreen),SubmitForm(SharePointForm1))```
