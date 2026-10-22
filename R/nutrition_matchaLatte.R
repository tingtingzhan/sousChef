


TraderJoes_matchaLatte <- \() nutrition(
  traderjoes = '052512',
  name = 'Matcha\U1f375 Latte Mix',
  servingGram = 45, servingTbsp = 5, fat = 9, sodium = .07, sugar = 17, addedSugar = 16, protein = 2)




Ippodo_sayakaLatte <- \() recipe(
  flavor = 'Sayaka Latte', 
  ippodotea = 'sayaka-100g',
  water = c(c80 = 100), 
  misc = c(
    Ippodo_sayaka_matcha = 3,  # matcha 1.5%
    WegmansOrganic_whole_milk = 96
  ))



Ippodo_uji_shimizu <- \() nutrition(
  ippodousa = 'uji-shimizu-sticks', ippodoglobal = 'matcha642402',
  name = 'Uji Shimizu\U1f375', alias = '\u5b87\u6cbb\u6e05\u6c34',
  usd = 18/12, jpy = 700/400*15,
  servingGram = 15, servingTbsp = 1.5,
  calorie = 60,
  carbohydrate = 15, addedSugar = 14, 
  suggest = list(water = c(c80 = 150)))


ItoEn_sweet_matcha <- \() nutrition(
  itoen = 'ito-en-matcha-green-tea-sweet-powder-sticks', jfc = '45783',
  name = 'Sweet Matcha',
  servingGram = 12, sugar = 11,
  suggest = list(water = c(c80 = 120)))



