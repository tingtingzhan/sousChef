
expect_no_error(
  object = nutritionlist(
    sousChef:::xiaogaojie_icecream() -
      list(misc = c(Domino_granulated = 57)),
    sousChef:::happytears_icecream() -
      list(misc = c(Domino_granulated = 80))
  ) |> print()
)




expect_no_error(
  object = nutritionlist(
    sousChef:::cooking23s_icecream() |>
      as('nutrition') -
      list(sugar = 32),
    sousChef:::SweetDumpling_matcha_icecream() |>
      as('nutrition') -
      list(sugar = 63),
    sousChef:::cuisinart_icecream() -
      list(misc = c(Domino_granulated = 95)),
    sousChef:::emma_froyo() -
      list(misc = c(Domino_10x = 84)),
    sousChef:::Yumna_icecream() -
      list(misc = c(Domino_10x = 58))

  ) |> print()
)


