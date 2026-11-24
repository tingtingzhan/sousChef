

system.file('extR', 'sacima.R', package = 'sousChef') |>
  source()



expect_no_error(
  object = nutritionlist(
    xiaogaojie_sacima(),
    Dad_sacima(),
    shangshi_sacima()
  ) |> print()
)


