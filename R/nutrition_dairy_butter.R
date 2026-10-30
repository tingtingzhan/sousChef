

Kerrygold_butter <- \() nutrition(
  kerrygold = 'kerrygold-pure-irish-unsalted-butter',
  kerrygoldusa = 'unsalted-butter',
  name = 'Irish Butter\U1f9c8',
  serving_oz = 8/16, servingTbsp = 1, 
  costco = '100439445', usd = 14.99/4/16, date = as.Date('2026-10-07'),
  costcoBiz = '100362700',
  calorie = 100,
  fat = 226.796/16*.82, # package 12g, 
  cholesterol = .03,
  water = 226.796/16*(1- .82 - .02)
  # water amount: 
  # https://blogs.extension.iastate.edu/answerline/2016/09/01/which-butter-for-baking/
  # https://tastecooking.com/all-about-butter/
)


Kerrygold_saltedButter <- \() nutrition(
  kerrygoldusa = 'salted-butter',
  kerrygold = 'kerrygold-pure-irish-salted-butter',
  costcoBiz = '100339833',
  name = 'Irish Salted Butter\U1f9c8',
  serving_oz = 8/16, servingTbsp = 1, 
  calorie = 100,
  fat = 11, sodium = .1,
  water = 226.796/16*(1- .82 - .02)
  # water amount: 
  # https://blogs.extension.iastate.edu/answerline/2016/09/01/which-butter-for-baking/
  # https://tastecooking.com/all-about-butter/
)


Kirkland_butter <- \() nutrition(
  costcoBiz = '11938074',
  name = 'Butter\U1f9c8, Sweet Cream',
  alias = '\u9ec4\u6cb9',
  serving_oz = 8/16, servingTbsp = 1,
  usd = 8.99/8/8, date = as.Date('2026-10-20'), # in-store price
  calorie = 100, fat = 11, cholesterol = .03
)


Plugra_butter <- \() nutrition(
  brand = style_hyperlink(text = 'Plugr\u00e0\U1f1fa\U1f1f8', url = 'https://plugra.com/product/unsalted_8_oz_solid/'),
  name = 'European Butter\U1f9c8',
  acme = '960051793', usd = 2.99/16, date = as.Date('2026-09-11'),
  serving_oz = 8/16, servingTbsp = 1, 
  calorie = 100,
  fat = 11, cholesterol = .030,
  water = 226.796/16*(1- .82 - .02)
)



Wuthrich_butter <- \() nutrition(
  brand = style_hyperlink(text = 'Wu\u0308thrich\U1f1fa\U1f1f8', url = 'https://www.grassland.com/product/wuthrich-83-european-style-unsalted-butter-solid/'),
  name = 'European Butter\U1f9c8',
  webstaurant = '874RE3120', usd = .24/2, date = as.Date('2026-10-23'),
  serving_oz = 8/16, servingTbsp = 1, 
  calorie = 110,
  fat = 226.796/16*.83, # on package 12g
  cholesterol = .025,
  water = 226.796/16*(1- .83 - .02))


Lucerne_European_butter <- \() nutrition(
  brand = 'Lucerne', 
  name = 'European Butter\U1f9c8',
  acme = '960493010', usd = 3.29/16, date = as.Date('2026-09-17'),
  serving_oz = 8/16, servingTbsp = 1,
  calorie = 100,
  fat = 226.796/16*.82, # on package 12g
  cholesterol = .030,
  water = 226.796/16*(1- .82 - .02))


Minerva_Amish_butter <- \() nutrition(
  # wegmans = '638816', # this is the salted version
  brand = style_hyperlink(text = 'Minerva\U1f1fa\U1f1f8', url = 'https://minervadairy.com/product/unsalted/'),
  name = 'Amish Butter\U1f9c8',
  url = 'https://minervadairy.com/product/2lbs-unsalted-roll-butter/',
  webstaurant = '874880039', usd = .52/2, date = as.Date('2026-10-23'),
  serving_oz = 8/16, servingTbsp = 1,
  calorie = 100,
  fat = 226.796/16*.85, # on package 12g
  cholesterol = .035,
  water = 226.796/16*(1- .85 - .02))



LandOLakes_butter <- \() nutrition(
  landolakes = 'butter-spreads/unsalted-butter',
  name = 'Butter\U1f9c8',
  serving_oz = 8/16, servingTbsp = 1,
  calorie = 100,
  fat = 226.796/16*.8, # on package 11g
  cholesterol = .030, water = 226.796/16*(1- .8 - .02))






WegmansOrganic_ghee <- \() nutrition(
  name = 'Ghee',
  wegmans = '61329', usd = 8.99/213*15, date = as.Date('2026-10-24'),
  servingGram = 15, servingTbsp = 1, 
  calorie = 130, fat = 15)


Nanak_ghee <- \() nutrition(
  costco = '100444109',
  name = 'Ghee',
  nanak = 'ghee',
  usd = 24.99/1587.57*14,
  servingGram = 14, servingTbsp = 1, 
  calorie = 120, fat = 14) 

