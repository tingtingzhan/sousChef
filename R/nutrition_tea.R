



# Stassen; headquarter in Sri Lanka.

Stassen_Ceylon_tea <- \() nutrition(
  stassentea = '100-etb-stassen-pure-ceylon-black-tea', usd = 12/100, date = as.Date('2026-10-22'),
  name = 'Ceylon Black Tea',
  pieceGram = 200/100, piece_fmt = '%.2g\U1f9e7',
  review = c(
    'Soymilk coagulates -- confirm again',
    'no other better choice yet'
  ))


Harney_UvaHighlands_tea <- \() nutrition(
  harney = 'uva-highlands', 
  name = 'Uva Highlands',
  serving_lb = 1, usd = 30, date = as.Date('2026-10-22'),
  superior = 'Harney_Assam_tea')

Harney_Assam_tea <- \() nutrition(
  harney = 'organic-assam',
  name = 'Organic Assam',
  serving_lb = 1, usd = 30, date = as.Date('2026-10-22'),
  #machine (legacy) = \(x) switch(x, cookie = c('Grind loose leaf tea using Niche Zero, Level 6')),
  review = 'Good base black tea.')

Harney_PuErh_tea <- \() nutrition(
  harney = 'pu-erh',
  name = 'Pu-Erh',
  serving_lb = 1, usd = 29, date = as.Date('2026-10-22'),
  #machine (legacy) = \(x) switch(x, cookie = c('Grind loose leaf tea using Niche Zero, Level 6')),
  review = 'Very distinct and delightful aroma when raw.')

Harney_decafCeylon_tea <- \() nutrition(
  harney = 'decaf-ceylon',
  name = 'Decaf Ceylon',
  serving_lb = 1, usd = 35.20, date = as.Date('2026-10-22'))

Harney_decafEarlGrey_tea <- \() nutrition(
  harney = 'decaf-earl-grey',
  name = 'Decaf Earl Grey',
  serving_lb = 1, usd = 31.90, date = as.Date('2026-10-22'))

Harney_EarlGreySupreme_tea <- \() nutrition(
  harney = 'earl-grey-supreme', 
  name = 'Earl Grey Supreme',
  serving_lb = 1, usd = 35, date = as.Date('2026-10-22'),
  review = 'bergamont too weak, tea too strong')

Harney_LapSangSouChong_tea <- \() nutrition(
  harney = 'lapsang-souchong',
  alias = '\u7acb\u5c71\u5c0f\u79cd', name = 'Lap Sang Sou Chong',
  serving_lb = 1, usd = 31, date = as.Date('2026-10-22'),
  #machine (legacy) = \(x) switch(x, cookie = c('Grind loose leaf tea using Niche Zero, Level 6')),
  review = 'Quite an acquired taste')


# Twinings

Twinings_EarlGrey_tea <- \() nutrition(
  twinings = 'earl-grey', 
  name = 'Earl Grey', alias = '\u4f5b\u624b\u67d1\u7ea2\u8336',
  wegmans = '725500', usd = 13.49/100, date = as.Date('2026-10-22'),
  pieceGram = 200/100, piece_fmt = '%.2g\U1f9e7')

Twinings_EarlGrey_loose_tea <- \() nutrition(
  twinings = 'earl-grey-loose-tea',
  name = 'Earl Grey, Loose', alias = '\u4f5b\u624b\u67d1\u7ea2\u8336',
  servingGram = 200, usd = 12.99, date = as.Date('2026-10-22'))

Twinings_strongEarlGrey_tea <- \() nutrition(
  twinings = 'earl-grey-strong',
  name = 'Earl Grey, Extra Strong', alias = '\u4f5b\u624b\u67d1\u7ea2\u8336',
  wegmans = '722318', usd = 4.29/20, date = as.Date('2026-10-22'),
  webstaurant = '110TWNG13541',
  pieceGram = 40/20, piece_fmt = '%.2g\U1f9e7',
  review = 'I love!!')

