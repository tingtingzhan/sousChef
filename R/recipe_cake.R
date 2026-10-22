

# sponge cake
#\() recipe(
#  misc = c(
#   Wegmans_pastryFlr = 90,
#   Wegmans_vegetable_oil = 25,
#  Carnation_drymilk = 5,
#  Domino_granulated = 20  # originally 90g
#  ),
#  misc_pc = c(eggYolk = 3, eggWhite = 3),
#  water = 20,
#  # 170C/30min
#  youtube = '8a2OL0wLOs4' # re-check
#)
# 





AddaPinch_chocolate_cake <- \() recipe(
  author = 'Add-A-Pinch', 
  flavor = 'Chocolate Cake',
  url = 'https://addapinch.com/the-best-chocolate-cake-recipe-ever/',
  misc_tsp = c(
    NescafeGold_blonde_coffee = 1,
    TraderJoes_bakingPowder = 2,
    ArmHammer_NaHCO3 = 1.5,
    NielsenMassey_Madagascar = 2, 
    Morton_kosher_salt = 1/2
  ),
  misc_cup = c(
    KingArthur_allPurposeFlr = 2,
    KingArthur_Bensdorp_cocoa = 3/4,
    Domino_granulated = 2,
    Wegmans_whole_milk = 1,
    Wegmans_vegetable_oil = 1/2
  ),
  misc_pc = c(eggYolk = 2, eggWhite = 2),
  water = c(c100 = 227))


PreppyKitchen_chocolate_cake <- \() recipe(
  flavor = 'Chocolate Cake',
  misc = c(
    KingArthur_allPurposeFlr = 240,
    KingArthur_Bensdorp_cocoa = 50, 
    Domino_granulated = 400
  ),
  misc_tsp = c(
    TraderJoes_bakingPowder = 1.5,
    ArmHammer_NaHCO3 = 1.5,
    Morton_kosher_salt = 1/2
  ),
  misc_cup = c(
    Wegmans_whole_milk = 1,
    Wegmans_vegetable_oil = 1/2
  ), 
  misc_pc = c(eggYolk = 2, eggWhite = 2),
  misc_Tbsp = c(
    NielsenMassey_Madagascar = 1
  ),
  water = c(c100 = 240),
  preppykitchen = c('vI5w-fK25w4' = 'ultimate-chocolate-cake'))


DessertFor2_matcha_cake <- \() recipe(
  author = 'DessertFor2', flavor = 'Matcha Cake',
  misc = c(
    KingArthur_allPurposeFlr = 120,
    Kerrygold_butter = 99,
    Domino_granulated = 200
  ),
  misc_pc = c(eggYolk = 2, eggWhite = 2),
  misc_tsp = c(
    NielsenMassey_Madagascar = 1,
    Sencha_everyday_matcha = 1.5*3,
    TraderJoes_bakingPowder = 1
  ),
  misc_cup = c(
    OakFarms_buttermilk = 1/3
  ),
  url = 'https://www.dessertfortwo.com/matcha-cake/')


Sallys_pumpkin_cake <- \() recipe(
  author = 'Sally\'s', flavor = 'Pumpkin Cake',
  misc_tsp = c(
    TraderJoes_bakingPowder = 2,
    ArmHammer_NaHCO3 = 1,
    SimplyOrganic_Ceylon_cinnamon = 1.5,
    SimplyOrganic_pumpkinSpice = 2,
    NielsenMassey_Madagascar = 1.5,
    Morton_salt = 1
  ), 
  misc_cup = c(
    Wegmans_vegetable_oil = 1
  ),
  misc_pc = c(eggYolk = 4, eggWhite = 4),
  misc = c(
    KingArthur_allPurposeFlr = 250,
    Libbys_pumpkin = 425, #1 (15 ounce) can
    Domino_darkBrown = 200,
    US_10x = 100
  ),
  url = 'https://sallysbakingaddiction.com/best-pumpkin-cake/#tasty-recipes-67484')



