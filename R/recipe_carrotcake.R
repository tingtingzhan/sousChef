

AmishHeritage_carrotcake <- \() recipe(
  author = 'Amish Heritage', flavor = 'Carrot Cake',
  url = 'https://amish-heritage.org/carrot-cake-with-pineapple-and-pecans-amish-recipe/',
  misc_cup = c(
    KingArthur_allPurposeFlr = 2,
    Domino_granulated = 1,
    Domino_darkBrown = 1,
    Wegmans_vegetable_oil = 1.5
  ),
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  fruit = c(carrot = 300, 
            pecan = 50, walnut = 50,
            Dole_pineapple = 100), 
  # 2.5 cup shredded carrots
  # 1 cup crushed pineapple, drained
  # ¾ c. chopped pecans or walnuts (optional)
  bakingPowder_tsp = c(TraderJoes_bakingPowder = 2),
  NaHCO3_tsp = c(ArmHammer_NaHCO3 = 1.5),
  salt_tsp = 1,
  spice_tsp = c(SimplyOrganic_Ceylon_cinnamon = 2)
)
