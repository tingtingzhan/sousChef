


liangpi <- \() recipe(
  class2 = '\u51c9\u76ae',
  flour = c(Wegmans_pastryFlr = 350),
  starch = c(ManSang_wheat_starch = 150),
  water = 800,
  review = 'try'
)



PinNuo_liangPi <- \() recipe(
  flavor = '\u51c9\u76ae', 
  pino = 'FrpmqMfZ7CM',
  flour = c(KingArthur_allPurposeFlr = 350),
  starch = c(ManSang_wheat_starch = 150),
  water = 800)

# liangpi sauce
# https://www.youtube.com/watch?v=MpJZmQ4qXkE

ricePi <- \() recipe(
  class2 = '\u7c73\u76ae',
  youtube = 'cditsCOMQ4I', # 1kg dry rice + 500g boiling water
  flour = c(Erawan_riceFlr = 454),
  water = c(c22 = 300, c100 = 454/2) # experiment! Look at PinNuo's rice paste texture!!
)


mianjin <- \() recipe(
  class2 = '\u591a\u6751\u9ec4\u6559\u716e', 
  flavor = '\u9762\u7b4b', 
  youtube = 'rgmp-ulEeMk',
  misc = c(BobsRedMill_wheatGluten = 100),
  water = 150,
  yeast = c(Fleischmanns_instant = 2)
)
