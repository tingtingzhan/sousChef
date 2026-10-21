


xiaogaojie_bao <- \() recipe(
  flavor = '\u5305\u5b50', 
  xiaogaojie = 'M6DD504lDac',
  flour = c(KingArthur_allPurposeFlr = 750),
  water = 450,
  yeast = c(Fleischmanns_instant = 4),
  portion = c(baozi = 50))


laofangu_bao1 <- \() recipe(
  flavor = '\u5305\u5b501', 
  laofangu = 'F_4A-tuLJWU',
  flour = c(Wegmans_pastryFlr = 500),
  yeast = c(Fleischmanns_instant = 5),
  sugar_Tbsp = 1,
  bakingPowder = c(TraderJoes_bakingPowder = 10),
  water = 270,
  dairy = c(Wegmans_whole_milk = 30),
  portion = c(baozi = 50))



#laofangu_bao2 <- \() new(
#  Class = 'laofangu', alias_flavor = '\u5305\u5b502', youtube = 'FhTVAgRwg6Q',
# flour = 500, # did not say..
#  yeast = c(Fleischmanns_instant = 10),
#  sugar = 7.5,
#bakingPowder = 10, # did not say..
#  water = 300)


Dad_bao1 <- \() recipe(
  flavor = '\u9171\u8089\u5305\u5b50',
  dad1966 = '1oZPlcHmHZc',
  flour = c(KingArthur_allPurposeFlr = 500), # either all-purpose flour or high-protein flour: 3:38,
  yeast = c(Fleischmanns_instant = 5), sugar = 5, 
  fat = c(Epic_lard = 10), water = 300
)

Dad_bao2 <- \() recipe(
  flavor = '\u732a\u8089\u5927\u8471/\u8304\u5b50\u8089\u9985\u5305', 
  dad1966 = 'l9gWI891tkE', 
  # same: 'YKi0Cn0iNIg',
  flour = c(KingArthur_allPurposeFlr = 500), # either all-purpose flour or high-protein flour: 0:32,
  yeast = c(Fleischmanns_instant = 5), 
  water = 300)

Dad_bao3 <- \() recipe(
  flavor = '\u9999\u83c7\u8089\u4e01\u5305\u5b50', 
  dad1966 = 'ciBRu8y9ibs',
  flour = c(KingArthur_allPurposeFlr = 500), 
  yeast = c(Fleischmanns_instant = 5), 
  water = 270)


Dad_bao4 <- \() recipe(
  flavor = '\u8377\u53f6\u84b8\u5305\u5b50', 
  dad1966 = 'pARmud-OmB8',
  flour = c(KingArthur_allPurposeFlr = 500), 
  yeast = c(Fleischmanns_instant = 5), water = 280)


Dad_bao5 <- \() recipe(
  flavor = '\u7c89\u6761\u7d20\u714e\u5305\u5b50', 
  dad1966 = 'fr65f2cIduk',
  flour = c(KingArthur_allPurposeFlr = 500), 
  yeast = c(Fleischmanns_instant = 5), 
  sugar = 5, salt = 1, water = 280)


Dad_bao6 <- \() recipe(
  flavor = '\u8c46\u6c99\u5305\u5b50', 
  dad1966 = 'oW2Q_ZpXU74',
  flour = c(KingArthur_breadFlr = 500), 
  yeast = c(Fleischmanns_instant = 5), 
  sugar = 5, water = 270)


Dad_bao7 <- \() recipe(
  flavor = '\u7d20\u841d\u535c\u5305', 
  dad1966 = '2_h05UfwaSE',
  flour = c(KingArthur_allPurposeFlr = 500), 
  yeast = c(Fleischmanns_instant = 5), 
  water = 350)



PinNuo_bao1 <- \() recipe(
  flavor = '\u5305\u5b501', 
  pino = 'WC9vGp78AIk',
  flour = c(KingArthur_allPurposeFlr = 500), 
  yeast = c(Fleischmanns_instant = 4), 
  bakingPowder = c(TraderJoes_bakingPowder = 4), 
  sugar = 2, fat = c(Epic_lard = 15), 
  water = 250)


PinNuo_bao2 <- \() recipe(
  flavor = '\u5305\u5b502', 
  pino = 'Rn9f38LAWmo',
  flour = c(KingArthur_allPurposeFlr = 1000), 
  yeast = c(Fleischmanns_instant = 4), sugar = 4, water = 520)

