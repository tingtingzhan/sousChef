



if (FALSE) {
  nutritionlist(
    Daat_soupBao(),
    xiaogaojie_soupBao(),
    PinNuo_soupBao(),
    shangshi_soupBao(),
    amanda_soupBao()
    # whiteSwan_soupBao(), # not correct??
  )
  
}


Daat_soupBao <- \() recipe(
  flavor = '\u704c\u6c64\u5305',
  daatgo = 'duldrFRGipM',
  flour = c(KingArthur_allPurposeFlr = 300),
  salt = 3,
  water = c(c40 = 175),
  fat = c(Epic_lard = 10))

xiaogaojie_soupBao <- \() recipe(
  flavor = '\u704c\u6c64\u5305',
  xiaogaojie = 'OMeWvORraxk',
  flour = c(KingArthur_allPurposeFlr = 400),
  water = c(c70 = 250))

PinNuo_soupBao <- \() recipe(
  flavor = '\u704c\u6c64\u5305',
  pino = 'EyG2mTF23Vc',
  flour = c(KingArthur_allPurposeFlr = 500),
  water = c(c100 = 100),
  salt = 3,
  water = 150)

shangshi_soupBao <- \() recipe(
  flavor = '\u704c\u6c64\u5305',
  shangshikitchen = 'SXCS1MFtA6s',
  flour = c(KingArthur_allPurposeFlr = 300),
  water = c(c70 = 160),
  salt_tsp = 1/4,
  oil_tsp = c(Wegmans_vegetable_oil = 1)
)

amanda_soupBao <- \() recipe(
  author = '\u66fc\u98df\u6162\u8bed', flavor = '\u704c\u6c64\u5305',
  youtube = 'C4khQGM-K20',
  flour = c(KingArthur_allPurposeFlr = 200),
  water = c(c70 = 105),
  salt_tsp = 1/8)

whiteSwan_soupBao <- \() recipe(
  author = '\u5929\u9e45\u7f8e\u98df', flavor = '\u704c\u6c64\u5305',
  youtube = 'WVPhZdQQ5pc',
  flour = c(KingArthur_allPurposeFlr = 250),
  water = c(c22 = 160, c100 = 160),
  egg_pc = c(eggWhite = 1),
  oil = c(Wegmans_corn_oil = 3))
