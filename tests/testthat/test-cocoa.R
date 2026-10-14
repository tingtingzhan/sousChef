
expect_no_error(
  object = nutritionlist(
    sousChef:::OrganicTraditions_cacao(),
    sousChef:::KingArthur_blackCocoa(),
    sousChef:::KingArthur_Burgundy(),
    sousChef:::KingArthur_Bensdorp(), 
    sousChef:::Ghirardelli_sunrise(),
    sousChef:::Ghirardelli_majestic(),
    sousChef:::Navitas_cacao()
  ) |> print()
)
