


# how is this website different from https://athome.starbucks.com ?
# https://www.starbucksathome.com/products/starbucks-caffe-latte-premium-instant-coffees
# https://www.starbucksathome.com/products/starbucks-vanilla-latte-premium-instant-coffees


Starbucks_pumpkinSpiceLatte <- \() nutrition(
  starbucks_hot = '418',
  name = 'Pumpkin Spice Latte',
  servingGram = 470, serving_floz = 16,
  #caffeine 150 mg*
  calorie = 390, 
  fat = 14, cholesterol = .05, sodium = .23, carbohydrate = 52, sugar = 50, protein = 14)


Starbucks_pumpkinSpiceFrappuccino <- \() nutrition(
  starbucks_iced = '427',
  name = 'Pumpkin Spice Frappuccino',
  servingGram = 470, serving_floz = 16,
  #caffeine 100 mg*
  calorie = 420, 
  fat = 15, cholesterol = .05, sodium = .28, carbohydrate = 66, sugar = 65, protein = 6)


Starbucks_strawberryFrappuccino <- \() nutrition(
  starbucks_iced = '2122724',
  name = 'Strawberry Frappuccino',
  servingGram = 470, serving_floz = 16,
  calorie = 370,
  fat = 16, cholesterol = .05, sodium = .24,
  carbohydrate = 51, sugar = 51, protein = 5)


Starbucks_caffeLatte <- \() nutrition(
  starbucks_hot = '407',
  name = 'Caff\u00e8 Latte',
  servingGram = 470, serving_floz = 16,
  #caffeine 150 mg*
  calorie = 190, 
  fat = 7, cholesterol = .030, sodium = .170, carbohydrate = 19, sugar = 18, protein = 13)


Starbucks_coffeeFrappuccino_bottle <- \() nutrition(
  name = 'Coffee Frappuccino',
  brand = 'Starbucks (Bottled)',
  walmart = '14532479', target = 'A-12959301',
  serving_floz = 13.7, servingGram = 405, # use water density
  calorie = 300,
  fat = 4.5, cholesterol = .02, sodium = .14, carbohydrate = 54, sugar = 47, addedSugar = 34, protein = 9)



Starbucks_matchaLatte <- \() nutrition(
  starbucks_hot = '468',
  name = 'Matcha\U1f375 Latte',
  servingGram = 450, serving_floz = 16,
  usd = 4.95, # Spring 2024
  calorie = 240,
  fat = 7, cholesterol = .025, sodium = .16, sugar = 32, protein = 12)


Starbucks_matchaFrappuccino <- \() nutrition(
  starbucks_iced = '439',
  name = 'Matcha\U1f375 Frappuccino',
  servingGram = 450, serving_floz = 16,
  usd = 5.45, # Spring 2024
  calorie = 420,
  fat = 16, cholesterol = .050, sodium = .240, carbohydrate = 62, sugar = 61, protein = 6)


Starbucks_matchaLatteMix <- \() nutrition(
  brand = 'Starbucks\U1f1fa\U1f1f8', 
  name = 'Matcha\U1f375 Latte Mix',
  yamibuy = '25775250', usd = 10.99/4, date = as.Date('2026-10-28'),
  pieceGram = 24,
  calorie = 103,
  protein = 3.4, fat = 2.8, carbohydrate = 16, sugar = 16, sodium = .13,
  suggest = list(water = c(c85 = 180)))



Starbucks_mocha <- \() nutrition(
  starbucks_hot = '408',
  name = 'Caff\u00e8 Mocha',
  servingGram = 470, serving_floz = 16,
  #caffeine 175 mg*
  calorie = 370, 
  fat = 15, cholesterol = .045, sodium = .150, carbohydrate = 43, sugar = 35, protein = 14)




