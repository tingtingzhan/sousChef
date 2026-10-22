




Pillsbury_mocha <- \() recipe(
  author = 'Pillsbury', flavor = 'Mocha Mix',
  url = 'https://www.pillsbury.com/recipes/mocha-mix/c93163dd-c5da-44ff-b3e6-9698e855fd5f',
  misc_cup = c(
    Nestle_coffeeMate = 2.25,
    NescafeGold_blonde_coffee = 3/4,
    KingArthur_Bensdorp_cocoa = 3/4,
    Domino_granulated = 1.5
  )
)




Rebecca_mocha <- \() recipe(
  author = 'Rebecca', flavor = 'Mocha Mix',
  allrecipes = '23828/hot-mocha-drink-mix/',
  misc_cup = c(
    Carnation_drymilk = 1,
    Nestle_coffeeMate = 1,
    Domino_granulated = 1,
    KingArthur_Bensdorp_cocoa = 1/2,
    NescafeGold_blonde_coffee = 1/4
  ))





bargainmums_mocha <- \() recipe(
  author = 'Bargain Mums', flavor = 'Mocha Mix',
  misc = c(
    Carnation_drymilk = 110,
    NescafeGold_blonde_coffee = 30,
    KingArthur_Bensdorp_cocoa = 50, 
    Domino_granulated = 100
  ), 
  misc_tsp = c(
    NielsenMassey_Madagascar = 1
  )#,
  #url = 'https://bargainmums.com.au/homemade-mocha-mix' # website down
)





EarlaTaylor_cocoa <- \() recipe(
  author = 'Earla Taylor', flavor = 'Cocoa Mix',
  allrecipes = '9335/hot-cocoa-mix/',
  misc_cup = c(
    Carnation_drymilk = 10,
    Nestle_coffeeMate = 1.75,
    KingArthur_Burgundy_cocoa = 1.75,
    Domino_10x = 4.75
  )
)




Mels_cocoa <- \() recipe(
  author = 'Mel\'s', flavor = 'Cocoa Mix',
  url = 'https://www.melskitchencafe.com/homemade-hot-chocolate-mix-another-simple-gift-idea/',
  misc_cup = c(
    Carnation_drymilk = 3,
    KingArthur_Bensdorp_cocoa = 1.5
  ),
  misc = c(
    Ghirardelli_whiteChocolate = 1.5,
    Domino_granulated = 228
  ),
  misc_tsp = c(Morton_salt = 1/4))




AmandaRettke_cocoa <- \() recipe(
  author = 'Amanda Rettke', flavor = 'Cocoa Mix',
  url = 'https://iambaker.net/hot-cocoa-mix-recipe/',
  misc_cup = c(KingArthur_Bensdorp_cocoa = 1),
  misc = c(
    Carnation_drymilk = 170,
    Domino_granulated = 250
  ),
  misc_tsp = c(
    Wegmans_corn_starch = 2,
    Morton_kosher_salt = 1
  )
)

