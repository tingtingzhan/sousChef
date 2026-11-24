

library(sousChef.nutrition) # need, do not know why..

system.file('extR', 'cheesecake.R', package = 'sousChef') |>
  source()

system.file('extR', 'cheesecake.R', package = 'sousChef.nutrition') |>
  source()


expect_no_error(
  object = nutritionlist(
    PreppyKitchen_cheesecake(),
    Junior_original(),
    Junior_cookbook(),
    CheesecakeFactory_original()
  ) |> 
    sort_by('sugar') |>
    print()
)

