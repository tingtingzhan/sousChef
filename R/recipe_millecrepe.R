




#youtube = c(
#  'how to use rateau' = 'BeN3zKZ6qJ4',
#  'how to use ladle' = 'RIs-3KLk0gI'
#)



xiaogaojie_millecrepe <- \() recipe(
  flavor = 'millecrepe',
  misc = c(
    Wegmans_pastryFlr = 100,
    Kerrygold_butter = 25,
    WegmansOrganic_whole_milk = 300,
    Domino_granulated = 12
  ), 
  misc_pc = c(eggYolk = 2, eggWhite = 2),
  xiaogaojie = 'uZ626SU5T2I')

iwen_mango_millecrepe <- \() recipe(
  author = 'iwen', flavor = 'mango millecrepe',
  misc_pc = c(eggYolk = 6, eggWhite = 6),
  misc = c(
    Wegmans_pastryFlr = 300,
    Domino_granulated = 75,
    Kerrygold_butter = 100,
    WegmansOrganic_whole_milk = 750
  ),
  misc_tsp = c(Morton_salt = 1/2),
  youtube = 'tIOzt4XWy7k')
  

iwen_cocoa_millecrepe <- \() recipe(
  author = 'iwen', flavor = '\u53ef\u53ef\u5343\u5c42',
  misc_pc = c(eggYolk = 6, eggWhite = 6),
  misc = c(
    KingArthur_allPurposeFlr = 240,
    Wegmans_corn_starch = 37.5,
    KingArthur_Bensdorp_cocoa = 23,
    Kerrygold_butter = 105,
    WegmansOrganic_whole_milk = 750,
    Domino_granulated = 75
  ),
  misc_tsp = c(Morton_salt = 1/2),
  youtube = 'Z7WcSVGa6R4')


qiong_cocoa_millecrepe <- \() recipe(
  author = '\u5927\u743c', 
  flavor = '\u53ef\u53ef\u5343\u5c42', 
  youtube = 'i8Ii4BZBkmg',
  misc_pc = c(eggYolk = 2, eggWhite = 2),
  misc = c(
    Wegmans_pastryFlr = 80,
    KingArthur_Bensdorp_cocoa = 10,
    Kerrygold_butter = 40,
    WegmansOrganic_whole_milk = 400,
    Domino_granulated = 50
  )
)


qiong_tiramisu_millecrepe <- \() recipe(
  author = '\u5927\u743c', flavor = 'tiramisu\u0300 millecrepe', youtube = 'xiVfrjTwaHw',
  misc_pc = c(eggYolk = 2, eggWhite = 2), #
  misc = c(
    Wegmans_pastryFlr = 80,
    NescafeGold_blonde_coffee = 6.6,
    KingArthur_Bensdorp_cocoa = 8,
    Kerrygold_butter = 30, #
    WegmansOrganic_whole_milk = 410,
    Domino_granulated = 50
  ),
  misc_Tbsp = c(
    Kahlua_coffee_liqueur = 1
  )
)





amanda_matcha_millecrepe <- \() recipe(
  author = '\u66fc\u98df\u6162\u8bed', flavor = '\u62b9\u8336\u5343\u5c42',
  misc = c(
    Wegmans_pastryFlr = 240,
    Kerrygold_butter = 50,
    WegmansOrganic_whole_milk = 650,
    Domino_granulated = 90
  ),
  misc_pc = c(eggWhite = 4, eggYolk = 4),
  misc_tsp = c(
    Sencha_everyday_matcha = 4
  ),
  youtube = 'Caopoyr53TY')



sweetTaste_matcha_millecrepe <- \() recipe(
  author = '\u4e00\u5c0f\u70b9', flavor = '\u62b9\u8336\u5343\u5c42', youtube = 'mU8rOo8_WrM',
  misc = c(
    Wegmans_pastryFlr = 80,
    Wegmans_corn_starch = 15,
    Sencha_everyday_matcha = 5,
    Wegmans_vegetable_oil = 15,
    WegmansOrganic_whole_milk = 250,
    Domino_granulated = 30
  ),
  misc_pc = c(eggYolk = 2, eggWhite = 2)
)


oreomachi_matcha_millecrepe <- \() recipe(
  author = 'oreomachi', flavor = '\u62b9\u8336\u5343\u5c42', youtube = '2WESa5wNK0o',
  misc_pc = c(eggYolk = 4, eggWhite = 4),
  misc = c(
    Kerrygold_butter = 52,
    Domino_granulated = 80,
    WegmansOrganic_whole_milk = 360,
    Wegmans_heavyCream = 140,
    Wegmans_pastryFlr = 160,
    Sencha_everyday_matcha = 6,
    Wegmans_vegetable_oil = 40
  )
  # Honey 40g ???
)


lisa_matcha_millecrepe <- \() recipe(
  author = '\u8428\u59d0', flavor = '\u62b9\u8336\u5343\u5c42', youtube = 'lP0p7qh3E1I',
  misc_pc = c(eggYolk = 2, eggWhite = 2),
  misc = c(
    Wegmans_pastryFlr = 90,
    Domino_granulated = 35,
    Sencha_everyday_matcha = 8,
    Kerrygold_butter = 30,
    Wegmans_heavyCream = 65,
    WegmansOrganic_whole_milk = 340
  )
)

lisa_mango_millecrepe <- \() recipe(
  author = '\u8428\u59d0', 
  flavor = 'mango millecrepe', 
  youtube = '_Pz6_nKaebw',
  misc_pc = c(eggYolk = 2, eggWhite = 2), 
  misc = c(
    Wegmans_pastryFlr = 70, 
    Domino_granulated = 30,
    Kerrygold_butter = 20,
    WegmansOrganic_whole_milk = 280
  )
)


JustOne_matcha_millecrepe <- \() recipe(
  flavor = '\u62b9\u8336\u5343\u5c42', 
  just1cookbook = c('vfUu0eedUYI' = 'matcha-mille-crepe-cake'),
  misc_cup = c(
    Wegmans_whole_milk = 1.75
  ),
  misc_Tbsp = c(
    Domino_granulated = 3,
    Sencha_everyday_matcha = 2
  ),
  misc_pc = c(eggYolk = 3, eggWhite = 3),
  misc = c(
    Wegmans_pastryFlr = 138,
    Kerrygold_butter = 25
  ),
  misc_tsp = c(
    TraderJoes_bakingPowder = .5
  ))

