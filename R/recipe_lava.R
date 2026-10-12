



Daat_sesamelava <- \() recipe(
  flavor = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
  daatgo = 'FvS_W_qnlxc',
  seed = c(Greenmax_blackSesame = 160+20),
  # 黑芝麻酱  Black sesame paste 20g ???
  water = 450,
  sugar = 180,
  nut = c(peanut = 20), #花生酱  Peanut Butter               20g
  fat = c(Epic_lard = 20),
  flour = c(Erawan_glutRiceFlr = 20),
  dairy = c(Carnation_evapMilk = 50),
  gelatin = c(Champion_gold_gelatin = 15),
  portion = c(bao = 28))


xiaomin_sesamelava <- \() recipe(
  author = '\u5c0f\u654f', flavor = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
  youtube = 'uCbXXVp4h40',
  seed = c(Greenmax_blackSesame = 120),
  sugar = 40,
  nut = c(peanut = 30),
  fat = c(Epic_lard = 40),
  water = 20)


FancyNotes_sesamelava <- \() recipe(
  author = '\u4e54\u4e54\u5988', flavor = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
  seed = c(Greenmax_blackSesame = 150),
  sugar = 40, 
  homemade = c(xiaogaojie_invertSugar = 50), 
  dairy = c(Kerrygold_butter = 80),
  youtube = 'PC3YOs77lgE') 


xiaogaojie_sesamelava <- \() recipe(
  flavor = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
  xiaogaojie = 't-pop_dGsgc',
  seed = c(Greenmax_blackSesame = 80),
  nut = c(pecan = 30),
  sugar = 80,
  dairy = c(Kerrygold_butter = 60),
  water = 30)



daat_yolklava <- \() recipe(
  flavor = '\u54b8\u86cb\u9ec4\u6d41\u5fc3\u9985',
  egg_pc = c(eggYolk = 12), # salted duck egg yolk 12pc, 144g
  dairy = c(Kerrygold_butter = 180),
  sugar = 220,
  # custardPowder = 35, # https://www.birdscustard.co.uk
  starch = c(Wegmans_corn_starch = 35),
  gelatin = c(Champion_gold_gelatin = 12),
  water = 90,
  daatgo = '1h6YFS2KGA0')


# not a good idea
pineapple_lava <- \() recipe(
  puree = c(Dole_pineapple = 585), 
  gelatin_pc = c(Champion_gold_gelatin = 4),
  # machine (legacy) = list(Nutribullet = 'One (1) recipe calls for a full can'),
  tool = list(JoyoungCJA9U_filling(
    minute = 8,
    #waterLost = 100 # to confirmed
  )),
  review = c('Need to use gelatin=6', 'Too sour when hot, don\'t make in future.'))


#date_lava <- \() new(
#  Class = 'lava', flavor = '\u7ea2\u67a3',
#  misc = c(SunnyFruit_date = 80), )

