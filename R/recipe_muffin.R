



Brody_muffin <- \() recipe(
  author = 'Brody', flavor = 'Muffin', 
  misc = c(
    Domino_granulated = 300
  ),
  misc_pc = c(eggYolk = 2, eggWhite = 2),
  misc_cup = c(
    KingArthur_allPurposeFlr = 2.25,
    SimpleTruth_yogurt = 1,
    Wegmans_whole_milk = 2/3,
    Wegmans_vegetable_oil = 1
  ), 
  misc_tsp = c(
    NielsenMassey_Madagascar = 2,
    TraderJoes_bakingPowder = 2.5,
    Morton_salt = .5
  ))


Introvert_muffin <- \() recipe(
  author = 'Introvert', flavor = 'Muffin', 
  url = 'https://www.bakedbyanintrovert.com/basic-muffin-recipe/',
  misc = c(
    Domino_granulated = 100
  ),
  misc_tsp = c(
    TraderJoes_bakingPowder = 2,
    Morton_salt = .5
  ),
  misc_cup = c(
    KingArthur_allPurposeFlr = 2,
    Kerrygold_butter = 1/2,
    Wegmans_whole_milk = .75
  ),
  misc_pc = c(eggYolk = 2, eggWhite = 2))


CulinaryHill_muffin <- \() recipe(
  author = 'Culinary Hill', flavor = 'Muffin', 
  url = 'https://www.culinaryhill.com/blueberry-muffins/',
  misc_tsp = c(
    TraderJoes_bakingPowder = 2,
    NielsenMassey_Madagascar = 1,
    Morton_salt = 1/2
  ),
  misc_pc = c(eggYolk = 2, eggWhite = 2),
  misc_cup = c(
    KingArthur_allPurposeFlr = 2,
    Domino_granulated = 1,
    Kerrygold_butter = 1/2,
    Wegmans_whole_milk = .5
  ))


Lori_muffin <- \() recipe(
  author = 'Lori', 
  flavor = 'Muffin', 
  allrecipes = '6874/best-ever-muffins/',
  misc_Tbsp = c(
    TraderJoes_bakingPowder = 1
  ),
  misc_tsp = c(Morton_salt = 1/2),
  misc_pc = c(eggYolk = 1, eggWhite = 1),
  misc_cup = c(
    KingArthur_allPurposeFlr = 2,
    Domino_granulated = 3/4,
    Wegmans_whole_milk = 1,
    Wegmans_vegetable_oil = 1/4
  )
)



Sallys_pumpkin_muffin <- \() recipe(
  author = 'Sally\'s', flavor = 'Pumpkin Muffin',
  url = 'https://sallysbakingaddiction.com/pumpkin-muffins-recipe/',
  misc_tsp = c(
    ArmHammer_NaHCO3 = 1,
    SimplyOrganic_ginger = 1/4,
    SimplyOrganic_Ceylon_cinnamon = 1.5,
    SimplyOrganic_pumpkinSpice = 1.5,
    Morton_salt = 1/2
  ),
  misc = c(
    Libbys_pumpkin = 340
  ),
  misc_pc = c(eggYolk = 2, eggWhite = 2),
  misc_cup = c(
    KingArthur_allPurposeFlr = 1.75,
    Wegmans_whole_milk = 1/4,
    Wegmans_vegetable_oil = 1/2,
    Domino_granulated = 1/2, 
    Domino_darkBrown = 1/2
  )
)

