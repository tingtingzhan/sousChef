


expect_silent(nutritionlist(
  sousChef:::Nancys_creamCheese(),
  sousChef:::Philadelphia_creamCheese(),
  sousChef:::OrganicValley_creamCheese(),
  sousChef:::TraderJoes_creamCheese(),
  sousChef:::Tillamook_creamCheese()
))

expect_silent(nutritionlist(
  sousChef:::Philadelphia_creamCheese(), 
  sousChef:::Philadelphia_creamCheeseSpread(), 
  sousChef:::PhiladelphiaNeufchatel_creamCheese(), 
  sousChef:::PhiladelphiaNeufchatel_creamCheeseSpread())
)

expect_silent(nutritionlist(
  sousChef:::LandOLakes_whippedHeavyCream(),
  sousChef:::Lucerne_heavyCream(),
  sousChef:::Wegmans_heavyCream())
)

expect_silent(nutritionlist(
  sousChef:::TraderJoes_goat_kefir(), 
  sousChef:::Meyenberg_goat_kefir())
)

