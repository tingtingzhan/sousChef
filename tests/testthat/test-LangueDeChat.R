
expect_no_error(
  object = nutritionlist(
    sousChef:::Giallozafferano_LangueDeChat() -
      list(misc = c(Domino_10x = 45)),
    sousChef:::Ying_LangueDeChat() -
      list(misc = c(Domino_10x = 7.5)),
    sousChef:::Jadore_LangueDeChat() -
      list(misc = c(Domino_10x = 22)),
    sousChef:::cookingTree_LangueDeChat() -
      list(misc = c(Domino_10x = 55)),
    sousChef:::cookingTree_cocoa_LangueDeChat() -
      list(misc = c(Domino_10x = 28))
  ) |>
    print()
)
