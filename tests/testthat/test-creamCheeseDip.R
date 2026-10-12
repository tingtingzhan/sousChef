
expect_no_error(
  object = nutritionlist(
    subtract(sousChef:::pumpkin_creamCheeseDip_bakethat(), sugar = 135),
    subtract(sousChef:::pumpkin_creamCheeseDip_Julie(), sugar = 180)
  ) |> print()
)



