

if (FALSE) {
  RobamCT763(
    treatment = 'Brush pan with oil',
    program = 'Steam',
    fahrenheit = 180,
    minute = 3
  )
}  


Daat_CoengFan1 <- \() recipe(
  flavor = 'Coeng Fan1', 
  flour = c(Erawan_riceFlr = 150),
  starch = c(
    Argo_corn_starch = 40 + 45, 
    ManSang_wheat_starch = 30
  ),
  water = 540,
  daatgo = 'MjBaHuCq9Rg')


Daat_CoengFan2 <- \() recipe(
  flavor = 'Coeng Fan2', 
  flour = c(Erawan_riceFlr = 100),
  starch = c(
    ManSang_wheat_starch = 10, 
    BobsRedMill_tapioca_starch = 30
  ),
  water = 350,
  daatgo = '_Fr6mcXeWiY')
