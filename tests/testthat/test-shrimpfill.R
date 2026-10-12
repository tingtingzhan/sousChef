

expect_no_error(
  object = nutritionlist(
    sousChef:::whiteSwan_shrimpfill(),
    subtract(sousChef:::Daat_shrimpfill(), vegetable = c(bambooShoot = 90))
  ) |> print()
)





