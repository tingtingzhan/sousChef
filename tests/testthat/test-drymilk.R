

expect_no_error(
  object = nutritionlist(
    sousChef:::Carnation_drymilk() |> as('recipe'),
    sousChef:::GreatValue_drymilk() |> as('recipe'),
    sousChef:::MembersMark_drymilk() |> as('recipe'),
    sousChef:::BobsRedMill_drymilk() |> as('recipe'),
    sousChef:::Nido_drymilk() |> as('recipe'),
    sousChef:::Horizon_whole_drymilk() |> as('recipe')
  ) |>
    print()
)
  
expect_no_error(
  object = nutritionlist(
    sousChef:::Meyenberg_goat_drymilk() |> as('recipe'),
    sousChef:::Meyenberg_goatWhole_drymilk() |> as('recipe')
  ) |>
    print()
)
