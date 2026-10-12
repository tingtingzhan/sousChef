


expect_no_error(
  object = nutritionlist(
    sousChef:::Rebecca_mocha(),
    sousChef:::Pillsbury_mocha(),
    sousChef:::EarlaTaylor_cocoa(),
    sousChef:::Mels_cocoa(),
    sousChef:::AmandaRettke_cocoa(),
    sousChef:::bargainmums_mocha()
  ) |> print()
) # compare powder recipes

expect_no_error(
  object = nutritionlist(
    sousChef:::Maxwell_mochaSuisse(),
    sousChef:::WilliamsSonoma_mocha(),
    sousChef:::Ghirardelli_mochaFrappe(),
    sousChef:::Godiva_milkCocoa(),
    sousChef:::Godiva_cocoa(),
    sousChef:::KingArthur_milkChocolate(),
    sousChef:::Nestle_skimCocoa(),
    sousChef:::Nestle_richChocolate(),
    sousChef:::Nestle_cocoSupreme(),
    sousChef:::SwissMiss_simplyCocoaMilk(),
    sousChef:::SwissMiss_milkCocoa(),
    sousChef:::Starbucks_cocoa(),
    sousChef:::Starbucks_cocoa_Kcup(),
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

