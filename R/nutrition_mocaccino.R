

WilliamsSonoma_mocha_hotCocoa <- \() nutrition(
  brand = style_hyperlink(text = 'Williams Sonoma\U1f1fa\U1f1f8', url = 'https://www.williams-sonoma.com/products/williams-sonoma-mocha-hot-chocolate/') |> c(),
  usd = 28.95/340*41, date = as.Date('2026-10-24'),
  name = 'Mocha Hot Chocolate',
  servingGram = 41, servingTbsp = 5, 
  calorie = 220,
  fat = 14, cholesterol = .005, carbohydrate = 24, addedSugar = 20, protein = 2)





Maxwell_mochaSuisse <- \() nutrition(
  brand = style_hyperlink(text = 'Maxwell House\U1f1fa\U1f1f8', url = 'https://www.kraftheinz.com/maxwell-house/products/00043000004432') |> c(),
  name = 'Suisse Mocha',
  # target = 'A-12959531', usd = 3.59/117*11, # no longer available
  servingGram = 11, servingTbsp = 2, 
  calorie = 60,
  fat = 4, sodium = .05, carbohydrate = 5, protein = 1)



Ghirardelli_mochaFrappe <- \() nutrition(
  amazon = 'B00D6Q9E3E',
  webstaurant = '40866211', usd = 9.29/454*45, date = as.Date('2026-10-23'),
  ghirardelli = 'iced-blended-beverages-information',
  name = 'Mocha Frapp\u00e9',
  servingGram = 100, servingCup = (100/45)*(1/4), 
  calorie = 391.91,
  fat = 7.803, cholesterol = .991, sodium = .149358, 
  carbohydrate = 83.241, sugar = 66.780, addedSugar = 64.207, protein = 5.282)









SwissMiss_milk_hotCocoa <- \() nutrition(
  swissmiss = 'classics/milk-chocolate',
  name = 'Milk Chocolate',
  servingGram = 39, 
  calorie = 160,
  fat = 2.5, sodium = .17, carbohydrate = 34, sugar = 28, addedSugar = 23, protein = 1)




Godiva_milk_hotCocoa <- \() nutrition(
  godiva = 'milk-chocolate-hot-cocoa', usd = 18.50/11, date = as.Date('2026-10-23'),
  name = 'Milk Chocolate Hot Cocoa',
  servingGram = 34, servingTbsp = 3, 
  calorie = 140,
  fat = 2.5, sodium = .005, carbohydrate = 28, sugar = 24, addedSugar = 23, protein = 2,
  suggest = list(misc_cup = c(
    Wegmans_whole_milk = 1
  )))



Godiva_hotCocoa <- \() nutrition(
  godiva = 'dark-chocolate-hot-cocoa-canister', usd = 18.50/12, date = as.Date('2026-10-23'),
  name = 'Dark Chocolate Hot Cocoa',
  servingGram = 34, servingTbsp = 3, 
  calorie = 140,
  fat = 3.5, carbohydrate = 26, addedSugar = 20, protein = 3,
  suggest = list(misc_cup = c(
    Wegmans_whole_milk = 1
  )))






SwissMiss_simplyCocoa_milk_hotCocoa <- \() nutrition(
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


SwissMiss_simplyCocoa_hotCocoa <- \() nutrition(
  swissmiss = 'simply-cocoa/simply-cocoa-dark-chocolate',
  name = 'Simply Cocoa Dark Chocolate',
  servingGram = 27, 
  calorie = 110,
  fat = .5,
  sodium = .15, carbohydrate = 24, fiber = 2, sugar = 21, addedSugar = 20, protein = 2,
  suggest = list(
    misc_cup = c(
      WegmansOrganic_2perc_milk = 1
    )
  ))




Nestle_rich_hotCocoa <- \() nutrition(
  nestleprofessional = 'hot-cocoa/rich-chocolate-6-50-x-071-oz',
  name = 'Rich Chocolate',
  servingGram = 20, 
  calorie = 80,
  fat = 2, sodium = .19, carbohydrate = 16, sugar = 12, addedSugar = 10,
  suggest = list(
    misc_floz = c(Wegmans_whole_milk = 6)
  ))



Nestle_skim_hotCocoa <- \() nutrition(
  nestleprofessional = 'nestle-hot-cocoa/ns-ff-choc-6-30-x-028-oz',
  name = 'Skim Hot Cocoa',
  servingGram = 8, 
  calorie = 25,
  sodium = .135, carbohydrate = 5, sugar = 4, protein = 1,
  suggest = list(
    misc_floz = c(Wegmans_whole_milk = 6)
  ))



KingArthur_milk_hotCocoa <- \() nutrition(
  kingarthur = '212571',
  name = 'Milk Hot Chocolate',
  usd = 12.95/510*28,
  servingGram = 28, servingTbsp = 4,
  calorie = 110,
  fat = 1, sodium = .1, carbohydrate = 22, sugar = 21, addedSugar = 17, protein = 3)




Nestle_supreme_hotCocoa <- \() nutrition(
  # nestle = '11002829', # no longer offered
  name = 'Coco Supreme',
  servingGram = 33, fat = 2, sodium = .23, carbohydrate = 27, sugar = 24, addedSugar = 20, protein = 1)






# https://www.ghirardelli.com/chocolate-mocha-premium-hot-cocoa-61701cs
# https://www.ghirardelli.com/double-chocolate-hot-cocoa-mix-6-bags-61699cs
# https://www.ghirardelli.com/hot-cocoa-pouch-just-add-water-62012cs




