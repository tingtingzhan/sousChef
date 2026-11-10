

key <- \(x) UseMethod(generic = 'key')

#' @exportS3Method
key.nutrition <- \(x) {
  
  if (identical(x@call, quote(`<UNDEFINED>`))) return(character())
    
  z <- x@call |>
    as.character() |>
    strsplit(split = '_')
  z <- z[[1L]]
  
  z[length(z)]
    
}

#' @exportS3Method
key.recipe <- key.nutrition





key2alias_nutrition <- \(x) {
  
  if (length(x@alias)) return(x)
  
  xkey <- x |>
    key()
  
  if (!length(xkey)) return(x)
  # to prevent infinite recursion
  if (xkey == as.character(x@call)) return(x)
  
  if (exists(xkey, where = asNamespace('sousChef'))) {
    z <- eval(call(name = xkey))
    if (is(z, 'spice')) {
      x@alias <- z@alias
    } # else do nothing
  } else {
    x@alias <- switch(
      EXPR = xkey, 
      butter = '\u9ec4\u6cb9',
      cocoa =, cacao = '\u53ef\u53ef\u7c89',
      coffee = '\u901f\u6eb6\u5496\u5561',
      coffeeLiqueur =, espressoLiqueur = '\u5496\u5561\u9152',
      cookingWine =, Marsala =, Sherry = '\u6599\u9152',
      cornmeal = '\u7389\u7c73\U1f33d\u9762',
      creamCheese = '\u5976\u6cb9\u5976\u916a',
      curry = '\u5496\u55b1\u0b95\u0bb1\u0bbf',
      drymilk = '\u8131\u8102\u5976\u7c89',
      drywholemilk = '\u5168\u8102\u5976\u7c89',
      duck = '\u6574\u9e2d',
      gelatin = '\u5409\u5229\u4e01\u7247',
      ghee = '\u5370\u5ea6\u9165\u6cb9\u0918\u0943\u0924',
      goatKefir = '\u7f8a\u5976\u9152',
      heavyCream = '\u91cd\u5976\u6cb9',
      hotCocoa = '\u70ed\u53ef\u53ef\u51b2\u6ce1\u7c89',
      kefir = '\u5976\u9152',
      heavyCrean = '\u91cd\u5976\u6cb9',
      mapleSyrup = '\u67ab\u7cd6\u6d46',
      matcha = '\u62b9\u8336\u7c89',
      neufchatel = 'Neufcha\u0302tel\u4e73\u916a',
      pineapple = '\u83e0\u841d',
      saltedButter = '\u542b\u76d0\u9ec4\u6cb9',
      sourCream = '\u9178\u5976\u6cb9',
      soybean = '\u9ec4\u8c46',
      yeast = '\u9175\u6bcd',
      character()
    )
  }
  
  return(x)
  
}



