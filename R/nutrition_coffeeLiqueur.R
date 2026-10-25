

Kahlua_coffeeLiqueur <- \() nutrition(
  kahlua = 'original-coffee-liqueur',
  name = 'Rum & Coffee Liqueur',
  totalwine = '1804750', usd = 23.09/750*74, date = as.Date('2026-10-24'),
  servingGram = 74, servingTsp = 15, # 74ml
  calorie = 200,
  AbV = .2,
  water = floor(74 - 11.68 - 29.7),
  carbohydrate = 29.7, sugar = 29.7)


Kahlua_especial_coffeeLiqueur <- \() nutrition(
  kahlua = 'kahlua-especial',
  name = 'Especial Rum & Coffee Liqueur',
  totalwine = '94488750', usd = 23.99/750*44, date = as.Date('2026-10-24'),
  servingGram = 44, servingTsp = 9, # 44ml
  calorie = 143,
  water = floor(44 - 12.15 - 14.4),
  AbV = .35,
  carbohydrate = 14.4, sugar = 14.4)



CafeGranita_coffeeLiqueur <- \() nutrition(
  #url = 
  brand = 'Cafe Granita\U1f1fa\U1f1f8', 
  # bottled by the Cafe Granita Brand Company, Princeton, MN
  name = 'Coffee Liqueur',
  totalwine = '100834750', usd = 14.99/750*44, date = as.Date('2026-10-24'),
  servingGram = 44, servingTsp = 9,
  AbV = .21
)


FratelliVincenzi_espressoLiqueur <- \() nutrition(
  brand = style_hyperlink(text = 'Fratelli Vincenzi\U1f1ee\U1f1f9', url = 'https://www.distillerievincenzi.com/liquori/') |> c(),
  name = 'Espresso Liqueur',
  totalwine = '348072750', usd = 21.99/750*44, date = as.Date('2026-10-24'),
  servingGram = 44, servingTsp = 9, # `servingTsp` my guess
  AbV = .3
)


Kikisi_coffeeLiqueur <- \() nutrition(
  brand = 'Kikisi\U1f1f2\U1f1fd',
  name = 'Coffee Liqueur',
  totalwine = '243193750', usd = 11.99/750*44, date = as.Date('2026-10-24'),
  servingGram = 44, servingTsp = 9, # `servingTsp` my guess
  AbV = .2
)


CaffeBorghetti_espressoLiqueur <- \() nutrition(
  brand = c(style_hyperlink(text = 'Caff\u00e8 Borghetti\U1f1ee\U1f1f9', url = 'https://www.brancausa.com/brands/caffe-borghetti')),
  name = 'di Vero Caff\u00e8 Espresso Liqueur',
  totalwine = '130512750', usd = 26.99/750*44, date = as.Date('2026-10-24'),
  servingGram = 44, servingTsp = 9,
  AbV = .25
)

Grind_espressoLiqueur <- \() nutrition(
  brand = c(style_hyperlink(text = 'Grind\U1f1fa\U1f1f8', url = 'https://grindespressoshot.com/home.html')),
  name = 'Espresso Shot',
  totalwine = '159626750', usd = 19.99/750*44, date = as.Date('2026-10-24'),
  servingGram = 44, servingTsp = 9,
  AbV = .3
)



Sabroso_coffeeLiqueur <- \() nutrition(
  brand = 'Sabroso\U1f1f2\U1f1fd',
  name = 'Licor de Caf\u00e9',
  totalwine = '704750', usd = 12.49/750*44, date = as.Date('2026-10-24'),
  servingGram = 44, servingTsp = 9,
  AbV = .24
)


Patron_XO_coffeeLiqueur <- \() nutrition(
  brand = c(style_hyperlink(text = 'Patr\u00f3n\U1f1f2\U1f1fd', url = 'https://www.patrontequila.com/products/patron-xo-cafe-coffee-liquor.html')),
  name = 'XO Cafe',
  totalwine = '96430750', usd = 45.99/1750*44, date = as.Date('2026-10-24'),
  servingGram = 44, servingTsp = 9,
  AbV = .35)


Padrino_coffeeLiqueur <- \() nutrition(
  # https://www.tequilapadrino.com/products # cannot find
  brand = 'El Padrino\U1f1f2\U1f1fd',
  name = 'Caf\u00e9',
  totalwine = '243336750', usd = 27.99/750*44, date = as.Date('2026-10-24'),
  servingGram = 44, servingTsp = 9,
  AbV = .35)


Amigos3_coffeeLiqueur <- \() nutrition(
  brand = c(style_hyperlink(text = '3 Amigos Tequila\U1f1f2\U1f1fd', url = 'https://3amigostequila.com/cafe-mocha/')),
  name = 'Cafe Mocha',
  totalwine = '244117750', usd = 28.99/750*44, date = as.Date('2026-10-24'),
  servingGram = 44, servingTsp = 9,
  AbV = .32)


# https://www.totalwine.com/spirits/liqueurscordialsschnapps/coffee/grind-mocha-rum/p/2126224648?s=301&igrules=true
