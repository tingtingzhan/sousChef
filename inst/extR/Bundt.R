

  #instruction (legacy) = c(
  #  'Grease a Bundt pan with vegetable oil', # Dust with flavored powder (if applicable) or flour
  #  'KitchenAid stand mixer: whisk together all liquid',
  #  'Manually whisk together dry ingredients',
  #  'Manually combine liquid and dry mixture. Rest for 30min', 
  #  'Pour into Bundt pan (slightly dry wide ribbon)', 
  #  # 'Robam CT763: bake (foil cover) at 350\u00b0F for 55min', # coloring too dark
  #  'Robam CT763: Steam Bake (foil cover) at 320\u00b0F for 55min',
  #  'Let cool in the pan for 20min. Invert onto a wire rack and cool completely'
  #),
  #note (legacy) = c(
  #  'One (1) recipe good for 6-cup Nordic Ware Bundt pan'
  #)





PreppyKitchen_chocolate_Bundt <- \() recipe(
  water = c(c40 = 360),
  misc_tsp = c(
    NielsenMassey_Madagascar = 1,
    ArmHammer_NaHCO3 = 2.5,
    Morton_salt = 1
  ),
  misc = c(
    Kerrygold_butter = 213
  ),
  misc_cup = c(
    KingArthur_allPurposeFlr = 3.5,
    Wegmans_vegetable_oil = 1/2,
    Daisy_sourCream = 1,
    Ghirardelli_cocoa = 1.25,
    Domino_granulated = 2.5
  ),
  misc_pc = c(egg = 4),
  preppykitchen = c('_MqLza3bgbw' = 'chocolate-bundt-cake'))



PreppyKitchen_Bundt <- \() recipe(
  misc = c(
    KingArthur_allPurposeFlr = 360
  ),
  misc_tsp = c(
    TraderJoes_bakingPowder = 1,
    ArmHammer_NaHCO3 = .5,
    Morton_salt = 1.5
  ),
  misc_brick = c(
    Philadelphia_creamCheese = 1,
    Kerrygold_butter = 1
  ),
  misc_pc = c(egg = 6),
  misc_Tbsp = c(
    NielsenMassey_vanilla = 1
  ),
  misc_cup = c(
    Domino_granulated = 2,
    Wegmans_whole_milk = 1
  ),
  preppykitchen = c('x2W3j23xSKs' = 'vanilla-bundt-cake'))
    


