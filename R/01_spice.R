

#' @title \linkS4class{spice}
#' 
#' @slot call \link[base]{name}, the function name to create this \linkS4class{spice}, which serves as the English name of the spice
#' 
#' @slot alias \link[base]{character} scalar, the name of spice in an alternative language
#' 
#' @slot url \link[base]{character} scalar
#' 
#' @export
setClass(Class = 'spice', slots = c(
  call = 'name',
  alias = 'character',
  url = 'character'
))






spice <- \(no_eval = .findCall(which = -2), ...) {
  
  no_eval
  
  x <- list(...)
  
  if (!length(x$call)) x$call <- no_eval
  
  if (!length(x$wiki)) {
    x$wiki <- no_eval[[2L]] |> # `no_eval` is `quote(anise)` !!
      as.character()
  }
  
  if (!length(x$url)) {
    x$url <- x$wiki |>
      sprintf(fmt = 'https://en.wikipedia.org/wiki/%s')
  }
  
  x$wiki <- NULL
  
  c(list(Class = 'spice'), x) |> 
    do.call(what = 'new', args = _)
  
}





#' @export
format.spice <- \(x, ...) {
  
  alias <- x@alias |>
    style_hyperlink(url = x@url) |>
    col_blue()
  
  name <- x@call |>
    as.character() |>
    col_br_magenta()
  
  paste0(alias, name)
}




#' @rdname spice-class
#' @param object see **Usage**
#' @export
setMethod(f = show, signature = 'spice', definition = \(object) object |> format.spice() |> cat())  







anise <- \() spice(alias = '\u8334\u82b9')

basil <- \() spice(alias = '\u7f57\u52d2')

`bay leaf` <- \() spice(
  alias = '\u6708\u6842\u53f6', 
  wiki = 'Bay_leaf')

caraway <- \() spice(alias = '\u9999\u82b9\u7c7d')

cardamom <- \() spice(alias = '\u5c0f\u8c46\u853b')

carrot <- \() spice(alias = '\u80e1\u841d\u535c\U1f955')

cilantro <- \() spice(alias = '\u82ab\u837d', wiki = 'Coriander#Leaves')
  
cinnamon <- \() spice(alias = '\u8089\u6842')

`citric acid` <- \() spice(
  alias = '\u67e0\u6aac\u9178', 
  wiki = 'Citric_acid')

clove <- \() spice(alias = '\u4e01\u9999')

coriander <- \() spice(alias = '\u82ab\u837d\u7c7d')

cumin <- \() spice(alias = '\u5b5c\u7136')

erythritol <- \() spice(alias = '\u8d64\u85d3\u7cd6\u9187')

fennel <- \() spice(alias = '\u5c0f\u8334\u9999')

`fennel seed` <- fennel

fenugreek <- \() spice(alias = '\u80e1\u82a6\u5df4')

`Kaempferia galanga` <- \() spice(alias = '\u6c99\u59dc', wiki = 'Kaempferia_galanga')

garlic <- \() spice(alias = '\u849c\U1f9c4')

ginger <- \() spice(alias = '\u59dc\U1fada')

`lavender flowers` <- \() spice(
  alias = '\u85b0\u8863\u8349',
  wiki = 'Lavandula')

`lemon zest` <- \() spice(alias = '\u67e0\u6aac\U0001f34b\u76ae')

marjoram <- \() spice(alias = '\u58a8\u89d2\u5170')

nutmeg <- \() spice(alias = '\u8089\u8c46\u853b')

onion <- \() spice(alias = '\u6d0b\u8471\U1f9c5')

`orange zest` <- \() spice(
  alias = '\u9648\U1f34a\u76ae',
  wiki = 'Zest_(ingredient)')

oregano <- \() spice(alias = '\u725b\u81f3')

paprika <- \() spice(alias = '\u7ea2\u751c\u6912')

parsley <- \() spice(alias = '\u6b27\u82b9')

`white pepper` <- \() spice(
  alias = '\u767d\u80e1\u6912', 
  wiki = 'Black_pepper#White_pepper')

`black pepper` <- \() spice(
  alias = '\u9ed1\u80e1\u6912',
  wiki = 'Black_pepper')

`red bell pepper` <- \() spice(
  alias = '\u7ea2\u751c\u6912',
  wiki = 'Bell_pepper')

rosemary <- \() spice(alias = '\u8ff7\u8fed\u9999')

sage <- \() spice(alias = '\u9f20\u5c3e\u8349')

`star anise` <- \() spice(
  alias = '\u516b\u89d2',
  wiki = 'Illicium_verum')

`sunflower oil` <- \() spice(
  alias = '\u8475\u82b1\u7c7d\U1f33b\u6cb9',
  wiki = 'Sunflower_oil')

thyme <- \() spice(alias = '\u767e\u91cc\u9999')

tomato <- \() spice(alias = '\u897f\u7ea2\u67ff\U0001f345')

`tomato granules` <- `tomato concentrate` <- tomato

turmeric <- \() spice(alias = '\u59dc\u9ec4')

`yellow mustard` <- \() spice(
  alias = '\u7f8e\u5f0f\u9ec4\u82a5\u672b', 
  wiki = 'Mustard_(condiment)#american')
