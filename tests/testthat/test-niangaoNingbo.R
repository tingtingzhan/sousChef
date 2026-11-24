



system.file('extR', 'niangaoNingbo.R', package = 'sousChef') |>
  source()



expect_no_error(
  object = nutritionlist(
    SoupedUp_niangaoNingbo(),
    Jenny_niangaoNingbo(),
    LuLu_niangaoNingbo()
  ) |> print()
)


