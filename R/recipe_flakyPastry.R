
# read carefully
#https://www.sohu.com/a/147900654_177351



#' @title Chinese Flaky Pastry
#' 
#' @examples 
#' nutritionlist(
#'  sousChef:::Dad_yolkPastry_waterDough(),
#'  sousChef:::Dad_oxTongue1_waterDough(), 
#'  sousChef:::Dad_oxTongue2_waterDough(),
#'  sousChef:::Dad_blackSesamePastry_waterDough(), 
#'  sousChef:::Dad_pepperPastry_waterDough(),
#'  sousChef:::laofangu_durianSu_waterDough(),
#'  sousChef:::Dad_flowerPastry_waterDough(), 
#'  sousChef:::shangshi_oxTongue_waterDough(),
#'  sousChef:::laofangu_magnolia_waterDough(),
#'  sousChef:::PinNuo_oxTongue_waterDough(),
#'  sousChef:::Dad_sweetPastry_waterDough()
#' )
#' 
#' nutritionlist(
#'  sousChef:::shangshi_oxTongue_shortDough(),
#'  sousChef:::Dad_flowerPastry_shortDough(),
#'  sousChef:::Dad_oxTongue1_shortDough(),
#'  sousChef:::Dad_yolkPastry_shortDough(),
#'  sousChef:::laofangu_magnolia_shortDough(),
#'  sousChef:::Dad_sweetPastry_shortDough(),
#'  sousChef:::Dad_pepperPastry_shortDough(),
#'  sousChef:::laofangu_durianSu_shortDough()
#' )
#' 
#' nutritionlist(
#'  sousChef:::Dad_blackSesamePastry_largeYouSu(),
#'  sousChef:::PinNuo_largeYouSu()
#' )
#' 
#' @name Chinese_flaky_pastry
NULL


# @references
# \url{https://en.wikipedia.org/wiki/Chinese_flaky_pastry}
# \url{https://cookclimbcode.substack.com/p/chinese-flaky-pastry}

# waterDough = '\u6dee\u626c\u6c34\u6cb9\u9762\u76ae'
# shortDough = '\u5c0f\u5305\u9165'
# largeYouSu = '\u5927\u5305\u9165'


















Dad_flowerPastry_waterDough <- \() recipe(
  flavor = '\u9c9c\u82b1\u997c(\u6c34)', 
  dad1966 = 'DNnpZDUWJYk',
  flour = c(KingArthur_allPurposeFlr = 150), 
  oil = c(Wegmans_vegetable_oil = 40), sugar = 10, water = 85,
  portion = c('4x\u9c9c\u82b1\u997c(\u5927\u5305\u9165)' = 71))



Dad_flowerPastry_shortDough <- \() recipe(
  flavor = '\u9c9c\u82b1\u997c water', 
  dad1966 = 'DNnpZDUWJYk',
  flour = c(KingArthur_allPurposeFlr = 150), 
  oil = c(Wegmans_vegetable_oil = 75),
  portion = c('4x\u9c9c\u82b1\u997c(\u5927\u5305\u9165)' = 56))



Dad_oxTongue1_waterDough <- \() recipe(
  flavor = '\u725b\u820c\u997c1(\u6c34)',
  flour = c(KingArthur_allPurposeFlr = 120), 
  oil = c(Wegmans_vegetable_oil = 30), sugar = 10, water = 60,
  portion = c(
    '2x\u725b\u820c\u997c(\u5c0f\u5305\u9165)' = 35
  ),
  dad1966 = 'v4fPRmuu5dA')



Dad_oxTongue1_shortDough <- \() recipe(
  flavor = '\u725b\u820c\u997c1',
  flour = c(KingArthur_allPurposeFlr = 120),
  oil = c(Wegmans_vegetable_oil = 60),
  portion = c(
    '2x\u725b\u820c\u997c(\u5c0f\u5305\u9165)' = 30
  ),
  dad1966 = 'v4fPRmuu5dA') #c(
  #  'Dec 2020' = 'v4fPRmuu5dA',
  #  'Jan 2024' = 'XLj7W76UFbs'
  #)



shangshi_oxTongue_shortDough <- \() recipe(
  flavor = '\u725b\u820c\u997c', 
  shangshikitchen = '2maemGhLN8c',
  flour = c(KingArthur_allPurposeFlr = 140), 
  dairy = c(Kerrygold_butter = 70),
  portion = c('\u5c0f\u5305\u9165' = 13))


shangshi_oxTongue_waterDough <- \() recipe(
  flavor = '\u725b\u820c\u997c(\u6c34)',
  flour = c(KingArthur_allPurposeFlr = 200),
  portion = c('\u5c0f\u5305\u9165' = 24),
  dairy = c(Kerrygold_butter = 43), 
  sugar = 35, water = 110,
  shangshikitchen = '2maemGhLN8c')




