
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
    sousChef:::Starbucks_matchaLatteMix() |> 
      as('raw.'),
    sousChef:::Ippodo_uji_shimizu() |> 
      as('raw.'),
    sousChef:::ItoEn_sweet_matcha() |> 
      as('raw.')
  ) |> print()
) # compare drink

