


expect_no_error(
  object = nutritionlist(
    sousChef:::Starbucks_caffeLatte(),
    sousChef:::Starbucks_mocha(),
    sousChef:::Starbucks_matchaLatte(),
    sousChef:::Starbucks_pumpkinSpiceLatte()
  ) |> 
    sort_by('sugar') |>
    print()
)


expect_no_error(
  object = nutritionlist(
    sousChef:::Starbucks_coffeeFrappuccino(),
    sousChef:::Starbucks_mochaFrappuccino(),
    sousChef:::Starbucks_pumpkinSpiceFrappuccino(),
    sousChef:::Starbucks_strawberryFrappuccino(),
    sousChef:::Starbucks_matchaFrappuccino(),
    sousChef:::StarbucksPepsiCo_coffeeFrappe(),
    sousChef:::StarbucksPepsiCo_mochaFrappe(),
    sousChef:::StarbucksPepsiCo_pumpkinSpiceFrappe(),
    sousChef:::StarbucksPepsiCo_0sugar_pumpkinSpiceFrappe()
  ) |> 
    sort_by('sugar') |>
    print()
)
