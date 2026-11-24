

system.file('extR', 'cheesecake.R', package = 'sousChef') |>
  source()

expect_no_error(
  object = (PreppyKitchen_cheesecake() - 
    list(misc = c(Domino_granulated = 125))) |>
    print()
)

