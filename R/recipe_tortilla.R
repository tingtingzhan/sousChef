




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
  flour = c(KingArthur_allPurposeFlr = 2.5 * 120),
  salt_tsp = 1,
  fat_cup = c(Morrell_lard = 1/2),
  water_cup = 1)


ViewRoad_pumpkin_tortilla <- \() recipe(
  flavor = 'Pumpkin Tortilla',
  viewsontheroad = 'hPMc1a19CsU', 
  flour_cup = c(KingArthur_allPurposeFlr = 1.25),
  puree_cup = c(Libbys_pumpkin = 1/3),
  dairy_cup = c(Kerrygold_butter = 1/4), # butter vegetable shortening 
  salt_tsp = 1/4,
  spice_tsp = c(SimplyOrganic_pumpkinSpice = 1.5),
  sugar = 12,
  vanilla_tsp = c(NielsenMassey_Madagascar = 1),
  water_cup = 1/3)










xiaogaojie_flatbread <- \() recipe(
  flavor = 'Flatbread',
  flour = c(KingArthur_allPurposeFlr = 300),
  water = c(c22 = 150+15),
  yeast_tsp = c(Fleischmanns_instant = 1/4),
  dairy = c(Kerrygold_butter = 40),
  salt_tsp = 1/4,
  xiaogaojie = '_edTKRGk38Y')




