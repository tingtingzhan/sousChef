
expect_no_error(
  object = nutritionlist(
    sousChef:::OrganicTraditions_cacao(),
    sousChef:::KingArthur_blackCocoa(),
    sousChef:::KingArthur_Burgundy_cocoa(),
    sousChef:::KingArthur_Bensdorp_cocoa(), 
    sousChef:::Ghirardelli_sunrise_cocoa(),
    sousChef:::Ghirardelli_majestic_cocoa(),
    sousChef:::Navitas_cacao()
  ) |> print()
)
