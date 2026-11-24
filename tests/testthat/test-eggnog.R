


system.file('extR', 'eggnog.R', package = 'sousChef') |>
  source()


expect_no_error(object = {
  nutritionlist(
    JeanPierre_eggnog(),
    PreppyKitchen_eggnog()
  ) |> 
    sort_by(c('sugar')) |>
    print()
})
