```
Sort (
   Filter(
      Interactions,
      ContactRecordID = varID
   ),
   Date,
   Descending
)
 ```

Sort by choice field
```
Sort (
   Filter(
      'Conference Attendance',
      ContactRecordID = varID
   ),
   Year.Value,
   Descending
)
 ```
