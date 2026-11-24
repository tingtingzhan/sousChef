


system.file('extR', 'udon.R', package = 'sousChef') |>
  source()

expect_no_error(
  object = nutritionlist(
    Leo_udon(),
    JustOne_udon(),
    amanda_udon()
  ) |> print()
)




