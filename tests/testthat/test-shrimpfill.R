

expect_no_error(
  object = nutritionlist(
    whiteSwan_shrimpfill(),
    Daat_shrimpfill() -
      list(misc = c(bambooShoot = 90))
  ) |> print()
)





