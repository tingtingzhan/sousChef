


system.file('extR', 'shrimpfill.R', package = 'sousChef') |>
  source()

expect_no_error(object = {
  whiteSwan_shrimpfill() |>
    print()
})

expect_no_error(object = {
  Daat_shrimpfill() |>
    print()
})


if (FALSE) {
  expect_no_error(object = {
    nutritionlist(
      whiteSwan_shrimpfill(),
      Daat_shrimpfill() -
        list(misc = c(bambooShoot = 90))
    ) |> # a bug
      print()
  })
  
}





