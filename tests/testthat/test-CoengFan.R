
system.file('extR', 'CoengFan.R', package = 'sousChef') |>
  source()


expect_no_error(
  object = nutritionlist(
    Daat1_CoengFan(),
    Daat2_CoengFan()
  ) |> print()
) 
