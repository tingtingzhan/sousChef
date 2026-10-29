
expect_no_error(
  object = nutritionlist(
    sousChef:::Giallozafferano_LangueDeChat(),
    sousChef:::Ying_LangueDeChat(),
    sousChef:::Jadore_LangueDeChat(),
    sousChef:::cookingTree_LangueDeChat(),
    sousChef:::cookingTree_cocoa_LangueDeChat()
  ) |>
    print()
)
