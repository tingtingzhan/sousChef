

expect_no_error(
  object = nutritionlist(
    sousChef:::PreppyKitchen_cheesecake(),
    sousChef:::Junior_original(),
    sousChef:::Junior_cookbook(),
    sousChef:::CheesecakeFactory_original()
  ) |> 
    sort_by('sugar') |>
    print()
)

