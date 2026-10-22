

WilliamsSonoma_mocha <- \() nutrition(
  brand = style_hyperlink(text = 'Williams Sonoma\U1f1fa\U1f1f8', url = 'https://www.williams-sonoma.com/products/williams-sonoma-mocha-hot-chocolate/') |> c(),
  name = 'Mocha Hot Chocolate',
  servingGram = 41, servingTbsp = 5, 
  usd = 24.95/340*41,
  calorie = 220,
  fat = 14, cholesterol = .005, carbohydrate = 24, addedSugar = 20, protein = 2)





Maxwell_mochaSuisse <- \() nutrition(
  brand = style_hyperlink(text = 'Maxwell House\U1f1fa\U1f1f8', url = 'https://www.kraftheinz.com/maxwell-house/products/00043000004432') |> c(),
  name = 'Suisse Mocha',
  target = 'A-12959531', usd = 3.59/117*11,
  servingGram = 11, servingTbsp = 2, 
  calorie = 60,
  fat = 4, sodium = .05, carbohydrate = 5, protein = 1)



Ghirardelli_mochaFrappe <- \() nutrition(
  amazon = 'B00D6Q9E3E',
  webstaurant = '40866211',
  ghirardelli = 'iced-blended-beverages-information',
  name = 'Mocha Frapp\u00e9',
  usd = 21.49/1420*45,
  servingGram = 100, servingCup = (100/45)*(1/4), 
  calorie = 391.91,
  fat = 7.803, cholesterol = .991, sodium = .149358, 
  carbohydrate = 83.241, sugar = 66.780, addedSugar = 64.207, protein = 5.282)









SwissMiss_milkCocoa <- \() nutrition(
  swissmiss = 'classics/milk-chocolate',
  name = 'Milk Chocolate',
  servingGram = 39, 
  calorie = 160,
  fat = 2.5, sodium = .17, carbohydrate = 34, sugar = 28, addedSugar = 23, protein = 1)




Godiva_milkCocoa <- \() nutrition(
  godiva = '16024', name = 'Milk Chocolate Hot Cocoa',
  servingGram = 34, servingTbsp = 3, 
  calorie = 140,
  fat = 2.5, sodium = .005, carbohydrate = 28, sugar = 24, addedSugar = 23, protein = 2,
  suggest = list(misc_cup = c(
    Wegmans_whole_milk = 1
  )))



Godiva_cocoa <- \() nutrition(
  godiva = '16022', name = 'Dark Chocolate Hot Cocoa',
  servingGram = 34, servingTbsp = 3, 
  calorie = 140,
  fat = 3.5, carbohydrate = 26, addedSugar = 20, protein = 3,
  suggest = list(misc_cup = c(
    Wegmans_whole_milk = 1
  )))






SwissMiss_simplyCocoaMilk <- \() nutrition(
  swissmiss = 'simply-cocoa/simply-cocoa-milk-chocolate',
  name = 'Simply Cocoa Milk Chocolate',
  servingGram = 24, 
  calorie = 100,
  sodium = .15, carbohydrate = 22, addedSugar = 20, protein = 1,
  suggest = list(
    misc_cup = c(
      WegmansOrganic_2perc_milk = 1
    )
  ))





Nestle_richChocolate <- \() nutrition(
  url = 'https://www.nestleprofessional.us/hot-cocoa/rich-chocolate-6-50-x-071-oz',
  brand = 'Nestl\u00e9\U1f1e8\U1f1ed', name = 'Rich Chocolate',
  servingGram = 20, 
  calorie = 80,
  fat = 2, sodium = .19, carbohydrate = 16, sugar = 12, addedSugar = 10,
  suggest = list(
    #6 fl. oz. hot water or milk
    water_cup = c(c80 = 6/8)
  ))



Nestle_skimCocoa <- \() nutrition(
  nestle = '12240821',
  name = 'Skim Hot Cocoa',
  servingGram = 8, 
  calorie = 25,
  sodium = .135, carbohydrate = 5, sugar = 4, protein = 1,
  suggest = list(
    # 6 fl. oz. hot water or milk
    water_cup = c(c80 = 6/8)
  ))



KingArthur_milkChocolate <- \() nutrition(
  kingarthur = '212571',
  name = 'Milk Hot Chocolate',
  usd = 12.95/510*28,
  servingGram = 28, servingTbsp = 4,
  calorie = 110,
  fat = 1, sodium = .1, carbohydrate = 22, sugar = 21, addedSugar = 17, protein = 3)




Nestle_cocoSupreme <- \() nutrition(
  nestle = '11002829',
  name = 'Coco Supreme',
  servingGram = 33, fat = 2, sodium = .23, carbohydrate = 27, sugar = 24, addedSugar = 20, protein = 1)






# https://www.ghirardelli.com/chocolate-mocha-premium-hot-cocoa-61701cs
# https://www.ghirardelli.com/double-chocolate-hot-cocoa-mix-6-bags-61699cs
# https://www.ghirardelli.com/hot-cocoa-pouch-just-add-water-62012cs




