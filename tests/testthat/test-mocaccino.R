


system.file('extR', 'mochaMix.R', package = 'sousChef') |>
  source()


expect_no_error(
  object = nutritionlist(
    Rebecca_mochaMix(),
    Pillsbury_mochaMix(),
    EarlaTaylor_cocoaMix(),
    Mels_cocoaMix(),
    AmandaRettke_cocoaMix(),
    bargainmums_mochaMix()
  ) |> 
    sort_by('sugar') |>
    print()
) # compare powder recipes


