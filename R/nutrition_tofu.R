
tofu <- \() recipe(
  misc = c(
    Laura_soybean = 135 # small cup (45g) x3
  ),
  misc_tsp = c(
    Heinz_whiteVinegar = 7
  ),
  water = c(
    c0 = 33, 
    c22 = 1200 # 1300ml waterline
  ),
  # waterLost = 100, # in coagulation (??)
  tool = list(JoyoungDJ13U(
    treatment = c(
      'Soak dry soybeans + room-temperature water'
    ),
    program = '\u5e72\u6e7f\u8c46\u7a0b\u5e8f Dry/Soaked Beans program, 1300ml water line',
    operation = c(
      'Wait until temperature drops to 80C/175F'
    ),
    waterLost = (135 + 1200 - 1262) 
    # machine has some clean-water-spill this time (no soaking)
    # next time try soak the beans!
  )),
  review = 'FAILED!! does not coagulate..  do not know why'
)

# https://www.xiachufang.com/recipe/100128847/ # tofu with white vinegar
