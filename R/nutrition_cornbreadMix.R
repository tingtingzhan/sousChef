

TraderJoes_cornbreadMix <- \() nutrition(
  traderjoes = '032809', usd = 2.99, date = as.Date('2026-10-19'),
  name = 'Cornbread Mix',
  # nutrition info & recipe: https://www.ebay.com/itm/285813474004
  #servingGram = 47,
  servingGram = 425, pieceGram = 425, piece_fmt = '%.1fbag',
  calorie = 130*12,
  sodium = .25*12, carbohydrate = 28*12, addedSugar = 10*12, protein = 2,
  suggest = list(
    egg_pc = c(eggYolk = 1, eggWhite = 1),
    misc_cup = c(
      Wegmans_whole_milk = 3/4,
      Wegmans_vegetable_oil = 1/2
    )
  ),
  review = paste('Even', style_hyperlink(
    text = 'bon app\u00e9tit', 
    url = 'https://www.bonappetit.com/story/best-boxed-cornbread-mix'
  ), 'thinks this is too sweet'))






WholeFoods365_cornbreadMix <- \() nutrition(
  wholefoods = 'b07d7bdyh6',
  name = 'Cornbread Mix', 
  usd = 3.59, # out of stock as of 2026-10-19
  servingGram = 425, pieceGram = 425, piece_fmt = '%.1fbag',
  calorie = 120*12,
  sodium = .39*12, carbohydrate = 27*12, fiber = 1*12, addedSugar = 8*12, protein = 2*12,
  suggest = list(
    egg_pc = c(eggYolk = 2, eggWhite = 2),
    misc_cup = c(
      Wegmans_whole_milk = 1,
      Wegmans_vegetable_oil = .5
    )
  ),
  review = paste(style_hyperlink(
    text = 'bon app\u00e9tit', 
    url = 'https://www.bonappetit.com/story/best-boxed-cornbread-mix'
  ), 'loves it'))



Krusteaz_southern_cornbreadMix <- \() nutrition(
  krusteaz = 'baking-mixes/southern-cornbread-muffin',
  name = 'Southern Cornbread Mix', usd = 19.68/4, date = as.Date('2026-10-19'),
  servingGram = 326, pieceGram = 326, piece_fmt = '%.1fbag',
  calorie = 100*12, 
  fat = .5*12, sodium = .4*12, carbohydrate = 21*12, sugar = 4*12, protein = 2*12,
  suggest = list(
    misc_cup = c(
      Kerrygold_butter = 1/3,
      OakFarms_buttermilk = 1
    ),
    egg_pc = c(eggYolk = 2, eggWhite = 2)
  ),
  # check out those fancier recipes https://www.krusteaz.com/recipes/cornbread/
  review = paste('A bad review from', style_hyperlink(text = 'bon app\u00e9tit', url = 'https://www.bonappetit.com/story/best-boxed-cornbread-mix')))
  




BobsRedMill_cornbreadMix <- \() nutrition(
  bobsredmill = 'cornbread-muffin-mix',
  name = 'Cornbread Mix',
  #servingGram = 55, servingCup = 1/3, 
  servingGram = 680, pieceGram = 680, piece_fmt = '%.1fbag',
  calorie = 200*12,
  fat = 1.5*12, sodium = .65*12, 
  carbohydrate = 42*12, fiber = 4*12, sugar = 6*12, addedSugar = 5*12,  
  protein = 6*12,
  suggest = list(
    water_cup = 2.5,
    egg_pc = c(eggYolk = 2, eggWhite = 2),
    misc_cup = c(
      Wegmans_vegetable_oil = 1/2
    )
  ),
  review = paste('A bad review from', style_hyperlink(text = 'bon app\u00e9tit', url = 'https://www.bonappetit.com/story/best-boxed-cornbread-mix')))







Stonewall_cornbreadMix <- \() nutrition(
  stonewall = '552594', usd = 8.95, date = as.Date('2026-10-19'),
  name = 'Cornbread Mix',
  servingGram = 453.6, pieceGram = 453.6, piece_fmt = '%.1fbag',
  calorie = 140*12,
  sodium = .18*12, carbohydrate = 31*12, fiber = 1*12, addedSugar = 12*12, protein = 2*12,
  suggest = list(
    egg_pc = c(eggYolk = 1, eggWhite = 1),
    misc_cup = c(
      Wegmans_vegetable_oil = 1/3,
      Wegmans_whole_milk = 1
    )
  ),
  review = paste(style_hyperlink(
    text = 'bon app\u00e9tit', 
    url = 'https://www.bonappetit.com/story/best-boxed-cornbread-mix'
  ), 'loves it'))




Jiffy_cornMuffinMix <- \() nutrition(
  brand = style_hyperlink(text = 'Jiffy\U1f1fa\U1f1f8', url = 'https://www.jiffymix.com/products/corn-muffin-mix/') |>
    c(),
  name = 'Corn Muffin Mix',
  servingGram = 240, pieceGram = 240, piece_fmt = '%.1fbag',
  calorie = 320*3,
  fat = 9*3, cholesterol = .01*3, sodium = .69*3,
  carbohydrate = 56*3, addedSugar = 15*3, protein = 4*3,
  suggest = list(
    # url = 'https://www.jiffymix.com/recipe/air-fryer-corn-muffins/',
    egg_pc = c(eggYolk = 1, eggWhite = 1),
    misc_cup = c(
      Wegmans_whole_milk = 1/3
    )
  ),
  review = paste(style_hyperlink(
    text = 'bon app\u00e9tit', 
    url = 'https://www.bonappetit.com/story/best-boxed-cornbread-mix'
  ), 'says it\'s just okay'))




Fleischmanns_cornbreadMix <- \() nutrition(
  brand = style_hyperlink(text = 'Fleischmann\'s\U1f1fa\U1f1f8', url = 'https://www.simplyhomemade.com/products') |> 
    c(),
  name = 'Cornbread Mix',
  walmart = '38065267', usd = 2.38, date = as.Date('2026-10-19'),
  servingGram = 425, pieceGram = 425, piece_fmt = '%.1fbag',
  calorie = 100*16,
  fat = 1.5*16, sodium = .24*16, carbohydrate = 21*16, sugar = 8*16, protein = 1*16,
  suggest = list(
    misc_cup = c(
      Kerrygold_butter = 1/3,
      Wegmans_whole_milk = 2/3
    ),
    egg_pc = c(eggYolk = 1, eggWhite = 1)
  )
)


