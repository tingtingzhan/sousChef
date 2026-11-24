

library(sousChef.nutrition) # need, do not know why..


system.file('extR', 'matchaLatte.R', package = 'sousChef') |>
  source()

system.file('extR', 'Starbucks.R', package = 'sousChef.nutrition') |>
  source()


expect_no_error(
  object = nutritionlist(
    Ippodo_sayakaLatte(),
    Starbucks_matchaLatte(),
    Starbucks_matchaFrappuccino(),
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

