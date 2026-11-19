

expect_no_error(
  object = nutritionlist(
    sousChef:::Ippodo_sayakaLatte(),
    sousChef.nutrition:::Starbucks_matchaLatte(),
    sousChef.nutrition:::Starbucks_matchaFrappuccino(),
    sousChef.nutrition:::Starbucks_matchaLatteMix() |> 
      as('raw.'),
    sousChef.nutrition:::Ippodo_uji_shimizu() |> 
      as('raw.'),
    sousChef.nutrition:::ItoEn_sweet_matcha() |> 
      as('raw.')
  ) |> 
    sort_by('sugar') |>
    print()
) # compare drink

