
# read carefully
#https://www.sohu.com/a/147900654_177351



expect_no_error(
  object = nutritionlist(
    Dad_yolkPastry_waterDough(),
    Dad_oxTongue1_waterDough(), 
    Dad_oxTongue2_waterDough(),
    Dad_blackSesamePastry_waterDough(), 
    Dad_pepperPastry_waterDough(),
    laofangu_durianSu_waterDough(),
    Dad_flowerPastry_waterDough(), 
    shangshi_oxTongue_waterDough(),
    laofangu_magnolia_waterDough(),
    PinNuo_oxTongue_waterDough(),
    Dad_sweetPastry_waterDough()
  ) |> print()
)

expect_no_error(
  object = nutritionlist(
    shangshi_oxTongue_shortDough(),
    Dad_flowerPastry_shortDough(),
    Dad_oxTongue1_shortDough(),
    Dad_yolkPastry_shortDough(),
    laofangu_magnolia_shortDough(),
    Dad_sweetPastry_shortDough(),
    Dad_pepperPastry_shortDough(),
    laofangu_durianSu_shortDough()
  ) |> print()
)

expect_no_error(
  object = nutritionlist(
    Dad_blackSesamePastry_largeYouSu(),
    PinNuo_largeYouSu()
  ) |> print()
)


# @references
# \url{https://en.wikipedia.org/wiki/Chinese_flaky_pastry}
# \url{https://cookclimbcode.substack.com/p/chinese-flaky-pastry}

# waterDough = '\u6dee\u626c\u6c34\u6cb9\u9762\u76ae'
# shortDough = '\u5c0f\u5305\u9165'
# largeYouSu = '\u5927\u5305\u9165'













