

expect_silent(nutritionlist(
  sousChef:::cooking23s_icecream() |>
    as('nutrition') |>
    subtract(sugar = 32),
  sousChef:::SweetDumpling_matcha_icecream() |>
    as('nutrition') |>
    subtract(sugar = 63),
  subtract(sousChef:::xiaogaojie_icecream(), sugar = 57),
  subtract(sousChef:::cuisinart_icecream(), sugar = 95),
  subtract(sousChef:::emma_froyo(), sugar = 84),
  subtract(sousChef:::HaagenDazs_matcha(), sugar = 15),
  subtract(sousChef:::Bassetts_matcha(), sugar = 11.7),
  subtract(sousChef:::maeda_matcha_icecream(), sugar = 9.55),
  subtract(sousChef:::Yumna_icecream(), sugar = 58),
  
  
  subtract(sousChef:::Bassetts_coffee(), sugar = 12.7),
  subtract(sousChef:::Bassetts_pumpkin(), sugar = 11),
  subtract(sousChef:::HaagenDazs_coffee(), sugar = 16)
))


