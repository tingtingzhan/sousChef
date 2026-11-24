

system.file('extR', 'wrapper.R', package = 'sousChef') |>
  source()

expect_no_error(
  object = nutritionlist(
    PinNuo_wonton(),
    PinNuo_gyoza(),
    xiaogaojie1_gyoza(),
    xiaogaojie2_gyoza()
  ) |> print()
)


