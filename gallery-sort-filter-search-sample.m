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


// Another example
If(
    IsBlank(Searchbox),
    If(
        varQuestionFilter = "All",
        Sort(
            'Knowledge Base Questions',
            Question,
            Ascending
        ),
         Sort(
            Filter(
                'Knowledge Base Questions',
                Topic.Value = varQuestionFilter
            ),
            Question,
            Ascending
        )
    ),
    Search(
        If(
        varQuestionFilter = "All",
        Sort(
            'Knowledge Base Questions',
            Question,
            Ascending
        ),
         Sort(
            Filter(
                'Knowledge Base Questions',
                Topic.Value = varQuestionFilter
            ),
            Question,
            Ascending
            )
        ),
        Searchbox.Text,
        "Title"
    )
)
