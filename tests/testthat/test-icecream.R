
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
      list(misc = c(Domino_10x = 58)),
    
    
    sousChef:::Bassetts_coffee() - 
      list(sugar = 12.7),
    sousChef:::Bassetts_pumpkin() - 
      list(sugar = 11),
    sousChef:::HaagenDazs_coffee() - 
      list(sugar = 16),
    sousChef:::Bassetts_matcha() - 
      list(sugar = 11.7),
    sousChef:::HaagenDazs_matcha() - 
      list(sugar = 15),
    sousChef:::maeda_matcha_icecream() - 
      list(sugar = 9.55)
  ) |> print()
)


