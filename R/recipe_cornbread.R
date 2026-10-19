


Wegmans_cornbread_recipe <- \() recipe(
  wegmans = '3044',
  flavor = 'Cornbread',
  #Wegmans Avocado Oil Cooking Spray
  grain_cup = c(IndianHead_yellow_cornmeal = 3),
  bakingPowder_Tbsp = c(Wegmans_bakingPowder = 2),
  Na2CO3_Tbsp = 1/2,
  salt_Tbsp = 1/2,
  sugar_cup = c(Domino_granulated = 2/3),
  misc = c(Wegmans_creamCorn = 418*2), #2 cans (14.75 oz each)
  dairy = c(Daisy_sourCream = 453.6),
  egg_pc = c(eggYolk = 6, eggWhite = 6),
  oil_cup = c(Wegmans_avocado_oil = 1/2)
)




BethanyWeathersby_cornbread <- \() recipe(
  flavor = 'Cornbread', author = 'Bethany Weathersby',
  sugar_cup = c(Domino_granulated = 2/3),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  dairy_cup = c(Kerrygold_butter = 1/2,
                OakFarms_buttermilk = 1), 
  NaHCO3_tsp = c(ArmHammer_NaHCO3 = 1/2), 
  grain_cup = c(Albertsons_yellow_cornmeal = 1),
  flour_cup = c(KingArthur_allPurposeFlr = 1),
  salt_tsp = 1/4,
  allrecipes = '76594/grandmothers-buttermilk-cornbread/')



bluegirl_cornbread <- \() recipe(
  flavor = 'Cornbread', author = 'bluegirl',
  flour_cup = c(KingArthur_allPurposeFlr = 1),
  grain_cup = c(Albertsons_yellow_cornmeal = 1),
  sugar_cup = c(Domino_granulated = 2/3),
  bakingPowder_tsp = c(TraderJoes_bakingPowder = 3.5),
  salt_tsp = 1,
  dairy_cup = c(Wegmans_whole_milk = 1),
  oil_cup = c(Wegmans_vegetable_oil = 1/3),
  egg_pc = c(eggYolk = 1, eggWhite = 1),
  allrecipes = '17891/golden-sweet-cornbread/')


PreppyKitchen_cornbread <- \() recipe(
  flavor = 'Cornbread',
  grain = c(Quaker_yellow_cornmeal = 255), # 1.5 cup is not 255g
  flour_cup = c(KingArthur_allPurposeFlr = 3/4),
  sugar_cup = c(Domino_granulated = 1/4), # this is not 30g
  bakingPowder_tsp = c(TraderJoes_bakingPowder = 2),
  salt_tsp = 1,
  dairy_cup = c(
    LandOLakes_butter = 1/4,
    Horizon_wholeDHA_milk = 1.5
  ),
  egg_pc = c(eggYolk = 1, eggWhite = 1),
  oil_Tbsp = c(Wesson_soy_oil = 1),
  preppykitchen = c(
    'vQM-SFKSqcg' = 'cornbread-recipe' # youtube = '16YfyByvLZg' same recipe!
  ))

Quaker_cornbread <- \() recipe(
  flavor = 'Cornbread',
  quakeroats = 'golden-cornbread',
  oil_Tbsp = c(Wegmans_vegetable_oil = 2),
  grain_cup = c(Quaker_yellow_cornmeal = 1.5),
  flour_Tbsp = c(KingArthur_allPurposeFlr = 3),
  salt_tsp = 1,
  NaHCO3_tsp = c(ArmHammer_NaHCO3 = 1),
  dairy_cup = c(OakFarms_buttermilk = 2),
  egg_pc = c(eggYolk = 1, eggWhite = 1))


JoshuaWeissman_cornbread <- \() recipe(
  flavor = 'Cornbread', 
  # 1/2 bunch fresh sage 
  # 1/2 bunch fresh thyme 
  flour_cup = c(KingArthur_allPurposeFlr = 1.25), # this is not 185g though..
  sugar_cup = c(Domino_granulated = 1/3),
  sugar = c(Domino_darkBrown = 50),
  salt = 6,
  bakingPowder_Tbsp = c(TraderJoes_bakingPowder = 1),
  grain_cup = c(Albertsons_yellow_cornmeal = 1.25), # this is not 175g
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  dairy_cup = c(Kerrygold_butter = 1/2,
                OakFarms_buttermilk = 1.5),
  joshuaweissman = c('et5OlhhD2Bo' = 'homemade-cornbread')
)




