
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


