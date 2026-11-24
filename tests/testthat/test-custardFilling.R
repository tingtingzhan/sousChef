

system.file('extR', 'custardFilling.R', package = 'sousChef') |>
  source()


expect_no_error(
  object = nutritionlist(
    Dad_custardFilling(),
    xiaogaojie_custardFilling()
  ) |> 
    sort_by('sugar') |>
    print()
)
