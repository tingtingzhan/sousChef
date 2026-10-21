

expect_no_error(
  object = nutritionlist(
    sousChef:::xiaogaojie_pasteisdenata1() -
      list(misc = c(Domino_granulated = 130)),
    sousChef:::xiaogaojie_pasteisdenata2(),
    sousChef:::Leites_pasteisdenata() -
      list(misc = c(Domino_granulated = 200)),
    sousChef:::TastingTable_pasteisdenata() -
      list(misc = c(Domino_granulated = 120))
  ) |> print()
)
