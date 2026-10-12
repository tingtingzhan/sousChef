

expect_silent(nutritionlist(
  subtract(sousChef:::PreppyKitchen_cheesecake(), sugar = 125),
  subtract(sousChef:::Junior_original(), sugar = 12),
  subtract(sousChef:::Junior_cookbook(), sugar = 230),
  subtract(sousChef:::CheesecakeFactory_original(), sugar = 18)
))

