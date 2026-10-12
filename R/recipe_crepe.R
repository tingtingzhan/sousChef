


jennyc819_crepe <- \() recipe(
  author = 'jennyc819', flavor = 'Crepe',
  allrecipes = '16383/basic-crepes/',
  flour_cup = c(KingArthur_allPurposeFlr = 1),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  dairy_cup = c(Wegmans_whole_milk = 1/2),
  water_cup = 1/2, 
  salt_tsp = 1/4,
  dairy_Tbsp = c(Kerrygold_butter = 2))


cyberchef_crepeFrench <- \() recipe(
  author = 'cyberchef', flavor = 'French Crepe',
  allrecipes = '20931/french-crepes/',
  flour_cup = c(KingArthur_allPurposeFlr = 1),
  egg_pc = c(eggYolk = 3, eggWhite = 3), # yes
  dairy_cup = c(Wegmans_whole_milk = 2),
  sugar_tsp = 1,
  salt_tsp = 1/4,
  dairy_Tbsp = c(Kerrygold_butter = 2)
)


Carina_crepe <- \() recipe(
  author = 'Carina', flavor = 'Crepe',
  youtube = 'bX6ghyT6Ig0',
  flour_cup = c(KingArthur_allPurposeFlr = 1),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  salt_tsp = 1/2,
  dairy_cup = c(Wegmans_whole_milk = 1.25),
  dairy_Tbsp = c(Kerrygold_butter = 2)
)


Aya_crepe <- \() recipe(
  author = 'Aya', flavor = 'Crepe',
  youtube = 'FfGjDceNRVo',
  flour = c(KingArthur_allPurposeFlr = 150), 
  sugar = 50, 
  salt_tsp = 1/2,
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  dairy = c(Kerrygold_butter = 50),
  dairy_cup = c(Wegmans_whole_milk = 2)
  # Dark rum: 1 Tbsp (or 2 Tbsp if you love it!)
)


Natasha_crepe <- \() recipe(
  natashaskitchen = c('uA4KRfE_MNM' = 'easy-crepe-recipe'), 
  flavor = 'Crepe',
  water = 118.3,  # ½ cup lukewarm water
  dairy_cup = c(Wegmans_whole_milk = 1),
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  dairy_Tbsp = c(Kerrygold_butter = 4),
  flour_cup = c(KingArthur_allPurposeFlr = 1),
  sugar_Tbsp = 2,
  salt_tsp = 1/2)



Daat_crepe <- \() recipe(
  flavor = 'crepe',
  flour = c(KingArthur_allPurposeFlr = 230),
  egg_pc = c(eggYolk = 3, eggWhite = 3),
  dairy = c(Kerrygold_butter = 15,
            WegmansOrganic_whole_milk = 300), # in grams in original recipe
  water = 500,
  salt = 5,
  sugar = 10,
  daatgo = '0jxG7FEdyRA')
