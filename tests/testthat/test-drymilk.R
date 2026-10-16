

expect_no_error(
  object = nutritionlist(
    sousChef:::Carnation_drymilk() |> as('raw.'),
    sousChef:::GreatValue_drymilk() |> as('raw.'),
    sousChef:::MembersMark_drymilk() |> as('raw.'),
    sousChef:::BobsRedMill_drymilk() |> as('raw.'),
    sousChef:::Nido_drymilk() |> as('raw.'),
    sousChef:::Horizon_whole_drymilk() |> as('raw.')
  ) |>
    print()
)
  
expect_no_error(
  object = nutritionlist(
    sousChef:::Meyenberg_goat_drymilk() |> as('raw.'),
    sousChef:::Meyenberg_goatWhole_drymilk() |> as('raw.')
  ) |>
    print()
)
