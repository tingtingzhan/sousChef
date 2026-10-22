



Daat_sesamelava <- \() recipe(
  flavor = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
  daatgo = 'FvS_W_qnlxc',
  misc = c(
    Greenmax_blackSesame = 160+20,
    peanut = 20, # 花生酱  Peanut Butter               20g
    Epic_lard = 20,
    Erawan_glutRiceFlr = 20,
    Carnation_evapMilk = 50,
    Champion_gold_gelatin = 15,
    Domino_granulated = 180
  ),
  # 黑芝麻酱  Black sesame paste 20g ???
  water = 450,
  portion = c(bao = 28))


xiaomin_sesamelava <- \() recipe(
  author = '\u5c0f\u654f', flavor = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
  youtube = 'uCbXXVp4h40',
  misc = c(
    Greenmax_blackSesame = 120,
    peanut = 30,
    Epic_lard = 40,
    Domino_granulated = 40
  ),
  water = 20)


FancyNotes_sesamelava <- \() recipe(
  author = '\u4e54\u4e54\u5988', flavor = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
  misc = c(
    Greenmax_blackSesame = 150,
    Kerrygold_butter = 80,
    Domino_granulated = 40
  ), 
  homemade = c(xiaogaojie_invertSugar = 50), 
  youtube = 'PC3YOs77lgE') 


xiaogaojie_sesamelava <- \() recipe(
  flavor = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
  xiaogaojie = 't-pop_dGsgc',
  misc = c(
    Greenmax_blackSesame = 80,
    pecan = 30,
    Kerrygold_butter = 60,
    Domino_granulated = 80
  ),
  water = 30)



daat_yolklava <- \() recipe(
  flavor = '\u54b8\u86cb\u9ec4\u6d41\u5fc3\u9985',
  misc_pc = c(eggYolk = 12), # salted duck egg yolk 12pc, 144g
  misc = c(
    Kerrygold_butter = 180,
    Wegmans_corn_starch = 35,
    Champion_gold_gelatin = 12,
    Domino_granulated = 220
  ),
  # custardPowder = 35, # https://www.birdscustard.co.uk
  water = 90,
  daatgo = '1h6YFS2KGA0')


# not a good idea
pineapple_lava <- \() recipe(
  misc = c(
    Dole_pineapple = 585
  ), 
  misc_pc = c(
    Champion_gold_gelatin = 4
  ),
  # machine (legacy) = list(Nutribullet = 'One (1) recipe calls for a full can'),
  tool = list(JoyoungCJA9U_filling(
    minute = 8,
    #waterLost = 100 # to confirmed
  )),
  review = c('Need to use gelatin=6', 'Too sour when hot, don\'t make in future.'))


#date_lava <- \() new(
#  Class = 'lava', flavor = '\u7ea2\u67a3',
#  misc = c(SunnyFruit_date = 80))

