
expect_no_error(
  object = nutritionlist(
    Brody_muffin(),
    Introvert_muffin(),
    CulinaryHill_muffin(),
    Lori_muffin()
  ) |> 
    sort_by('sugar') |>
    print()
)



expect_no_error(
  object = nutritionlist(
    Sallys_pumpkin_muffin(), 
    Sallys_pumpkin_cake()
  ) |> print()
)

