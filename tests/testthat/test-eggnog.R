expect_no_error(
  object = nutritionlist(
    subtract(sousChef:::JeanPierre_eggnog(), sugar = 25),
    subtract(sousChef:::PreppyKitchen_eggnog(), sugar = 130)
  ) |> print()
)
