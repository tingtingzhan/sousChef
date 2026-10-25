
expect_no_error(
  object = nutritionlist(
    sousChef:::Kahlua_coffeeLiqueur(),
    sousChef:::Kahlua_especial_coffeeLiqueur(),
    sousChef:::CafeGranita_coffeeLiqueur(),
    sousChef:::FratelliVincenzi_espressoLiqueur(),
    sousChef:::Kikisi_coffeeLiqueur(),
    sousChef:::CaffeBorghetti_espressoLiqueur(),
    sousChef:::Grind_espressoLiqueur(),
    sousChef:::Sabroso_coffeeLiqueur(),
    sousChef:::Patron_XO_coffeeLiqueur(),
    sousChef:::Padrino_coffeeLiqueur(),
    sousChef:::Amigos3_coffeeLiqueur()
  ) |> 
    sort_by('alcohol') |>
    print()
)


expect_no_error(
  object = nutritionlist(
    sousChef:::Baileys_tiramisu_liqueur(),
    sousChef:::Baileys_espressoLiqueur(),
    sousChef:::Baileys_almande_liqueur(),
    sousChef:::Baileys_colada_liqueur(),
    sousChef:::Baileys_chocolatLuxe_liqueur(),
    sousChef:::Baileys_chocolate_liqueur(),
    sousChef:::Baileys_smores_liqueur(),
    sousChef:::Baileys_strawberry_liqueur(),
    sousChef:::Baileys_pumpkinSpice_liqueur()
  ) |> 
    sort_by('fat') |>
    print()
)