Twinings_decafEarlGrey_tea <- \() nutrition(
  twinings = 'earl-grey-decaf', # no value pack, no loose leaf
  name = 'Earl Grey Decaf',
  wegmans = '267873', usd = 4.29/20, date = as.Date('2026-10-22'),
  pieceGram = 35/20, piece_fmt = '%.2g\U1f9e7')

Twinings_LadyGrey_tea <- \() nutrition(
  twinings = 'lady-grey', usd = 16.99/100, date = as.Date('2026-10-22'),
  name = 'Lady Grey',
  wegmans = '344618',
  walmart = '15556242',
  pieceGram = 40/20, piece_fmt = '%.2g\U1f9e7',
  review = 'Great for soytea!')
  
Twinings_ultraChai_tea <- \() nutrition(
  twinings = 'ultra-spice-chai',
  name = 'Chai, Ultra Spice',
  wegmans = '543904', usd = 4.29/20, date = as.Date('2026-10-22'),
  webstaurant = '110TWNG07516',
  walmart = '29884542',
  pieceGram = 40/20, piece_fmt = '%.2g\U1f9e7',
  review = 'I love!! Great potential for many recipes!!')

Twinings_Darjeeling_tea <- \() nutrition(
  twinings = 'darjeeling', usd = 8.99/50, date = as.Date('2026-10-22'),
  name = 'Darjeeling', alias = '\u09a6\u09be\u09b0\u09cd\u099c\u09bf\u09b2\u09bf\u0982',
  wegmans = '344614',
  pieceGram = 40/20, piece_fmt = '%.2g\U1f9e7',
  review = 'lacks a signature flavor')
  
Twinings_Ceylon_tea <- \() nutrition(
  twinings = 'ceylon-pure-black', usd = 4.99/20, date = as.Date('2026-10-22'),
  name = 'Ceylon Orange Pekoe',
  webstaurant = '110TWNG05324',
  pieceGram = 40/20, piece_fmt = '%.2g\U1f9e7')

Twinings_EnglishBreakfast_tea <- \() nutrition(
  twinings = 'english-breakfast',
  name = 'English Breakfast', alias = '\u62fc\u914d\u7ea2\u8336',
  wegmans = '730970', usd = 13.49/100, date = as.Date('2026-10-22'),
  #webstaurant = '110TWNG05324',
  pieceGram = 200/100, piece_fmt = '%.2g\U1f9e7')

# Paromi

Paromi_EarlGrey_tea <- \() nutrition(
  paromi = 'earl-grey-tea-bags', usd = 12/15, date = as.Date('2026-10-22'),
  name = 'Earl Grey',
  pieceGram = 45/15, piece_fmt = '%.2g\U1f9e7',
  review = 'Too spicy, do not buy')

Paromi_cinnamonChai_tea <- \() nutrition(
  paromi = 'cinnamon-chai-tea-bags', usd = 12/15, date = as.Date('2026-10-22'),
  name = 'Cinnamon Chai Rooibos',
  pieceGram = 45/15, piece_fmt = '%.2g\U1f9e7')



Yogi_licorice_tea <- \() nutrition(
  yogi = 'egyptian-licorice-076950415164',
  name = 'Egyptian Licorice',
  wegmans = '673624', usd = 4.99/16, date = as.Date('2026-10-22'),
  walmart = '26965528',
  pieceGram = 36/16, piece_fmt = '%.2g\U1f9e7')



# Wegman's Just Tea

JustTea_EarlGrey_tea <- \() nutrition(
  justtea = '229018', usd = 10.49/100, date = as.Date('2026-10-22'),
  name = 'Earl Grey',
  pieceGram = 199/100, piece_fmt = '%.2g\U1f9e7',
  superior = 'Twinings_EarlGrey_tea',
  review = c(
    'Soymilk coagulates',
    'Bergamot has a different flavor from Twining\'s Earl Grey, which is okay'
  ))

