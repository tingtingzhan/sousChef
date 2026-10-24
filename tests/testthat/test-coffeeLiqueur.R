
expect_no_error(
  object = nutritionlist(
    sousChef:::Baileys_tiramisu_liqueur(),
    sousChef:::Baileys_espresso_liqueur(),
    sousChef:::Kahlua_coffee_liqueur(),
    sousChef:::Kahlua_especial_liqueur(),
    sousChef:::CafeGranita_coffee_liqueur(),
    sousChef:::FratelliVincenzi_espresso_liqueur(),
    sousChef:::Kikisi_coffee_liqueur(),
    sousChef:::CaffeBorghetti_liqueur(),
    sousChef:::Grind_espresso_liqueur(),
    sousChef:::Sabroso_coffee_liqueur(),
    sousChef:::Patron_XO_liqueur(),
    sousChef:::Padrino_coffee_liqueur(),
    sousChef:::Amigos3_mocha_liqueur()
  ) |> 
    sort_by('alcohol') |>
    print()
)

