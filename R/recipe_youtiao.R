

# https://www.youtube.com/watch?v=YoEO04dWiz0
# Chef Wang said: 
# this is a soft dough!!
# kneader machine: dont run continuously, dough overheat. Pause and restart.


# um, somebody on youtube (link forgot) said
# use pizza dough in supermarket to make youtiao!!!
# why don't ask for a pizza dough from HG Coal Fired Pizza ??



xiaogaojie_youtiao <- \() recipe(
  flavor = '\u6cb9\u6761', 
  xiaogaojie = 'uRc3F6uwR3E',
  flour = c(KingArthur_allPurposeFlr = 350),
  dairy = c(WegmansOrganic_whole_milk = 250),
  bakingPowder = c(TraderJoes_bakingPowder = 10),
  misc_tsp = c(
    ArmHammer_NaHCO3 = 1/2
  ),
  salt_tsp = 1,
  oil_Tbsp = c(Wegmans_corn_starch = 1)
)

mathstar_youtiao <- \() recipe(
  author = 'MathStar', flavor = '\u6cb9\u6761',
  url = 'https://huaren.us/showtopic.html?topicid=3003916&fid=398',
  flour = c(KingArthur_allPurposeFlr = 500),
  bakingPowder = c(TraderJoes_bakingPowder = 12), 
  yeast = c(Fleischmanns_instant_yeast = 6),
  NaHCO3 = c(ArmHammer_NaHCO3 = 3),
  salt = 6,
  oil = c(Wegmans_corn_oil = 30), 
  egg_pc = c(eggYolk = 1, eggWhite = 1),
  water = c(c22 = 280))



PinNuo_youtiao1 <- \() recipe(
  flavor = '\u6cb9\u67611', 
  pino = 'xoFcbox1VDE',
  flour = c(KingArthur_allPurposeFlr = 500),
  bakingPowder = c(TraderJoes_bakingPowder = 6), 
  NaHCO3 = c(ArmHammer_NaHCO3 = 3), salt = 5, sugar = 5,
  egg_pc = c(eggYolk = 1, eggWhite = 1), 
  dairy = c(Kerrygold_butter = 30), 
  water = c(c22 = 250))


PinNuo_youtiao2 <- \() recipe(
  flavor = '\u6cb9\u67612', 
  pino = 'cD2mJYDaXU0',
  flour = c(KingArthur_allPurposeFlr = 500),
  # NaHCO3 = c(ArmHammer_NaHCO3 = 3), #su-cui-ji = 6, # primary component NaHCO3
  NaHCO3 = c(ArmHammer_NaHCO3 = (3+6)),
  salt = 5,
  sugar = 5,
  oil = c(Wegmans_corn_oil = 40), 
  water = c(c22 = 250))


PinNuo_youtiao3 <- \() recipe(
  flavor = '\u6cb9\u67613', 
  pino = '8Af9_PiZx2Q',
  flour = c(KingArthur_allPurposeFlr = 1000),
  bakingPowder = c(TraderJoes_bakingPowder = 10), 
  # youtiao puffing mix = 10
  salt = 8, 
  sugar = 8,
  egg_pc = c(eggYolk = 2, eggWhite = 2), 
  oil = c(Wegmans_corn_oil = 60), 
  water = c(c22 = 480))

PinNuo_youtiao4 <- \() recipe(
  flavor = '\u6cb9\u67614', 
  pino = 'KAUdFDRD8l0',
  flour = c(KingArthur_allPurposeFlr = 1000),
  yeast = c(Fleischmanns_instant_yeast = 10), 
  NaHCO3 = c(ArmHammer_NaHCO3 = 5), salt = 10, sugar = 8,
  egg_pc = c(eggYolk = 2, eggWhite = 2), 
  oil = c(Wegmans_corn_oil = 30), 
  water = c(c22 = 500))


PinNuo_youtiao5 <- \() recipe(
  flavor = '\u6cb9\u67615', 
  pino = 'bKZy7TGnMbE',
  flour = c(KingArthur_allPurposeFlr = 500),
  bakingPowder = c(TraderJoes_bakingPowder = 3), salt = 3, sugar = 3,
  # youtiao puffing mix = 5
  egg_pc = c(eggYolk = 1, eggWhite = 1), 
  oil = c(Wegmans_corn_oil = 20), 
  water = c(c22 = 260))

PinNuo_youtiao6 <- \() recipe(
  flavor = '\u6cb9\u67616', 
  pino = 'YoEO04dWiz0',
  flour = c(KingArthur_allPurposeFlr = 500),
  bakingPowder = c(TraderJoes_bakingPowder = 8), 
  # youtiao su-cui mix = 5
  salt = 5, sugar = 5,
  egg_pc = c(eggYolk = 1, eggWhite = 1), 
  oil = c(Wegmans_corn_oil = 30), 
  water = c(c22 = 250))

PinNuo_youtiao7 <- \() recipe(
  flavor = '\u6cb9\u67617', 
  pino = 'cv3JhX8NbNs',
  flour = c(KingArthur_allPurposeFlr = 1000), # white sesame 60g
  bakingPowder = c(TraderJoes_bakingPowder = 15), 
  sugar = 10, salt = 10, 
  # youtiao su-cui mix = 8
  egg_pc = c(eggYolk = 2, eggWhite = 2), 
  oil = c(Wegmans_corn_oil = 60), 
  water = c(c22 = 500))
