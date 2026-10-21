



Junior_cappuccino_cheesecake <- \() recipe(
  flavor = 'Cappuccino Cheesecake',
  #dairy_brick = c(Philadelphia_creamCheese = 4),
  misc_brick = c(Philadelphia_creamCheese = 4),
  coffee_Tbsp = c(NescafeGold_blonde_coffee = 1),
  water = c(c100 = 15),
  vanilla_Tbsp = c(NielsenMassey_Madagascar = 1),
  egg_pc = c(eggYolk = 2/3.25*4, eggWhite = 2/3.25*4), # 2 extra-large eggs  https://en.wikipedia.org/wiki/Chicken_egg_sizes
  misc_cup = c(
    Wegmans_heavyCream = 3/4,
    Domino_granulated = 1+2/3,
    Wegmans_corn_starch = 1/3
  ),
  cocoa_Tbsp = c(KingArthur_Bensdorp_cocoa = 1),
  juniorscheesecakecookbook = 42L)


PreppyKitchen_cheesecake <- \() recipe(
  flavor = 'Cheesecake',
  misc_brick = c(Philadelphia_creamCheese = 3),
  salt_tsp = 1/4,
  vanilla_tsp = c(NielsenMassey_Madagascar = 2),
  egg_pc = c(eggYolk = 3, eggWhite = 3),
  misc_cup = c(
    Domino_granulated = 1,
    Daisy_sourCream = 1/2
  ),
  preppykitchen = c('ZYoYffXWiwk' = 'cheesecake-recipe'))




Junior_cookbook <- \() recipe(
  juniorscheesecakecookbook = 34L,
  flavor = 'Original',
  misc_brick = c(Philadelphia_creamCheese = 4),
  vanilla_Tbsp = c(NielsenMassey_Madagascar = 1),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  misc_cup = c(
    Domino_granulated = 1+2/3,
    Wegmans_corn_starch = 1/4,
    Byrne_heavyCream = 3/4
  ),
  youtube = 'dUtq2hETohc' # see 1:00, brand of heavy cream
)


CheesecakeFactory_original <- \() nutrition(
  name = 'Original',
  cheesecakefactoryfreezer = 'original-cheesecake', cheesecakefactorybakery = 'original-dome',
  target = 'A-15382641', usd = 18.39/964*120,
  servingGram = 120, 
  fat = 24, cholesterol = .105, sodium = .33, sugar = 28, addedSugar = 27, protein = 6)





PreppyKitchen_chocolate_cheesecake <- \() recipe(
  flavor = 'Cheesecake',
  # 1/4 cup coffee hot ???
  # 1 cup bittersweet chocolate ???
  # 3/4 cup semisweet chocolate ???
  # 1 pinch salt ???
  misc_brick = c(Philadelphia_creamCheese = 3),
  flour_Tbsp = c(KingArthur_allPurposeFlr = 3),
  sugar = 200,
  vanilla_Tbsp = c(NielsenMassey_Madagascar = 1),
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  misc_cup = c(
    Daisy_sourCream = 1/4
  ),
  preppykitchen = c('b5Hpv2FE22Q' = 'chocolate-cheesecake'))






Natasha_pumpkin_cheesecake <- \() recipe(
  natashaskitchen = 'pumpkin-cheesecake-recipe',
  class2 = 'Cheesecake',
  misc_brick = c(Philadelphia_creamCheese = 3),
  puree = c(Libbys_pumpkinPieMix = 425),
  flour_Tbsp = c(KingArthur_allPurposeFlr = 2), 
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  misc_cup = c(
    Domino_lightBrown = 1.5,
    Daisy_sourCream = 1/4
  ),
  salt_tsp = 1/4,
  vanilla_Tbsp = c(NielsenMassey_Madagascar = 1),
  spice_tsp = c(SimplyOrganic_pumpkinSpice = 2))





Junior_pumpkin_cheesecake <- \() recipe(
  misc_brick = c(Philadelphia_creamCheese = 4),
  vanilla_Tbsp = c(NielsenMassey_Madagascar = 1),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  misc_cup = c(
    Libbys_pumpkin = 1,
    Domino_granulated = 1+2/3,
    Wegmans_heavyCream = 3/4,
    Wegmans_corn_starch = 1/4
  ),
  spice_tsp = c(SimplyOrganic_pumpkinSpice = 1),
  juniorscheesecakecookbook = 45L
)




PreppyKitchen_pumpkin_cheesecake <- \() recipe(
  class2 = 'Cheesecake',
  misc_brick = c(Philadelphia_creamCheese = 3),
  salt_tsp = 1/2,
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  misc_cup = c(
    Libbys_pumpkin = 1,
    Domino_granulated = 3/4,
    Domino_lightBrown = 1/2,
    Daisy_sourCream = 1/2
  ),
  vanilla_tsp = c(NielsenMassey_Madagascar = 2),
  flour_Tbsp = c(KingArthur_allPurposeFlr = 2),
  spice_tsp = c(SimplyOrganic_pumpkinSpice = 1.5),
  preppykitchen = c('JwmhZP9vRWM' = 'pumpkin-swirl-cheesecake'))







BrianLagerstrom_burntBasque <- \() recipe(
  flavor = 'Burnt Basque Cheesecake',
  author = 'Brian Lagerstrom', youtube = 'eW-nF1xEFSA',
  dairy = c(
    Philadelphia_creamCheese = 800,
    Wegmans_heavyCream = 500,
    Wegmans_goat_cheese = 225
  ),
  sugar = c(Domino_granulated = 350),
  egg_pc = c(eggYolk = 5, eggWhite = 5),
  salt = 5,
  
  flour = c(KingArthur_allPurposeFlr = 50))





