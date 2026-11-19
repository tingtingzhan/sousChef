

expect_no_error(
  object = nutritionlist(
    PreppyKitchen_cheesecake(),
    sousChef.nutrition:::Junior_original(),
    Junior_cookbook(),
    sousChef.nutrition:::CheesecakeFactory_original()
  ) |> 
    sort_by('sugar') |>
    print()
)

