
expect_no_error(
  object = nutritionlist(
    subtract(sousChef:::Brody_muffin(), sugar = 237),
    subtract(sousChef:::Introvert_muffin(), sugar = 50),
    subtract(sousChef:::CulinaryHill_muffin(), sugar = 155),
    subtract(sousChef:::Lori_muffin(), sugar = 110)
  ) |> print()
)


