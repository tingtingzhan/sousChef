




#youtube = c(
#  'how to use rateau' = 'BeN3zKZ6qJ4',
#  'how to use ladle' = 'RIs-3KLk0gI'
#)



xiaogaojie_millecrepe <- \() recipe(
  flavor = 'millecrepe',
  dairy = c(Kerrygold_butter = 25,
            WegmansOrganic_whole_milk = 300), # in grams in original recipe
  flour = c(Wegmans_pastryFlr = 100),
  sugar = 12, 
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  xiaogaojie = 'uZ626SU5T2I')

iwen_mango_millecrepe <- \() recipe(
  author = 'iwen', flavor = 'mango millecrepe',
  egg_pc = c(eggYolk = 6, eggWhite = 6),
  sugar = 75,
  flour = c(Wegmans_pastryFlr = 300),
  salt_tsp = 1/2,
  dairy = c(Kerrygold_butter = 100,
            WegmansOrganic_whole_milk = 750), # in grams in original recipe
  youtube = 'tIOzt4XWy7k')
  

iwen_cocoa_millecrepe <- \() recipe(
  author = 'iwen', flavor = '\u53ef\u53ef\u5343\u5c42',
  egg_pc = c(eggYolk = 6, eggWhite = 6),
  sugar = 75,
  cocoa = c(KingArthur_Bensdorp_cocoa = 23),
  flour = c(KingArthur_allPurposeFlr = 240),
  salt_tsp = 1/2,
  dairy = c(Kerrygold_butter = 105,
            WegmansOrganic_whole_milk = 750), # in grams in original recipe
  starch = c(Wegmans_corn_starch = 37.5),
  youtube = 'Z7WcSVGa6R4')


qiong_cocoa_millecrepe <- \() recipe(
  author = '\u5927\u743c', flavor = '\u53ef\u53ef\u5343\u5c42', youtube = 'i8Ii4BZBkmg',
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  cocoa = c(KingArthur_Bensdorp_cocoa = 10),
  dairy = c(Kerrygold_butter = 40,
            WegmansOrganic_whole_milk = 400), # in grams in original recipe
  sugar = 50,
  flour = c(Wegmans_pastryFlr = 80))


qiong_tiramisu_millecrepe <- \() recipe(
  author = '\u5927\u743c', flavor = 'tiramisu\u0300 millecrepe', youtube = 'xiVfrjTwaHw',
  egg_pc = c(eggYolk = 2, eggWhite = 2), #
  cocoa = c(KingArthur_Bensdorp_cocoa = 8), #
  dairy = c(Kerrygold_butter = 30, #
            WegmansOrganic_whole_milk = 410), # in grams in original recipe
  # 15ml  Coffee Rum    1tbsp
  sugar = 50, #
  coffee = c(NescafeGold_blonde_coffee = 6.6), #
  flour = c(Wegmans_pastryFlr = 80)) #





amanda_matcha_millecrepe <- \() recipe(
  author = '\u66fc\u98df\u6162\u8bed', flavor = '\u62b9\u8336\u5343\u5c42',
  dairy = c(Kerrygold_butter = 50,
            WegmansOrganic_whole_milk = 650),
  flour = c(Wegmans_pastryFlr = 240),
  sugar = 90,
  egg_pc = c(eggWhite = 4, eggYolk = 4),
  matcha_tsp = c(Sencha_everyday_matcha = 4),
  youtube = 'Caopoyr53TY')



sweetTaste_matcha_millecrepe <- \() recipe(
  author = '\u4e00\u5c0f\u70b9', flavor = '\u62b9\u8336\u5343\u5c42', youtube = 'mU8rOo8_WrM',
  flour = c(Wegmans_pastryFlr = 80),
  starch = c(Wegmans_corn_starch = 15),
  matcha = c(Sencha_everyday_matcha = 5),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  sugar = 30,
  oil = c(Wegmans_vegetable_oil = 15),
  dairy = c(WegmansOrganic_whole_milk = 250) # in grams in original recipe
)


oreomachi_matcha_millecrepe <- \() recipe(
  author = 'oreomachi', flavor = '\u62b9\u8336\u5343\u5c42', youtube = '2WESa5wNK0o',
  dairy = c(Kerrygold_butter = 52,
            WegmansOrganic_whole_milk = 360,
            Wegmans_heavyCream = 140),
  sugar = 80,
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  flour = c(Wegmans_pastryFlr = 160),
  matcha = c(Sencha_everyday_matcha = 6),
  oil = c(Wegmans_vegetable_oil = 40)
  # Honey 40g ???
)


lisa_matcha_millecrepe <- \() recipe(
  author = '\u8428\u59d0', flavor = '\u62b9\u8336\u5343\u5c42', youtube = 'lP0p7qh3E1I',
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  matcha = c(Sencha_everyday_matcha = 8),
  sugar = 35,
  dairy = c(Kerrygold_butter = 30,
            Wegmans_heavyCream = 65,
            WegmansOrganic_whole_milk = 340),
  flour = c(Wegmans_pastryFlr = 90)
)

lisa_mango_millecrepe <- \() recipe(
  author = '\u8428\u59d0', 
  flavor = 'mango millecrepe', 
  youtube = '_Pz6_nKaebw',
  egg_pc = c(eggYolk = 2, eggWhite = 2), 
  sugar = 30, 
  dairy = c(Kerrygold_butter = 20,
            WegmansOrganic_whole_milk = 280), 
  flour = c(Wegmans_pastryFlr = 70) 
)


JustOne_matcha_millecrepe <- \() recipe(
  flavor = '\u62b9\u8336\u5343\u5c42', 
  just1cookbook = c('vfUu0eedUYI' = 'matcha-mille-crepe-cake'),
  misc_cup = c(
    Wegmans_whole_milk = 1.75
  ),
  sugar_Tbsp = c(Domino_granulated = 3),
  egg_pc = c(eggYolk = 3, eggWhite = 3),
  dairy = c(Kerrygold_butter = 25),
  flour = c(Wegmans_pastryFlr = 138),
  matcha_Tbsp = c(Sencha_everyday_matcha = 2),
  bakingPowder_tsp = c(TraderJoes_bakingPowder = .5))

