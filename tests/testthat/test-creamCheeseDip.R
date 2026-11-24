
system.file('extR', 'creamCheeseDip.R', package = 'sousChef') |>
  source()


expect_no_error(
  object = nutritionlist(
    bakethat_pumpkin_creamCheeseDip(),
    Julie_pumpkin_creamCheeseDip()
  ) |> 
    sort_by('sugar') |>
    print()
)



