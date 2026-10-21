
expect_no_error(
  object = nutritionlist(
    sousChef:::pumpkin_creamCheeseDip_bakethat() -
      list(misc = c(Domino_10x = 135)),
    sousChef:::pumpkin_creamCheeseDip_Julie() - 
      list(misc = c(Domino_10x = 180))
  ) |> print()
)



