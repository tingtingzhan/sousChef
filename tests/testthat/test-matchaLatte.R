

expect_no_error(
  object = nutritionlist(
    sousChef:::Ippodo_sayakaLatte(),
    sousChef.nutrition:::Starbucks_matchaLatte(),
    sousChef.nutrition:::Starbucks_matchaFrappuccino(),
    sousChef.nutrition:::Starbucks_matchaLatteMix() |> 
      as('ingredient'),
    sousChef.nutrition:::Ippodo_uji_shimizu() |> 
      as('ingredient'),
    sousChef.nutrition:::ItoEn_sweet_matcha() |> 
      as('ingredient')
  ) |> 
    sort_by('sugar') |>
    print()
) # compare drink

