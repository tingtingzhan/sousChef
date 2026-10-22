
# https://www.thekitchn.com/sugar-substitutes-23023179#

# Avoid powdered sugar, if possible, 
# for recipes that require creaming together the butter and sugar. 
# Cookies made with powdered sugar won’t bake up as crisp.

# whiz 1 cup granulated sugar and 1 tablespoon cornstarch in a food processor 
# for each cup of powdered sugar you need.



Domino_10x <- \() nutrition(
  domino = 'powdered-sugar', # Ingredients: cane sugar, corn starch
  name = 'Sugar\U0001f36c, Confectioners', alias = '10x\u7cd6\u7c89',
  bjs = 'domino-confectioners-sugar-4-lbs/3000000000000139695', usd = 5.29/(4*454)*30, date = as.Date('2026-10-22'),
  wegmans = '182987', #usd = 3.69/(2*454)*30, date = as.Date('2026-10-22'),
  servingGram = 30, 
  # servingTsp = 12, # packaging
  servingTsp = 30/(33/12), # actual experiment: 1/4 cup = 33 grams
  # re-experiment with a freshly opened bag!!
  calorie = 120,
  carbohydrate = 30, addedSugar = 29)

Domino_granulated <- \() nutrition(
  domino = 'granulated-sugar',# Ingredients: cane sugar, 
  name = 'Granulated Sugar', alias = '\u767d\u7802\u7cd6',
  walmart = '219588515', #usd = 6.12/1590*8, date = as.Date('2026-10-22'),
  wegmans = '482489', usd = 4.49/1810*8, date = as.Date('2026-10-22'),
  servingGram = 8, servingTsp = 2, # packaging
  calorie = 30,
  carbohydrate = 8, addedSugar = 8)

Domino_golden <- \() nutrition(
  domino = 'golden-sugar',
  name = 'Golden Sugar', alias = '\u7c97\u7802\u7cd6',
  wegmans = '929921', usd = 4.49/1590*8, date = as.Date('2026-10-22'),
  servingGram = 8, servingTsp = 2, # packaging
  calorie = 30,
  carbohydrate = 8, sugar = 8)

US_10x <- \() nutrition(
  costco = '100436353',
  costcoBiz = '11830701',
  brand = style_hyperlink(text = 'U.S.\U1f1fa\U1f1f8', url = 'https://unitedsugarpr.com/product-category/powdered-sugar/') |> c(),
  name = 'Sugar\U0001f36c, Confectioners', alias = '10x\u7cd6\u7c89',
  usd = 4.99/3180*30,
  servingGram = 30,
  #servingCup = 1/4, # packaging
  servingCup = 30/3/48, # actual experiment: 1tsp = 3g
  calorie = 120,
  carbohydrate = 30, addedSugar = 29)


Wegmans_darkBrown <- \() nutrition(
  name = 'Dark Brown Sugar', alias = '\u7ea2\u7cd6',
  servingGram = 8, servingTsp = 2, 
  calorie = 30,
  carbohydrate = 8, addedSugar = 8)

Domino_darkBrown <- \() nutrition(
  domino = 'dark-brown-sugar',
  name = 'Dark Brown Sugar', alias = '\u7ea2\u7cd6',
  #walmart = '10291798', usd = 3.12/(2*454)*8,
  wegmans = '962361', usd = 3.69/(2*454)*8, date = as.Date('2026-10-07'),
  servingGram = 8, servingTsp = 2, 
  calorie = 30,
  carbohydrate = 8, addedSugar = 8)

Domino_lightBrown <- \() nutrition(
  domino = 'light-brown-sugar',
  name = 'Light Brown Sugar', alias = '\u7ea2\u7cd6',
  walmart = '1600519430', #usd = 3.78/907*8, date = as.Date('2026-10-07'),
  wegmans = '962360', usd = 3.69/907*8, date = as.Date('2026-10-07'),
  servingGram = 8, servingTsp = 2, 
  calorie = 30,
  carbohydrate = 8, addedSugar = 8)
