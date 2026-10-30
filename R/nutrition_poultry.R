

Kirkland_rotisserie_chickenBreast <- \() nutrition(
  name = 'Rotisserie Chicken Breast',
  alias = '\u70e4\u9e21\u80f8\u8089',
  costcoBiz = '11975863', usd = 15.99/46*3, date = as.Date('2026-10-20'),
  serving_oz = 3,
  calorie = 110,
  fat = 2.5, cholesterol = .065, sodium = .4, 
  protein = 20
)


chicken_thigh <- \() nutrition(
  fdc = 172385L,
  name = 'Chicken Thigh', alias = '(\u53bb\u76ae)\u9e21\u817f\u8089',
  servingGram = 100, water = 66.5, fat = 16.6, protein = 16.5, sodium = .081)



chicken_breast <- \() nutrition(
  fdc = 171077L,
  name = 'Chicken Breast',
  servingGram = 100, water = 73.9, fat = 2.62, protein = 22.5, sodium = .045)




MapleLeaf_duck <- \() nutrition(
  name = 'Duck\U1f986, Whole', 
  brand = style_hyperlink(text = 'Maple Leaf Farms\U1f1fa\U1f1f8', url = 'https://shopmapleleaffarms.com/collections/duck-catalog'),
  pieceGram = 3.5*454,
  serving_oz = 4,
  calorie = 310, 
  fat = 29, cholesterol = .08, sodium = .085, protein = 13,
  weee = '104919', usd = 15.99/3.5/16*4, date = as.Date('2026-10-28'),
  tool = list(Staub_vertRoaster(
    fahrenheit = 350,
    minute = c('whole duck\U1f986, 3.5lb' = 90)
  ))
)
