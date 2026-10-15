
# 440 ml bottle
# presume water density, until I measured next time!!

# I buy Diet or Zero Sugar version
# but the sweetness is calculated based on sugar version

SodaStream_rootBeer <- \() nutrition(
  sodastream = 'mug-root-beer-drink-mix',
  name = 'Root Beer',
  servingGram = 19, serving_ml = 18,
  calorie = 45,
  sodium = .03,
  carbohydrate = 12, sugar = 12, addedSugar = 12,
  usd = 5.99/24,
  suggest = list(water = c(c0 = 360))
)


SodaStream_mountainDew <- \() nutrition(
  sodastream = 'sodastream-mtn-dew-drink-mix',
  name = 'Mountain Dew',
  servingGram = 19, serving_ml = 18,
  calorie = 45,
  sodium = .05,
  carbohydrate = 12, sugar = 11, addedSugar = 11,
  usd = 5.99/24, 
  suggest = list(water = c(c0 = 360)))


SodaStream_gingerAle <- \() nutrition(
  sodastream = 'ginger-ale',
  name = 'Ginger Ale',
  servingGram = 19, serving_ml = 18,
  calorie = 60,
  sodium = .035,
  carbohydrate = 15, sugar = 15, addedSugar = 15,
  usd = 5.99/24, 
  suggest = list(water = c(c0 = 360)))