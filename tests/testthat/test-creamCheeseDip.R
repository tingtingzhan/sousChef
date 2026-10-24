
expect_no_error(
  object = nutritionlist(
    sousChef:::bakethat_pumpkin_creamCheeseDip(),
    sousChef:::Julie_pumpkin_creamCheeseDip()
  ) |> 
    sort_by('sugar') |>
    print()
)



