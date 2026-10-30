
Quaker_oat <- \() nutrition(
  quakeroats = 'hot-cereals/old-fashioned-oats',
  name = 'Old Fashioned Oats', alias = '\u719f\u538b\u71d5\u9ea6',
  costco = '100381521', usd = 11.99/(10*453.6)*40,
  servingGram = 40, 
  # servingCup = 1/2, # packaging
  servingCup = (1/2)/50*40, # actual experiment: 1/2 cup is 50g
  calorie = 150,
  fat = 3, carbohydrate = 27, sugar = 1, protein = 5,
  suggest = list(water_cup = 1)
)




HaiTai_blackRice <- \() nutrition(
  haitaiusa = 'black-rice-\ud751\ubbf8-2lbs', 
  alias = '\u9ed1\u7c73', name = 'Black Rice',
  servingGram = 45, servingCup = 1/4, 
  calorie = 160, usd = 6.99/910*45,
  fat = 2, carbohydrate = 33, sugar = 1, protein = 3)


Nishiki_brownRice <- \() nutrition(
  nishiki = '69969', alias = '\u7384\u7c73', name = 'Premium Brown Rice',
  wegmans = '115278', usd = 11.99/2270*39, date = as.Date('2026-10-22'),
  amazon = 'B006SFAS6C',
  servingGram = 39, servingCup = 1/4, # packaging, actual 47.5g
  calorie = 140,
  fat = 1, carbohydrate = 29, fiber = 1, protein = 3)


Dynasty_brownRice <- \() nutrition(
  brand = 'Dynasty\U1f1fa\U1f1f8', 
  alias = '\u6cf0\u570b\u9999\u7cd9\u7c73', name = 'Brown Rice, Jasmine',
  jfc = '15682',
  wegmans = '114803', usd = 4.99/907*45, date = as.Date('2026-10-22'),
  servingGram = 45, servingCup = 1/4, 
  calorie = 160,
  carbohydrate = 37, protein = 2)

Koda_glutRice <- \() nutrition(
  brand = 'https://kodafarmsrice.com/products/sho-chiku-bai\u00ae-sweet-rice' |>
    style_hyperlink(text = 'Koda Farms\u677e\u7af9\u6885'),
  name = 'Glutinous Rice\U1f33e', alias = '\u7cef\u7c73',
  amazon = 'B0062EXR1C', usd = 22.99/50,
  servingGram = 45, servingCup = 1/4, # packaging
  calorie = 170,
  carbohydrate = 37, fiber = 1, protein = 3
)

Hakubai_glutRice <- \() nutrition(
  brand = 'Hakubai\u767d\u6885',
  name = 'Glutinous Rice\U1f33e', alias = '\u7cef\u7c73',
  jfc = '25190', amazon = 'B008CO9A6Q', usd = 17.99/54,
  servingGram = 42, servingCup = 1/4, # packaging
  calorie = 150,
  carbohydrate = 33, fiber = 1, protein = 3
)





Botan_rice <- \() nutrition(
  brand = 'Botan\u5bcc\u8d35\u82b1',
  alias = '\u52a0\u5dde\u4e2d\u7c92\u7c73', name = 'Calrose Rice',
  jfc = '01714',
  wegmans = '143657', usd = 8.99/2270*45, date = as.Date('2026-10-22'),
  servingGram = 45, servingCup = 1/4,
  calorie = 160,
  carbohydrate = 36, protein = 3
)
