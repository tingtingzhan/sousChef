
expect_no_error(
  object = (sousChef:::PreppyKitchen_cheesecake() - 
    list(misc = c(Domino_granulated = 125))) |>
    print()
)

expect_no_error(
  object = (sousChef:::Junior_original() -
    list(sugar = 12)) |>
    print()
)