

system.file('extR', c('sundae.R', 'froyo.R'), package = 'sousChef') |>
  lapply(FUN = source)


expect_no_error(
  object = nutritionlist(
    xiaogaojie_icecream() -
      list(misc = c(Domino_granulated = 57)),
    happytears_icecream() -
      list(misc = c(Domino_granulated = 80))
  ) |> print()
)




expect_no_error(
  object = nutritionlist(
    cooking23s_icecream() |>
      as('nutrition') -
      list(sugar = 32),
    SweetDumpling_matcha_icecream() |>
      as('nutrition') -
      list(sugar = 63),
    cuisinart_icecream() -
      list(misc = c(Domino_granulated = 95)),
    emma_froyo() -
      list(misc = c(Domino_10x = 84)),
    Yumna_icecream() -
      list(misc = c(Domino_10x = 58))

  ) |> print()
)


