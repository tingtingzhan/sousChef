
expect_no_error(
  object = nutritionlist(
    sousChef:::Ippodo_uji_shimizu(),
    sousChef:::Starbucks_matchaLatteMix(),
    sousChef:::TraderJoes_matchaLatte()
  ) |> print()
)# compare dry powder

expect_no_error(
  object = nutritionlist(
    sousChef:::Ippodo_sayakaLatte(),
    sousChef:::Starbucks_matchaLatte(),
    sousChef:::Starbucks_matchaFrappuccino(),
    sousChef:::Starbucks_matchaLatteMix() |> as('recipe'),
    sousChef:::Ippodo_uji_shimizu() |> as('recipe'),
    sousChef:::ItoEn_sweet_matcha() |> as('recipe')
  ) |> print()
) # compare drink

