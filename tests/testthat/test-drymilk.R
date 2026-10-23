

expect_no_error(
  object = nutritionlist(
    sousChef:::Carnation_drymilk() |> 
      as('raw.'),
    sousChef:::GreatValue_drymilk() |> 
      as('raw.'),
    sousChef:::MembersMark_drymilk() |> 
      as('raw.'),
    sousChef:::BobsRedMill_drymilk() |> 
      as('raw.'),
    sousChef:::Nido_drywholemilk() |> 
      as('raw.'),
    sousChef:::Horizon_drywholemilk() |> 
      as('raw.')
  ) |> print()
)
  
expect_no_error(
  object = nutritionlist(
    sousChef:::Meyenberg_goat_drymilk() |> 
      as('raw.'),
    sousChef:::Meyenberg_goat_drywholemilk() |> 
      as('raw.')
  ) |> print()
)
