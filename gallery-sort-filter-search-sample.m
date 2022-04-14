If(
    IsBlank(Searchbox),
    If(
        varGroup = "All",
        Sort(
            Filter(
                'Project Details',
                'Project Status'.Value = varProjectStatus
            ),
            Title,
            Ascending
        ),
        Sort(
            Filter(
                'Project Details',
                'Project Status'.Value = varProjectStatus,
                Group.Value = varGroup
            ),
            Title,
            Ascending
        )
    ),
    Search(
        If(
            varGroup = "All",
            Sort(
                Filter(
                    'Project Details',
                    'Project Status'.Value = varProjectStatus
                ),
                Title,
                Ascending
            ),
            Sort(
                Filter(
                    'Project Details',
                    'Project Status'.Value = varProjectStatus,
                    Group.Value = varGroup
                ),
                Title,
                Ascending
            )
        ),
        Searchbox.Text,
        "Title","ITPMString"
    )
)
