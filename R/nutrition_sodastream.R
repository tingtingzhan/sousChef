

SodaStream_dietRootBeer <- \() nutrition(
  sodastream = 'diet-root-beer',
  name = 'Diet Root Beer',
  servingGram = 440, servingCup = 1.86, # 440ml
  # I really need to find the water content!!
  usd = 5.99)

SodaStream_rootBeer <- \() nutrition(
  sodastream = 'root-beer',
  name = 'Root Beer',
  servingGram = 19, servingTsp = 3.8548, # 19ml
  # I really need to find the water content!!
  sugar = 16,
  usd = 5.99/440*19)
