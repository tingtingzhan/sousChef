

expect_no_error(
  object = nutritionlist(
    subtract(sousChef:::xiaogaojie_pasteisdenata1(), sugar = 130),
    sousChef:::xiaogaojie_pasteisdenata2(),
    subtract(sousChef:::Leites_pasteisdenata(), sugar = 200),
    subtract(sousChef:::TastingTable_pasteisdenata(), sugar = 120)
  ) |> print()
)