Dad_blackSesamePastry_waterDough <- \() recipe(
  flavor = '\u9ed1\u829d\u9ebb\u9165\u997c(\u6c34)', 
  dad1966 = 'n_J9ly98Tvw',
  flour = c(KingArthur_allPurposeFlr = 300), 
  sugar = 30, water = 160, 
  fat = c(Epic_lard = 50),
  portion = c('\u5927\u5305\u9165' = 36))



Dad_blackSesamePastry_largeYouSu <- \() recipe(
  flavor = '\u9ed1\u829d\u9ebb\u9165\u997c', 
  dad1966 = 'n_J9ly98Tvw',
  flour = c(KingArthur_allPurposeFlr = 100), 
  oil = c(Mazola_corn_oil = 100),
  portion = c('\u5927\u5305\u9165' = 12.5))




Dad_yolkPastry_waterDough <- \() recipe(
  flavor = '\u54b8\u86cb\u9ec4\u9165(\u6c34)',
  flour = c(KingArthur_allPurposeFlr = 240),
  dairy = c(WegmansOrganic_ghee = 80), 
  sugar = 10, water = 120,
  dad1966 = 'j-Y4KeE69DY')


Dad_yolkPastry_shortDough <- \() recipe(
  flavor = '\u54b8\u86cb\u9ec4\u9165',
  flour = c(KingArthur_allPurposeFlr = 240),
  dairy = c(WegmansOrganic_ghee = 120),
  dad1966 = 'j-Y4KeE69DY')





PinNuo_oxTongue_waterDough <- \() recipe(
  flavor = '\u725b\u820c\u997c(\u6c34)',
  flour = c(KingArthur_allPurposeFlr = 500),
  yeast = c(Fleischmanns_instant = 4), 
  Na2CO3 = c(Na2CO3 = 1), water = 320, 
  pino = 'fC2zXSK9PxM') # this video has no largeYouSu recipe!


PinNuo_largeYouSu <- \() recipe(
  flavor = 'large you-su',
  flour = c(KingArthur_allPurposeFlr = 100),
  spice = c(SimplyOrganic_5spice = 3),
  salt = 10, oil = c(Wegmans_vegetable_oil = 120),
  pino = 'SbeWX67yd14')



laofangu_magnolia_waterDough <- \() recipe(
  flavor = '\u7389\u5170\u82b1(\u6c34)', 
  laofangu = 'h39opPVlGKo',
  flour = c(KingArthur_allPurposeFlr = 125), 
  fat = c(Epic_lard = 30), water = 80)


laofangu_magnolia_shortDough <- \() recipe(
  flavor = '\u7389\u5170\u82b1', 
  laofangu = 'h39opPVlGKo',
  flour = c(Wegmans_pastryFlr = 125), 
  fat = c(Epic_lard = 65))


Dad_pepperPastry_waterDough <- \() recipe(
  flavor = '\u6912\u76d0\u9165(\u6c34)', 
  dad1966 = 'D5bRV_pcywY',
  flour = c(KingArthur_allPurposeFlr = 400), water = 210, 
  dairy = c(Kerrygold_butter = 60))


Dad_pepperPastry_shortDough <- \() recipe(
  flavor = '\u6912\u76d0\u9165', 
  dad1966 = 'D5bRV_pcywY',
  starch = c(Wegmans_corn_starch = 150), # will be more flaky!
  dairy = c(Kerrygold_butter = 150))




laofangu_durianSu_waterDough <- \() recipe(
  flavor = '\u69b4\u83b2\u9165(\u6c34)', 
  laofangu = 'p7CExuQQWiA',
  flour = c(Wegmans_pastryFlr = 250), 
  sugar = 25, 
  fat = c(Epic_lard = 25),
  egg_pc = c(eggYolk = 1, eggWhite = 1), water = 100)


laofangu_durianSu_shortDough <- \() recipe(
  flavor = '\u69b4\u83b2\u9165', 
  laofangu = 'p7CExuQQWiA',
  flour = c(Wegmans_pastryFlr = 250), 
  dairy = c(Kerrygold_butter = 450))


Dad_sweetPastry_waterDough <- \() recipe(
  flavor = '\u7cd6\u9165\u997c(\u6c34)', 
  dad1966 = 'CEHbZrNHNG4',
  flour = c(KingArthur_allPurposeFlr = 500), 
  yeast = c(Fleischmanns_instant = 4), water = 320)

Dad_sweetPastry_shortDough <- \() recipe(
  flavor = '\u7cd6\u9165\u997c', 
  dad1966 = 'CEHbZrNHNG4',
  flour = c(KingArthur_allPurposeFlr = 300), 
  oil = c(Wegmans_vegetable_oil = 160))

Dad_oxTongue2_waterDough <- \() recipe(
  flavor = '\u725b\u820c\u997c2(\u6c34)',
  flour = c(KingArthur_allPurposeFlr = 200), 
  water = 100, 
  fat = c(Epic_lard = 60),
  dad1966 = 'XLj7W76UFbs')

