

expect_no_error(
  object = nutritionlist(
    sousChef:::xiaogaojie1_pasteisdenata() -
      list(misc = c(Domino_granulated = 130)),
    sousChef:::xiaogaojie2_pasteisdenata(),
    sousChef:::Leites_pasteisdenata() -
      list(misc = c(Domino_granulated = 200)),
    sousChef:::TastingTable_pasteisdenata() -
      list(misc = c(Domino_granulated = 120))
  ) |> print()
)
