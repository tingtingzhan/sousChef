
system.file('extR', 'fauxReo.R', package = 'sousChef') |>
  source()

expect_no_error(
  object = nutritionlist(
    fauxReo(),
    KingArthur_fauxReo(),
    sousChef.nutrition:::Nabisco_waferOreo()
  ) |> print()
)
