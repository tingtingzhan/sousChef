


jennyc819_crepe <- \() recipe(
  author = 'jennyc819', flavor = 'Crepe',
  allrecipes = '16383/basic-crepes/',
  misc_pc = c(egg = 2),
  misc_cup = c(
    KingArthur_allPurposeFlr = 1,
    Wegmans_whole_milk = 1/2
  ),
  water_cup = 1/2, 
  misc_tsp = c(Morton_salt = 1/4),
  misc_Tbsp = c(
    Kerrygold_butter = 2
  ))


cyberchef_crepeFrench <- \() recipe(
  author = 'cyberchef', flavor = 'French Crepe',
  allrecipes = '20931/french-crepes/',
  misc_pc = c(egg = 3), # yes
  misc_cup = c(
    KingArthur_allPurposeFlr = 1,
    Wegmans_whole_milk = 2
  ),
  misc_tsp = c(
    Morton_salt = 1/4,
    Domino_granulated = 1
  ),
  misc_Tbsp = c(
    Kerrygold_butter = 2
  )
)


Carina_crepe <- \() recipe(
  author = 'Carina', flavor = 'Crepe',
  youtube = 'bX6ghyT6Ig0',
  misc_pc = c(egg = 2),
  misc_tsp = c(Morton_salt = 1/2),
  misc_cup = c(
    KingArthur_allPurposeFlr = 1,
    Wegmans_whole_milk = 1.25
  ),
  misc_Tbsp = c(
    Kerrygold_butter = 2
  )
)


Aya_crepe <- \() recipe(
  author = 'Aya', flavor = 'Crepe',
  youtube = 'FfGjDceNRVo',
  misc = c(
    KingArthur_allPurposeFlr = 150,
    Kerrygold_butter = 50,
    Domino_granulated = 50
  ), 
  misc_tsp = c(Morton_salt = 1/2),
  misc_pc = c(egg = 4),
  misc_cup = c(
    Wegmans_whole_milk = 2
  )
  # Dark rum: 1 Tbsp (or 2 Tbsp if you love it!)
)


Natasha_crepe <- \() recipe(
  natashaskitchen = c('uA4KRfE_MNM' = 'easy-crepe-recipe'), 
  flavor = 'Crepe',
  water = 118.3,  # ½ cup lukewarm water
  misc_cup = c(
    KingArthur_allPurposeFlr = 1,
    Wegmans_whole_milk = 1
  ),
  misc_pc = c(egg = 4),
  misc_Tbsp = c(
    Kerrygold_butter = 4,
    Domino_granulated = 2
  ),
  misc_tsp = c(Morton_salt = 1/2))



Daat_crepe <- \() recipe(
  flavor = 'crepe',
  misc_pc = c(egg = 3),
  misc = c(
    KingArthur_allPurposeFlr = 230,
    Kerrygold_butter = 15,
    WegmansOrganic_whole_milk = 300,
    Domino_granulated = 10,
    Morton_salt = 5
  ),
  water = 500,
  daatgo = '0jxG7FEdyRA')
