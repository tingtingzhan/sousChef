expect_no_error(
  object = nutritionlist(
    JeanPierre_eggnog() -
      list(misc = c(Domino_granulated = 25)),
    PreppyKitchen_eggnog() -
      list(misc = c(Domino_granulated = 120))
  ) |> print()
)
