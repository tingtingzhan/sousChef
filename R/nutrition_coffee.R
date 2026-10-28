
# NESCAFE TASTER'S CHOICE Decaf House Blend Instant Coffee
# https://www.nescafe.com/us/products/decaf-medium-light-roast-coffee-7-oz/
# review = 'too sour!!'


NescafeGold_blonde_coffee <- \() nutrition(
  nescafeGold = 'gold-espresso-blonde-instant-coffee-35-oz-jar',
  walmart = '5066099259',
  costco = '4000376082', usd = 18.99/100, date = as.Date('2026-10-24'),
  name = 'Blonde, Velvety Crema',
  servingGram = 2, servingTsp = 1,
  suggest = list(water_floz = c(c95 = 2))
)





NescafeGold_intense_coffee <- \() nutrition(
  nescafeGold = 'gold-espresso-intense-instant-coffee-35-oz-jar',
  walmart = '5066099258', usd = 10.18/50, date = as.Date('2026-10-24'),
  name = 'Intense, Velvety Crema',
  servingGram = 2, servingTsp = 1,
  suggest = list(water_floz = c(c95 = 2)),
  superior = 'NescafeGold_blonde_coffee'
)



NescafeGold_decaf_coffee <- \() nutrition(
  nescafeGold = 'gold-decaf-espresso-instant-coffee',
  walmart = '12273958388', usd = 9.97/50, date = as.Date('2026-10-24'),
  name = 'Decaf, Velvety Crema',
  servingGram = 2, servingTsp = 1,
  suggest = list(water_floz = c(c95 = 2)),
  superior = 'NescafeGold_blonde_coffee'
)



