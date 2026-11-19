
expect_no_error(
  object = nutritionlist(
    GoodLifeEats_pumpkin_creamCheeseSpread(),
    Lynn_pumpkin_creamCheeseSpread()
  ) |> 
    sort_by('sugar') |>
    print()
)




