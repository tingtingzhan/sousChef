

expect_no_error(
  object = nutritionlist(
    sousChef:::PreppyKitchen_cheesecake() - 
      list(misc = c(Domino_granulated = 125)),
    sousChef:::Junior_original() |> 
      subtract(sugar = 12),
    sousChef:::Junior_cookbook() - 
      list(misc = c(Domino_granulated = 230)),
    sousChef:::CheesecakeFactory_original() |>
      subtract(sugar = 18)
  ) |> print()
)

