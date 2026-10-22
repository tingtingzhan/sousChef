


expect_no_error(
  object = nutritionlist(
    sousChef:::Nancys_creamCheese(),
    sousChef:::Philadelphia_creamCheese(),
    sousChef:::OrganicValley_creamCheese(),
    sousChef:::TraderJoes_creamCheese(),
    sousChef:::Tillamook_creamCheese()
  ) |> print()
)

expect_no_error(
  object = nutritionlist(
    sousChef:::Philadelphia_creamCheese(), 
    sousChef:::Philadelphia_creamCheeseSpread(), 
    sousChef:::Philadelphia_neufchatel(), 
    sousChef:::Philadelphia_neufchatelSpread()) |> print()
)

expect_no_error(
  object = nutritionlist(
    sousChef:::LandOLakes_whippedHeavyCream(),
    sousChef:::Lucerne_heavyCream(),
    sousChef:::Wegmans_heavyCream()
  ) |> print()
)

expect_no_error(
  object = nutritionlist(
    sousChef:::TraderJoes_goat_kefir(), 
    sousChef:::Meyenberg_goat_kefir()
  ) |> print()
)


expect_no_error(
  object = nutritionlist(
    sousChef:::Philadelphia_creamCheeseSpread(),
    sousChef:::Philadelphia_neufchatelSpread(),
    sousChef:::Wegmans_mozzarella_whole(),
    sousChef:::Wegmans_mozzarella_skim(),
    sousChef:::KraftNatural_mozzarella_fatFree()
  ) |> print()
)
