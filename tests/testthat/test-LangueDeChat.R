
expect_no_error(
  object = nutritionlist(
    subtract(sousChef:::Giallozafferano_LangueDeChat(), sugar = 45),
    subtract(sousChef:::Ying_LangueDeChat(), sugar = 7.5),
    subtract(sousChef:::Jadore_LangueDeChat(), sugar = 22),
    subtract(sousChef:::cookingTree_LangueDeChat(), sugar = 55),
    subtract(sousChef:::cookingTree_cocoa_LangueDeChat(), sugar = 28)
  ) |>
    print()
)
