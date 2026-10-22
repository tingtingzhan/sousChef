


liangpi <- \() recipe(
  misc = c(
    Wegmans_pastryFlr = 350,
    ManSang_wheat_starch = 150
  ),
  water = 800,
  review = 'try'
)



PinNuo_liangpi <- \() recipe(
  pino = 'FrpmqMfZ7CM',
  misc = c(
    KingArthur_allPurposeFlr = 350,
    ManSang_wheat_starch = 150
  ),
  water = 800)

# liangpi sauce
# https://www.youtube.com/watch?v=MpJZmQ4qXkE

ricepi <- \() recipe(
  youtube = 'cditsCOMQ4I', # 1kg dry rice + 500g boiling water
  misc = c(
    Erawan_riceFlr = 454
  ),
  water = c(c22 = 300, c100 = 454/2) # experiment! Look at PinNuo's rice paste texture!!
)


mianjin <- \() recipe(
  author = '\u591a\u6751\u9ec4\u6559\u716e', 
  youtube = 'rgmp-ulEeMk',
  misc = c(
    BobsRedMill_wheatGluten = 100,
    Fleischmanns_instant_yeast = 2
  ),
  water = 150
)