Starbucks_mochaFrappuccino <- \() nutrition(
  starbucks_iced = '426',
  name = 'Mocha Frappuccino',
  servingGram = 470, serving_floz = 16,
  calorie = 370,
  # Caffeine 100 mg*
  fat = 15, cholesterol = .045, sodium = .220, carbohydrate = 54, sugar = 51, protein = 5)



Starbucks_mochaFrappuccino_bottle <- \() nutrition(
  name = 'Mocha Frappuccino',
  brand = 'Starbucks (Bottled)',
  walmart = '14532482', costcoBiz = '100228968', target = 'A-81793567',
  serving_floz = 13.7, servingGram = 405, # use water density
  calorie = 260,
  fat = 4.5, cholesterol = .02, sodium = .14, carbohydrate = 47, sugar = 45, protein = 9)


Starbucks_crema_chocolate <- \() nutrition(
  starbucks = 'Starbucks-Crema-Collection-Premium-Instant-Molten-Chocolate-Flavored',
  name = 'Molten Chocolate',
  walmart = '5742782029',
  # bottle 202g 7.12oz
  servingGram = 18, servingTbsp = 2,
  calorie = 70, 
  # fat = 0, 
  sodium = .095,
  carbohydrate = 16, sugar = 13, addedSugar = 9, protein = 1)

Starbucks_crema_Madagascar_vanilla <- \() nutrition(
  starbucks = 'Starbucks-Crema-Collection-Premium-Instant-Madagascar-Vanilla-Flavored',
  name = 'Madagascar\U0001f1f2\U0001f1ec Vanilla',
  walmart = '9666971961',
  # bottle 202g 7.12oz
  servingGram = 18, servingTbsp = 2,
  calorie = 70, 
  # fat = 0, 
  sodium = .055,
  carbohydrate = 16, fiber = 1, sugar = 13, addedSugar = 9, protein = 1)

Starbucks_crema_salted_caramel <- \() nutrition(
  starbucks = 'Starbucks-Crema-Collection-Premium-Instant-Salted-Caramel-Flavored',
  name = 'Salted Caramel',
  walmart = '9697318600',
  # bottle 202g 7.12oz
  servingGram = 18, servingTbsp = 2,
  calorie = 70, 
  # fat = 0, 
  sodium = .110,
  carbohydrate = 16, fiber = 2, sugar = 11, addedSugar = 9, protein = 1)

Starbucks_crema_pumpkinSpice <- \() nutrition(
  starbucks = 'starbucks-crema-collection-premium-instant-pumpkin-spice-flavored-coffee',
  name = 'Pumpkin\U1f383 Spice',
  walmart = '17795600806',
  # bottle 202g 7.12oz
  servingGram = 18, servingTbsp = 2,
  calorie = 70, 
  # fat = 0, 
  sodium = .035,
  carbohydrate = 16, sugar = 13, addedSugar = 9, protein = 1)


Starbucks_hotCocoa <- \() nutrition(
  # sams = 'P03020738', usd = 8.48/567*28, # no longer in store
  costco = '100071096', usd = 44.99/2/850*28,
  brand = 'Starbucks\U1f1fa\U1f1f8', name = 'Hot Cocoa, Tin',
  servingGram = 28, servingTbsp = 2.5, 
  calorie = 100,
  fat = 2.5, carbohydrate = 22, sugar = 17, addedSugar = 16, protein = 2)



Starbucks_mochaSauce <- \() nutrition(
  walmart = '903031815', usd = 8.43/12, # out of stock
  brand = 'Starbucks', name = 'Mocha Sauce',
  servingGram = 30, serving_floz = 1, # servingTbsp = 2, # 12floz
  calorie = 100,
  fat = .5, carbohydrate = 23, sugar = 19, protein = 1)



Starbucks_Kcup_hotCocoa <- \() nutrition(
  starbucks = 'classic-hot-cocoa',
  name = 'Hot Cocoa, K-cup',
  servingGram = 21, 
  calorie = 90,
  fat = 3, sodium = .19, carbohydrate = 13, addedSugar = 13, protein = 2)

