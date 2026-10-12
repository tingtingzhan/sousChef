expect_no_error(
  object = nutritionlist(
    sousChef:::Nabisco_waferOreo(),
    sousChef:::Oreo(),
    sousChef:::Oreo_thins(),
    sousChef:::Oreo_thins_tiramisu(),
    sousChef:::Oreo_thins_lemon(),
    sousChef:::Oreo_thins_mint()
  ) |>
    print()
)


expect_no_error(
  object = nutritionlist(
    sousChef:::fauxReo(),
    sousChef:::KingArthur_fauxReo(),
    sousChef:::Nabisco_waferOreo()
  ) |> print()
)