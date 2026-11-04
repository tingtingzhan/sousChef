
TSF_tigerGrouper <- \() nutrition(
  brand = '\u5929\u6642\u798f\U1F1F9\U1F1FC' |>
    style_hyperlink(url = 'https://www.tsf-fishery.com.tw'),
  name = 'Tiger Grouper', alias = '\u9f8d\u864e\u6591',
  # Epinephelus fuscoguttatus x Epinephelus lanceolatus
  weee = '111238',
  pieceGram = 500, usd = 15.99/500*110, date = as.Date('2026-11-04'),
  servingGram = 110,
  calorie = 120, 
  fat = 4, cholesterol = .065, sodium = .07, carbohydrate = 1, 
  protein = 21,
  tool = list(
    KSEG950ESS(
      name2 = Staub_ovalSeaBass(),
      program = 'Ultra-Low',
      minute = 13,
      treatment = c(
        'Start with High heat',
        'Put palm on the lid',  
        'Turn to Untra-Low heat when the lid is too hot to touch'
      ),
      cooling = c('Leave covered on the stove, for 3min')
    )
  )
)