PinNuo_bao3 <- \() recipe(
  flavor = '\u5305\u5b503', 
  pino = 'd3gxTvl3bCg',
  flour = c(KingArthur_allPurposeFlr = 1000), 
  yeast = c(Fleischmanns_instant = 4), 
  bakingPowder = c(TraderJoes_bakingPowder = 5),
  sugar = 3, 
  oil = c(Wegmans_vegetable_oil = 30), # original soybean oil
  water = 500)

KingArthur_bao <- \() recipe(
  flavor = '\u5305\u5b50', 
  kingarthur = 'steamed-pork-buns-xian-rou-bao-recipe', author = 'Joy Huang',
  flour = c(KingArthur_allPurposeFlr = 360), 
  misc_cup = c(
    Wegmans_whole_milk = 1
  ),
  yeast_tsp = c(Fleischmanns_instant = 1), salt_tsp = .5,
  bakingPowder_tsp = c(TraderJoes_bakingPowder = .5),
  oil = c(Wegmans_vegetable_oil = 14))



KingArthur_huajuan <- \() recipe(
  flavor = '\u82b1\u5377',
  kingarthur = 'scallion-buns-recipe', author = 'frankie-gaw',
  flour = c(KingArthur_breadFlr = 480),
  salt_tsp = 2,
  sugar_tsp = c(Domino_granulated = 2),
  bakingPowder_tsp = c(TraderJoes_bakingPowder = 1/2),
  NaHCO3_tsp = c(ArmHammer_NaHCO3 = 1/4),
  yeast_tsp = c(Fleischmanns_instant = 3+1),
  water_cup = c(c40 = 1.5))


Daat_bao1 <- \() recipe(
  flavor = '\u5927\u5305', 
  daatgo = 'e5Y75U6GDzo',
  portion = c(bao = 90),
  flour = c(KingArthur_allPurposeFlr = 400), 
  dairy = c(Wegmans_whole_milk = 226), sugar = 100, 
  bakingPowder = c(TraderJoes_bakingPowder = 10), 
  yeast = c(Fleischmanns_instant = 6))



Daat_bao2 <- \() recipe(
  flavor = '\u732a\u8089\u5305', 
  daatgo = 'sI1k0IIAqCs',
  flour = c(Wegmans_pastryFlr = 510), 
  starch = c(BobsRedMill_tapioca_starch = 50),
  water = 300, sugar = 90, 
  yeast = c(Fleischmanns_instant = 5), 
  bakingPowder = c(TraderJoes_bakingPowder = 8))


#Daat_bao3 <- \() recipe(
#flavor = '\u53c9\u70e7\u5305', daatgo = 'udq9v_Osaho',
# two-dough recipe)

Daat_bao3 <- \() recipe(
  flavor = '\u6d41\u6c99\u5305', 
  daatgo = '1h6YFS2KGA0',
  flour = c(Wegmans_pastryFlr = 410), 
  dairy = c(Wegmans_whole_milk = 200), 
  sugar = 120, egg_pc = c(eggWhite = 1), 
  yeast = c(Fleischmanns_instant = 6), 
  bakingPowder = c(TraderJoes_bakingPowder = 11))



Daat_bao4 <- \() recipe(
  flavor = '\u751f\u714e\u8089\u5305', 
  daatgo = 'IbkVuffYX7Y',
  flour = c(Wegmans_pastryFlr = 410), 
  water = 240, 
  yeast = c(Fleischmanns_instant = 4), sugar = 15, 
  bakingPowder = c(TraderJoes_bakingPowder = 5), 
  fat = c(Epic_lard = 40))



Daat_lotusBun <- \() recipe(
  flavor = '\u8377\u53f6\u997c',
  daatgo = 'y9v_g3GSA8U',
  portion = c('\u8377\u53f6\u997c' = 35), # 20-22pcs
  flour = c(Wegmans_pastryFlr = 400),
  dairy = c(Wegmans_whole_milk = 240),
  sugar = 70,
  yeast = c(Fleischmanns_instant = 8))





shangshi_bao <- \() recipe(
  flavor = '\u5305\u5b50',
  shangshikitchen = '-JsUNhE3Kj4',
  flour = c(KingArthur_allPurposeFlr = 450),
  water = 250, 
  yeast = c(Fleischmanns_instant = 6), 
  sugar_tsp = 1/2
)

