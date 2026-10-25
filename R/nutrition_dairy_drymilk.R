


Meyenberg_goat_drymilk <- \() nutrition(
  meyenberg = 'powdered-goat-milk/powdered-nonfat-goat-milk',
  name = 'Nonfat Dry Goat\U1f410 Milk', alias = '\u8131\u8102\u7f8a\u5976\u7c89',
  amazon = 'B08M2RH8P5', usd = 89.99/6/340*28,
  servingGram = 28, #servingCup = 1/4, # packaging
  servingCup = 28/40*(1/4), # actual experiment: 40g = 1/4cup !!!
  calorie = 90,
  cholesterol = .010, sodium = .1, carbohydrate = 12, sugar = 12, protein = 10,
  suggest = list(water_cup = c(c80 = 1)))




Meyenberg_goat_drywholemilk <- \() nutrition(
  meyenberg = 'powdered-goat-milk/powdered-whole-goat-milk',
  name = 'Whole Dry Goat\U1f410 Milk', alias = '\u5168\u8102\u7f8a\u5976\u7c89',
  #amazon = 'B08M2VSQ6N', usd = 89.98/6/340*28,
  walmart = '849003302', usd = 13.94/340*28, # cheaper!!
  servingGram = 28, #servingCup = 1/4, # packaging
  servingCup = 28/30*(1/4), # actual experiment: 1/4cup = 30g
  calorie = 140,
  fat = 8, cholesterol = .035, sodium = .085, carbohydrate = 10, sugar = 10, protein = 7,
  suggest = list(water_cup = c(c80 = 1)))




Carnation_drymilk <- \() nutrition(
  #nestleprofessional = 'nestle-carnation-nonfat-dry-milk-4-x-2275-oz',
  carnationbaking = 'instant-non-fat-dry-milk-9oz-can',
  name = 'Nonfat Dry Milk',
  walmart = '978118310', usd = 4.64/272*23, date = as.Date('2026-10-07'),
  # target = 'A-13898456', #usd = 4.89/272*23, # no longer available
  servingGram = 23, 
  # servingCup = 1/4, # packaging
  servingCup = 23/87, # actual experiment: 1 cup = 87 gram
  calorie = 80,
  cholesterol = .005, sodium = .095, carbohydrate = 12, sugar = 12, protein = 8,
  suggest = list(water_cup = c(c80 = 1)))







#Carnation_drywholemilk <- \() nutrition(
#  nestle = '12428935', # no longer available
#  name = 'Carnation Whole Milk Powder',
#  servingGram = 30, servingCup = 1/4, # website does not have servingGram!!
#  fat = 8, sodium = .105, sugar = 10, protein = 7)



Nido_drywholemilk <- \() nutrition(
  name = 'Dry Whole Milk',
  nido = 'fortificada-dry-whole-milk-beverage-564-oz/',
  walmart = '14869811', usd = 19.98/1600*30, # 2023-11-11
  servingGram = 30, servingCup = 1/4,
  fat = 8, sodium = .105, carbohydrate = 11, sugar = 11, protein = 8,
  suggest = list(water_cup = c(c80 = 1)))



KingArthur_baker_drymilk <- \() nutrition(
  kingarthur = '213100',
  name = 'Baker\'s Special Dry Milk',
  usd = 12.95/454*28, # 2023-11-11
  servingGram = 28, 
  servingCup = 1/4, # packaging
  calorie = 100,
  cholesterol = .01, sodium = .11, carbohydrate = 14, sugar = 13, protein = 10,
  suggest = list(
    water_cup = c(c80 = 1)
  ))



KingArthur_drywholemilk <- \() nutrition(
  kingarthur = '211706',
  name = 'Dried Whole Milk',
  usd = 12.95/397*6, # 2023-11-11
  servingGram = 6, 
  servingTbsp = 1, # packaging
  calorie = 30,
  # no suggest on package!!!
  fat = 1.5, cholesterol = .005, sodium = .02, carbohydrate = 2, sugar = 2, protein = 2,
  suggest = list(
    water_cup = c(c80 = 1/4)
  ))



GreatValue_drymilk <- \() nutrition(
  walmart = '10415475',
  name = 'Nonfat Dry Milk',
  usd = 19.67/1810*23,
  servingGram = 23,
  servingCup = 1/3,
  calorie = 80,
  cholesterol = .005, sodium = .125, carbohydrate = 12, sugar = 12, protein = 8,
  suggest = list(
    water_cup = c(c80 = 7/8)
  ))



MembersMark_drymilk <- \() nutrition(
  sams = 'prod21366487', 
  name = 'Nonfat Dry Milk',
  usd = 18.48/1990*23,
  servingGram = 23,
  servingCup = 1/3, # packaging
  calorie = 80,
  cholesterol = .005, sodium = .125, carbohydrate = 12, sugar = 12, protein = 8,
  suggest = list(
    water_cup = c(c80 = 7/8)
  ))



BobsRedMill_drymilk <- \() nutrition(
  bobsredmill = 'non-fat-dry-milk-powder',
  name = 'Nonfat Dry Milk',
  # usd =
  servingGram = 24,
  servingTbsp = 3, # packaging
  calorie = 90,
  sodium = .1, carbohydrate = 13, sugar = 11, protein = 8,
  suggest = list(
    water_cup = 1
  ))




Horizon_drywholemilk <- \() nutrition(
  horizon = 'organic-milk/organic-dry-whole-milk',
  name = 'Dry Whole Milk',
  sams = 'prod25791985', usd = 23.22/(30.6*28.35)*29,
  walmart = '548381598', # usd = 26.94/(30.6*28.35)*29,
  costcoBiz = '100390940',
  servingGram = 29, servingCup = 1/4, # packaging
  calorie = 140,
  fat = 8, cholesterol = .030, sodium = .105, carbohydrate = 11, sugar = 10, protein = 8,
  suggest = list(water_cup = c(c80 = 1)))


# skim
# https://www.yotsuba-shop.com/Form/Product/ProductDetail.aspx?shop=0&pid=11060&cat=000006134

# whole
# https://www.yotsuba-shop.com/Form/Product/ProductDetail.aspx?shop=0&pid=10159&cat=000006135

# ??
# https://www.yotsuba-shop.com/Form/Product/ProductDetail.aspx?shop=0&pid=12714&cat=000006136

# unsalted butter
# https://www.yotsuba-shop.com/Form/Product/ProductDetail.aspx?shop=0&pid=10425&cat=000002104
