
expect_no_error(
  object = nutritionlist(
    sousChef:::Dad_custardFilling(),
    sousChef:::xiaogaojie_custardFilling()
  ) |> 
    sort_by('sugar') |>
    print()
)
