

expect_no_error(
  object = nutritionlist(
    sousChef.nutrition:::Carnation_drymilk() |> 
      as('raw.'),
    sousChef.nutrition:::KingArthur_baker_drymilk() |>
      as('raw.'),
    sousChef.nutrition:::KingArthur_drywholemilk() |>
      as('raw.'),
    sousChef.nutrition:::GreatValue_drymilk() |> 
      as('raw.'),
    sousChef.nutrition:::MembersMark_drymilk() |> 
      as('raw.'),
    sousChef.nutrition:::BobsRedMill_drymilk() |> 
      as('raw.'),
    sousChef.nutrition:::Nido_drywholemilk() |> 
      as('raw.'),
    sousChef.nutrition:::Horizon_drywholemilk() |> 
      as('raw.')
  ) |> print()
)
  
expect_no_error(
  object = nutritionlist(
    sousChef.nutrition:::Meyenberg_goat_drymilk() |> 
      as('raw.'),
    sousChef.nutrition:::Meyenberg_goat_drywholemilk() |> 
      as('raw.')
  ) |> print()
)
