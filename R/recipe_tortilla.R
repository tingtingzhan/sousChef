




  #instruction (legacy) = c(
  #  'Roll-Stack-Roll, separated by ample corn starch'
  #),
  #note (legacy) = c(
  #  'Too soft for stack-&-cook (youtube _edTKRGk38Y, t0sYquhXIFg)'
  #),
  # portion = 75 # 80g too big for 10in; 60g not easy to align in roll-stack-roll
  # machine (legacy) = list(
  #  'Le Creuset Crepe Pan 11in/28cm + KitchenAid downdraft stove top' = c(
  #    'No oil on pan',
  #    'Halfway between Medium to High, not too hot for hand+spatula'
  #  )
  #)



ViewRoad_tortilla <- \() recipe(
  flavor = 'Tortilla',
  viewsontheroad = 'fA68XXQJN4Y', 
  misc_tsp = c(
    Morton_salt = 1
  ),
  misc_cup = c(
    KingArthur_allPurposeFlr = 2.5, # Gold Medal
    Morrell_lard = 1/2
  ),
  water_cup = 1)


ViewRoad_pumpkin_tortilla <- \() recipe(
  flavor = 'Pumpkin Tortilla',
  viewsontheroad = 'hPMc1a19CsU', 
  misc_cup = c(
    KingArthur_allPurposeFlr = 1.25,
    Libbys_pumpkin = 1/3,
    Kerrygold_butter = 1/4  # butter vegetable shortening 
  ),
  misc_tsp = c(
    SimplyOrganic_pumpkinSpice = 1.5,
    NielsenMassey_Madagascar = 1,
    Morton_salt = 1/4
  ),
  misc = c(
    Domino_granulated = 12
  ),
  water_cup = 1/3)










xiaogaojie_flatbread <- \() recipe(
  flavor = 'Flatbread',
  water = c(c22 = 150+15),
  misc_tsp = c(
    Fleischmanns_instant_yeast = 1/4,
    Morton_salt = 1/4
  ),
  misc = c(
    KingArthur_allPurposeFlr = 300,
    Kerrygold_butter = 40
  ),
  xiaogaojie = '_edTKRGk38Y')




