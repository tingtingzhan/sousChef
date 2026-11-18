


DavidLebovitz_pistachio_gelato <- \() recipe(
  author = 'David Lebovitz',
  url = 'www.davidlebovitz.com/pistachio-gelat/',
  misc_cup = c(
    Wegmans_whole_milk = 2,
    Domino_granulated = 1/3
  ),
  misc_Tbsp = c(
    Wegmans_corn_starch = 2
  ),
  misc = c(
    GustoEtna_pistachio_paste = 200
  )
  #a few drops of lemon or orange juice
)



GoodLifeEats_pistachio_gelato <- \() recipe(
  author = 'Good Life Eats',
  url = 'https://www.goodlifeeats.com/pistachio-gelato-2/',
  misc_cup = c(
    Domino_granulated = 1/2 + 1/2,
    pistachio = 1,
    Wegmans_whole_milk = 3
  ), 
  misc_Tbsp = c(
    Wegmans_corn_starch = 2
  ),
  misc_tsp = c(
    #`lemon zest`()
    lemonZest = 1/2
  )
)
  
