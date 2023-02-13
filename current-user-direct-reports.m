ClearCollect(
    colCurrentUserDirectFluenceReports,
    Filter(
        Office365Users.DirectReportsV2(Office365Users.MyProfileV2().mail).value,
        "company.com" in Lower(mail) && accountEnabled
    )
);
