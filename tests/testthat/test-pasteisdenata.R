

expect_no_error(
  object = nutritionlist(
    xiaogaojie1_pasteisdenata(),
    xiaogaojie2_pasteisdenata(),
    Leites_pasteisdenata(),
    TastingTable_pasteisdenata()
  ) |> 
    sort_by('sugar') |>
    print()
)
