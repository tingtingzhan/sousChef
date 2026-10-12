
# read carefully
#https://www.sohu.com/a/147900654_177351



expect_no_error(
  object = nutritionlist(
    sousChef:::Dad_yolkPastry_waterDough(),
    sousChef:::Dad_oxTongue1_waterDough(), 
    sousChef:::Dad_oxTongue2_waterDough(),
    sousChef:::Dad_blackSesamePastry_waterDough(), 
    sousChef:::Dad_pepperPastry_waterDough(),
    sousChef:::laofangu_durianSu_waterDough(),
    sousChef:::Dad_flowerPastry_waterDough(), 
    sousChef:::shangshi_oxTongue_waterDough(),
    sousChef:::laofangu_magnolia_waterDough(),
    sousChef:::PinNuo_oxTongue_waterDough(),
    sousChef:::Dad_sweetPastry_waterDough()
  ) |> print()
)

expect_no_error(
  object = nutritionlist(
    sousChef:::shangshi_oxTongue_shortDough(),
    sousChef:::Dad_flowerPastry_shortDough(),
    sousChef:::Dad_oxTongue1_shortDough(),
    sousChef:::Dad_yolkPastry_shortDough(),
    sousChef:::laofangu_magnolia_shortDough(),
    sousChef:::Dad_sweetPastry_shortDough(),
    sousChef:::Dad_pepperPastry_shortDough(),
    sousChef:::laofangu_durianSu_shortDough()
  ) |> print()
)

expect_no_error(
  object = nutritionlist(
    sousChef:::Dad_blackSesamePastry_largeYouSu(),
    sousChef:::PinNuo_largeYouSu()
  ) |> print()
)


# @references
# \url{https://en.wikipedia.org/wiki/Chinese_flaky_pastry}
# \url{https://cookclimbcode.substack.com/p/chinese-flaky-pastry}

# waterDough = '\u6dee\u626c\u6c34\u6cb9\u9762\u76ae'
# shortDough = '\u5c0f\u5305\u9165'
# largeYouSu = '\u5927\u5305\u9165'













