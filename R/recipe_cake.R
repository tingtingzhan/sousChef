

# sponge cake
#\() recipe(
#  flour = c(Wegmans_pastryFlr = 90),
#  sugar = 20, # originally 90g
#  egg_pc = c(eggYolk = 3, eggWhite = 3),
#  dairy = c(Carnation_drymilk = 5),
#  water = 20,
#  oil = c(Wegmans_vegetable_oil = 25),
#  # 170C/30min
#  youtube = '8a2OL0wLOs4' # re-check
#)
# 





AddaPinch_chocolate_cake <- \() recipe(
  author = 'Add-A-Pinch', 
  flavor = 'Chocolate Cake',
  url = 'https://addapinch.com/the-best-chocolate-cake-recipe-ever/',
  flour = c(KingArthur_allPurposeFlr = 240), sugar = 396,
  cocoa = c(KingArthur_Bensdorp = 63), 
  coffee = c(NescafeGold_blonde = 2.3),
  bakingPowder_tsp = c(TraderJoes_bakingPowder = 2), 
  NaHCO3_tsp = c(ArmHammer_NaHCO3 = 1.5), salt = 2.8,
  dairy_cup = c(Wegmans_whole_milk = 1),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  oil = c(Wegmans_vegetable_oil = 99),
  vanilla_tsp = c(NielsenMassey_Madagascar = 2),
  water = c(c100 = 227))


PreppyKitchen_chocolate_cake <- \() recipe(
  flavor = 'Chocolate Cake',
  flour = c(KingArthur_allPurposeFlr = 240), sugar = 400,
  cocoa = c(KingArthur_Bensdorp = 50),
  bakingPowder_tsp = c(TraderJoes_bakingPowder = 1.5),
  NaHCO3_tsp = c(ArmHammer_NaHCO3 = 1.5), 
  salt_tsp = c(Morton_kosher_salt = 1/2),
  dairy_cup = c(Wegmans_whole_milk = 1), 
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  oil = c(Wegmans_vegetable_oil = 14*8), # ½ cup vegetable oil (180mL)
  vanilla_Tbsp = c(NielsenMassey_Madagascar = 1),
  water = c(c100 = 240),
  preppykitchen = c('vI5w-fK25w4' = 'ultimate-chocolate-cake'))


DessertFor2_matcha_cake <- \() recipe(
  author = 'DessertFor2', flavor = 'Matcha Cake',
  dairy = c(Kerrygold_butter = 99),
  sugar = 200,
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  vanilla_tsp = c(NielsenMassey_Madagascar = 1),
  matcha_tsp = c(Sencha_everyday_matcha = 1.5*3),
  flour = c(KingArthur_allPurposeFlr = 120),
  bakingPowder_tsp = c(TraderJoes_bakingPowder = 1),
  dairy_cup = c(OakFarms_buttermilk = 1/3),
  url = 'https://www.dessertfortwo.com/matcha-cake/')


Sallys_pumpkin_cake <- \() recipe(
  author = 'Sally\'s', flavor = 'Pumpkin Cake',
  flour = c(KingArthur_allPurposeFlr = 250),
  bakingPowder_tsp = c(TraderJoes_bakingPowder = 2),
  NaHCO3_tsp = c(ArmHammer_NaHCO3 = 1),
  salt_tsp = 1, 
  spice_tsp = c(
    SimplyOrganic_cinnamonCeylon = 1.5,
    SimplyOrganic_pumpkinSpice = 2
  ),
  oil = c(Wegmans_vegetable_oil = 240), # 1 cup (240ml) canola or vegetable oil*
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  sugar = c(
    Domino_darkBrown = 200,
    US_10x = 100
  ),
  puree = c(Libbys_pumpkin = 425), #1 (15 ounce) can pumpkin puree*
  vanilla_tsp = c(NielsenMassey_Madagascar = 1.5),
  url = 'https://sallysbakingaddiction.com/best-pumpkin-cake/#tasty-recipes-67484')



