


xiaogaojie_bao <- \() recipe(
  flavor = '\u5305\u5b50', 
  xiaogaojie = 'M6DD504lDac',
  misc = c(
    KingArthur_allPurposeFlr = 750,
    Fleischmanns_instant_yeast = 4
  ),
  water = 450,
  portion = c(baozi = 50))


laofangu_bao1 <- \() recipe(
  flavor = '\u5305\u5b501', 
  laofangu = 'F_4A-tuLJWU',
  misc = c(
    Wegmans_pastryFlr = 500,
    Fleischmanns_instant_yeast = 5,
    TraderJoes_bakingPowder = 10,
    Wegmans_whole_milk = 30
  ),
  misc_Tbsp = c(
    Domino_granulated = 1
  ),
  water = 270,
  portion = c(baozi = 50))



#laofangu_bao2 <- \() new(
#  Class = 'laofangu', alias_flavor = '\u5305\u5b502', youtube = 'FhTVAgRwg6Q',
# misc = c(KingArthur_allPurposeFlr = 500, # did not say..
#  Fleischmanns_instant_yeast = 10,
#  Domino_granulated = 7.5),
#bakingPowder = 10, # did not say..
#  water = 300)


Dad_bao1 <- \() recipe(
  flavor = '\u9171\u8089\u5305\u5b50',
  dad1966 = '1oZPlcHmHZc',
  misc = c(
    KingArthur_allPurposeFlr = 500, # either all-purpose flour or high-protein flour: 3:38,
    Fleischmanns_instant_yeast = 5,
    Epic_lard = 10, 
    Domino_granulated = 5
  ), 
  water = 300
)

Dad_bao2 <- \() recipe(
  flavor = '\u732a\u8089\u5927\u8471/\u8304\u5b50\u8089\u9985\u5305', 
  dad1966 = 'l9gWI891tkE', 
  # same: 'YKi0Cn0iNIg',
  misc = c(
    KingArthur_allPurposeFlr = 500, # either all-purpose flour or high-protein flour: 0:32,
    Fleischmanns_instant_yeast = 5
  ), 
  water = 300)

Dad_bao3 <- \() recipe(
  flavor = '\u9999\u83c7\u8089\u4e01\u5305\u5b50', 
  dad1966 = 'ciBRu8y9ibs',
  misc = c(
    KingArthur_allPurposeFlr = 500,
    Fleischmanns_instant_yeast = 5
  ), 
  water = 270)


Dad_bao4 <- \() recipe(
  flavor = '\u8377\u53f6\u84b8\u5305\u5b50', 
  dad1966 = 'pARmud-OmB8',
  misc = c(
    KingArthur_allPurposeFlr = 500,
    Fleischmanns_instant_yeast = 5
  ), water = 280)


Dad_bao5 <- \() recipe(
  flavor = '\u7c89\u6761\u7d20\u714e\u5305\u5b50', 
  dad1966 = 'fr65f2cIduk',
  misc = c(
    KingArthur_allPurposeFlr = 500,
    Fleischmanns_instant_yeast = 5, 
    Domino_granulated = 5, 
    Morton_salt = 1
  ), water = 280)


Dad_bao6 <- \() recipe(
  flavor = '\u8c46\u6c99\u5305\u5b50', 
  dad1966 = 'oW2Q_ZpXU74',
  misc = c(
    KingArthur_breadFlr = 500,
    Fleischmanns_instant_yeast = 5, 
    Domino_granulated = 5
  ), water = 270)


Dad_bao7 <- \() recipe(
  flavor = '\u7d20\u841d\u535c\u5305', 
  dad1966 = '2_h05UfwaSE',
  misc = c(
    KingArthur_allPurposeFlr = 500,
    Fleischmanns_instant_yeast = 5
  ), 
  water = 350)



PinNuo_bao1 <- \() recipe(
  flavor = '\u5305\u5b501', 
  pino = 'WC9vGp78AIk',
  misc = c(
    KingArthur_allPurposeFlr = 500,
    Fleischmanns_instant_yeast = 4,
    TraderJoes_bakingPowder = 4,
    Epic_lard = 15, 
    Domino_granulated = 2
  ),
  water = 250)


PinNuo_bao2 <- \() recipe(
  flavor = '\u5305\u5b502', 
  pino = 'Rn9f38LAWmo',
  misc = c(
    KingArthur_allPurposeFlr = 1000,
    Fleischmanns_instant_yeast = 4, 
    Domino_granulated = 4
  ), water = 520)

