
expect_no_error(
  object = nutritionlist(
    sousChef:::Rebecca_mochaMix(),
    sousChef:::Pillsbury_mochaMix(),
    sousChef:::EarlaTaylor_cocoaMix(),
    sousChef:::Mels_cocoaMix(),
    sousChef:::AmandaRettke_cocoaMix(),
    sousChef:::bargainmums_mochaMix()
  ) |> 
    sort_by('sugar') |>
    print()
) # compare powder recipes

expect_no_error(
  object = nutritionlist(
    sousChef:::Maxwell_mochaSuisse(),
    sousChef:::WilliamsSonoma_mocha_hotCocoa(),
    sousChef:::Ghirardelli_mochaFrappe(),
    sousChef:::Godiva_milk_hotCocoa(),
    sousChef:::Godiva_hotCocoa(),
    sousChef:::KingArthur_milk_hotCocoa(),
    sousChef:::Nestle_skim_hotCocoa(),
    sousChef:::Nestle_rich_hotCocoa(),
    sousChef:::Nestle_supreme_hotCocoa(),
    sousChef:::SwissMiss_simplyCocoa_milk_hotCocoa(),
    sousChef:::SwissMiss_milk_hotCocoa(),
    sousChef:::Starbucks_hotCocoa(),
    sousChef:::Starbucks_Kcup_hotCocoa(),
    sousChef:::Starbucks_crema_chocolate()
  ) |> print()
) # compare commercial powders



expect_no_error(
  object = nutritionlist(
    sousChef:::Starbucks_mocha(),
    sousChef:::Starbucks_mochaFrappuccino(),
    sousChef:::Starbucks_mochaFrappuccino_bottle()
  ) |> print()
) # compare drink

