
expect_no_error(
  object = nutritionlist(
    subtract(sousChef:::xiaogaojie_icecream(), sugar = 57),
    subtract(sousChef:::happytears_icecream(), sugar = 80)
  ) |> print()
)


