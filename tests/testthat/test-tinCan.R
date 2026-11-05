



expect_no_error(
  object = {
    nutritionlist(
      sousChef:::Wegmans_pineapple(), 
      sousChef:::Libbys_pineapple(), 
      sousChef:::Dole_pineapple()
    ) |> 
      sort_by('sugar') |>
      print()
  }
)