PinNuo_bao3 <- \() recipe(
  flavor = '\u5305\u5b503', 
  pino = 'd3gxTvl3bCg',
  misc = c(
    KingArthur_allPurposeFlr = 1000,
    Fleischmanns_instant_yeast = 4,
    TraderJoes_bakingPowder = 5,
    Wegmans_vegetable_oil = 30,
    Domino_granulated = 3
  ), 
  water = 500)

KingArthur_bao <- \() recipe(
  flavor = '\u5305\u5b50', 
  kingarthur = 'steamed-pork-buns-xian-rou-bao-recipe', author = 'betty-liu',
  misc_cup = c(
    KingArthur_allPurposeFlr = 3,
    Wegmans_whole_milk = 1
  ),
  misc_tsp = c(
    Fleischmanns_instant_yeast = 1,
    TraderJoes_bakingPowder = .5,
    Morton_salt = .5
  ),
  misc_Tbsp = c(
    Wegmans_vegetable_oil = 1
  ))



KingArthur_huajuan <- \() recipe(
  flavor = '\u82b1\u5377',
  kingarthur = 'scallion-buns-recipe', author = 'frankie-gaw',
  misc_cup = c(
    KingArthur_breadFlr = 4
  ),
  misc_tsp = c(
    Fleischmanns_instant_yeast = 3+1,
    TraderJoes_bakingPowder = 1/2,
    ArmHammer_NaHCO3 = 1/4,
    Domino_granulated = 2,
    Morton_salt = 2
  ),
  water_cup = c(c40 = 1.5))


Daat_bao1 <- \() recipe(
  flavor = '\u5927\u5305', 
  daatgo = 'e5Y75U6GDzo',
  portion = c(bao = 90),
  misc = c(
    KingArthur_allPurposeFlr = 400,
    Wegmans_whole_milk = 226,
    TraderJoes_bakingPowder = 10,
    Fleischmanns_instant_yeast = 6, 
    Domino_granulated = 100
  ))



Daat_bao2 <- \() recipe(
  flavor = '\u732a\u8089\u5305', 
  daatgo = 'sI1k0IIAqCs',
  misc = c(
    Wegmans_pastryFlr = 510,
    BobsRedMill_tapioca_starch = 50,
    Fleischmanns_instant_yeast = 5,
    TraderJoes_bakingPowder = 8, 
    Domino_granulated = 90
  ), 
  water = 300)


#Daat_bao3 <- \() recipe(
#flavor = '\u53c9\u70e7\u5305', daatgo = 'udq9v_Osaho',
# two-dough recipe)

Daat_bao3 <- \() recipe(
  flavor = '\u6d41\u6c99\u5305', 
  daatgo = '1h6YFS2KGA0',
  misc = c(
    Wegmans_pastryFlr = 410,
    Wegmans_whole_milk = 200,
    Fleischmanns_instant_yeast = 6,
    TraderJoes_bakingPowder = 11, 
    Domino_granulated = 120
  ), 
  misc_pc = c(eggWhite = 1))



Daat_bao4 <- \() recipe(
  flavor = '\u751f\u714e\u8089\u5305', 
  daatgo = 'IbkVuffYX7Y',
  misc = c(
    Wegmans_pastryFlr = 410,
    Epic_lard = 40,
    Fleischmanns_instant_yeast = 4,
    TraderJoes_bakingPowder = 5, 
    Domino_granulated = 15
  ), 
  water = 240)



Daat_lotusBun <- \() recipe(
  flavor = '\u8377\u53f6\u997c',
  daatgo = 'y9v_g3GSA8U',
  portion = c('\u8377\u53f6\u997c' = 35), # 20-22pcs
  misc = c(
    Wegmans_pastryFlr = 400,
    Wegmans_whole_milk = 240,
    Fleischmanns_instant_yeast = 8,
    Domino_granulated = 70
  ))





shangshi_bao <- \() recipe(
  flavor = '\u5305\u5b50',
  shangshikitchen = '-JsUNhE3Kj4',
  misc = c(
    KingArthur_allPurposeFlr = 450,
    Fleischmanns_instant_yeast = 6
  ), 
  water = 250, 
  misc_tsp = c(
    Domino_granulated = 1/2
  )
)

