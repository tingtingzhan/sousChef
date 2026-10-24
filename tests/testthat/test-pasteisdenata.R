

expect_no_error(
  object = nutritionlist(
    sousChef:::xiaogaojie1_pasteisdenata(),
    sousChef:::xiaogaojie2_pasteisdenata(),
    sousChef:::Leites_pasteisdenata(),
    sousChef:::TastingTable_pasteisdenata()
  ) |> 
    sort_by('sugar') |>
    print()
)
