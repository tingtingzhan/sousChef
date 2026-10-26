



Stonewall_Bourbon_mapleSyrup <- \() nutrition(
  stonewall = '553167',
  name = 'Maple\U1f341 Syrup, Bourbon\U1fab5',
  usd = 21.95/250*30, date = as.Date('2026-10-25'),
  servingGram = 40, servingTbsp = 2, #serving_ml = 30,
  sodium = .005, addedSugar = 24)

Stonewall_mapleSyrup <- \() nutrition(
  stonewall = '170801',
  name = 'Maine Maple\U1f341 Syrup',
  # servingGram = 60, servingCup = 1/4, sodium = .005, addedSugar = 36) # webpage
  # empty bottle 253g
  usd = 19.95/250*30, date = as.Date('2026-10-25'),
  servingGram = 40, servingTbsp = 2, #serving_ml = 30,
  sodium = .005, carbohydrate = 27, addedSugar = 24) # bottle label, I tasted it and think this is correct

Stonewall_blueberry_syrup <- \() nutrition(
  stonewall = '170802',
  name = 'Wild Maine Blueberry\U1fad0 Syrup', alias = '\u84dd\u8393\u7cd6\u6d46',
  usd = 8.95/250*60, # 2023-11-11
  servingGram = 80, servingCup = 1/4, #serving_ml = 60,
  addedSugar = 34)

Stonewall_raspberry_syrup <- \() nutrition(
  stonewall = '170804',
  name = 'Raspberry Syrup', alias = '\u8986\u76c6\u5b50\u7cd6\u6d46',
  # full bottle 580g
  usd = 9.95/250*60, # 2023-11-11
  servingGram = 80, servingCup = 1/4, #serving_ml = 60,
  addedSugar = 35)



Stonewall_fig <- \() nutrition(
  stonewall = '100825',
  name = 'Classic Fig Jam, Organic',
  servingGram = 21, sodium = .01, sugar = 11, review = 'okay')

Stonewall_figWalnut <- \() nutrition(
  stonewall = '161014',
  name = 'Fig & Walnut Butter', alias = '\u6838\u6843\u65e0\u82b1\u679c\u9171',
  servingGram = 15, servingTbsp = 1,
  usd = 9.50/361*15,
  calorie = 40,
  carbohydrate = 9, sugar = 8, addedSugar = 6)#, review = 'okay')

Stonewall_mimosa <- \() nutrition(
  stonewall = '101340',
  name = 'Mimosa Jam',
  servingGram = 19, sugar = 10, review = 'super nice to eat directly!')



Stonewall_apricot <- \() nutrition(
  stonewall = '101328',
  name = 'Apricot Jam',
  servingGram = 15, sugar = 7, review = 'okay')



Stonewall_wildBlueberryJam <- \() nutrition(
  stonewall = '101305',
  name = 'Wild Maine Blueberry\U1fad0 Jam',
  servingGram = 15, sugar = 7, review = 'Nice!')



Stonewall_raspberryJam <- \() nutrition(
  stonewall = '101339',
  servingGram = 19, sugar = 10,
  review = 'Not good for cooking, purely pectin.  Do not buy non-seedless version!')



Stonewall_blackRaspberry <- \() nutrition(
  stonewall = '101353',
  servingGram = 15, sugar = 8, review = 'try.  Do not buy non-seedless version!')





Stonewall_lemonHerbAioli <- \() nutrition(
  name = 'Lemon Herb Aioli',
  stonewall = '111310',
  servingGram = 15, fat = 10, sodium = .105, review = 'I like it.')



Stonewall_basilPestoAioli <- \() nutrition(
  name = 'Basil Pesto Aioli',
  stonewall = '111314',
  servingGram = 13, fat = 9, sodium = .085, review = 'Not crazy about it')



Stonewall_srirachaAioli <- \() nutrition(
  name = 'Sriracha Aioli',
  stonewall = '111317',
  servingGram = 14, fat = 8, sodium = .08, review = 'love it!!')



Stonewall_horseradishCreamSauce <- \() nutrition(
  name = 'Horseradish Cream Sauce',
  stonewall = '551900',
  servingGram = 31, fat = 4.5, sodium = .11, sugar = 2, protein = 1, review = 'love it!!')


