
expect_no_error(
  object = nutritionlist(
    sousChef:::Brody_muffin(),
    sousChef:::Introvert_muffin(),
    sousChef:::CulinaryHill_muffin(),
    sousChef:::Lori_muffin()
  ) |> 
    sort_by('sugar') |>
    print()
)



expect_no_error(
  object = nutritionlist(
    sousChef:::Sallys_pumpkin_muffin(), 
    sousChef:::Sallys_pumpkin_cake()
  ) |> print()
)

