expect_no_error(
  object = nutritionlist(
    sousChef:::JeanPierre_eggnog() -
      list(misc = c(Domino_granulated = 25)),
    sousChef:::PreppyKitchen_eggnog() -
      list(misc = c(Domino_granulated = 120))
  ) |> print()
)
