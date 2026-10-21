

expect_no_error(
  object = nutritionlist(
    sousChef:::whiteSwan_shrimpfill(),
    sousChef:::Daat_shrimpfill() -
      list(misc = c(bambooShoot = 90))
  ) |> print()
)





