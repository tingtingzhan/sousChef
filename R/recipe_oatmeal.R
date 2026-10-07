

#' @title \linkS4class{oatmeal} Recipes
#' 
#' @description
#' Oatmeal by microwave.
#' 
#' @note
#' Do not use Instant Pot; too mushy.
#' 
#' @examples 
#' coconut_oatmeal()
#' soymilk_oatmeal()
#' 
#' @export
setClass(Class = 'oatmeal', contains = 'recipe', prototype = prototype(
  class2 = 'Oatmeal',
  grain_cup = c(Quaker_oat = 1/2),
  tool = list(SamsungME21R706BAT(
    treatment = c('Soak in fridge overnight'),
    program = 'Microwave (with chilled mug)',
    minute = 2,
    note = '(optional) serve with an ice cube'
  ))
))



#' @rdname oatmeal-class
#' @export
coconut_oatmeal <- \() new(
  Class = 'oatmeal',
  beverage = c(Freenow_coconutBar = 50),
  water = 125,
  date = as.Date('2026-09-27'),
  review = 'perfect sweetness!!')





#' @rdname oatmeal-class
#' @export
soymilk_oatmeal <- \() new(
  Class = 'oatmeal',
  #grain = c(Quaker_oat = 40), # make it 50g
  #homemade = c(soymilk_DJ13U = 140),
  #syrup = c(Runamok_ryeWhisky = 5),
  
  homemade = c(soymilk_DJ13U = 175),
  syrup = c(Runamok_rum = 5),
  
  date = as.Date('2026-10-07'),
  review = 'nice!  Note on Sep 2026: probably need to reduce sugar'
)


