
expect_no_error(
  object = nutritionlist(
    sousChef:::Brody_muffin() -
      list(misc = c(Domino_granulated = 237)),
    sousChef:::Introvert_muffin() -
      list(misc = c(Domino_granulated = 50)),
    sousChef:::CulinaryHill_muffin() -
      list(misc = c(Domino_granulated = 155)),
    sousChef:::Lori_muffin() -
      list(misc = c(Domino_granulated = 110))
  ) |> print()
)



expect_no_error(
  object = nutritionlist(
    sousChef:::Sallys_pumpkin_muffin(), 
    sousChef:::Sallys_pumpkin_cake()
  ) |> print()
)

