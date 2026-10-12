
# source('./inst/extRef/noodle.R')


# shanghai you-mian
# https://www.twinmarquis.com/products/thin-shanghai-style-plain-noodle/
# https://www.twinmarquis.com/zh-hant/products/plain-noodle-thin/





PinNuo_noodleShouGan1 <- \() recipe(
  flavor = '\u624b\u64c0\u9762',
  flour = c(KingArthur_breadFlr = 1e3), 
  salt = 10, 
  Na2CO3 = 2, 
  water = 450,
  pino = 'K8KOlkS1t3Y')

PinNuo_noodleShouGan2 <- \() recipe(
  flavor = '\u624b\u64c0\u9762',
  flour = c(KingArthur_allPurposeFlr = 1e3), 
  salt = 6, Na2CO3 = 3, water = 460,
  pino = 'ZniWDwJQPlE')

PinNuo_noodleBelt <- \() recipe(
  flavor = '\u88e4\u5e26\u9762',
  flour = c(KingArthur_allPurposeFlr = 500), 
  salt = 5, water = 230,
  pino = '1IXkEyN5_Ug')

PinNuo_noodleDrawn <- \() recipe(
  flavor = '\u62c9\u6761\u5b50/BiangBiang\u9762',
  flour = c(KingArthur_allPurposeFlr = 500), # all purpose or bread flour!
  salt = 3, water = 230,
  #lamian1 = 'ShHcRVuutpI', 
  #lamian2 = 'MkBNa4MPwFM', 
  pino = 'Qn5C_Fm_ZQA'
  #zhajiangmian = 'qqldhABtQFA'
)

PinNuo_noodleSliced <- \() recipe(
  flavor = '\u5200\u524a\u9762',
  flour = c(KingArthur_allPurposeFlr = 1e3), 
  salt = 10, water = 400,
  pino = 'GUVKci-ZIoE')


laofangu_noodle1 <- \() recipe(
  flavor = '\u709d\u9505\u9762',
  flour = c(KingArthur_allPurposeFlr = 300), 
  water = 150, egg_pc = c(eggWhite = 1),
  laofangu = '-UZI8tbAzrM')

laofangu_noodle2 <- \() recipe(
  flavor = '\u6c46\u9762',
  flour = c(KingArthur_allPurposeFlr = 500*1.5), 
  water = 300+100,
  laofangu = 'pLwoomU2pr8')
