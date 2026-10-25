

#' @export
summary.nutrition <- \(object, ...) {
  # see 'nutritionMatrix'
  return(invisible())
}


# \link[base]{summary} on \linkS4class{recipe} also dispatches here
#' @importFrom equiv4 equiv equivs
#' @method summary raw.
#' @export
summary.raw. <- \(object, ...) {
  
  x <- object; object <- NULL
  
  nutri <- x |>
    as(Class = 'nutrition')
  # setAs(from = 'raw.', to = 'nutrition')
  # setAs(from = 'recipe', to = 'nutrition')
  
  z <- c(
    nutri |>
      as.double.nutrition(
        incl_calorie = FALSE, 
        incl_usd = FALSE, 
        incl_water = FALSE, # **not** nutri@water
        incl_carbohydrate = FALSE, 
        rel = FALSE
      ),
    x |>
      as(Class = 'raw.') |>
      as.double.raw.(detail = FALSE, rel = FALSE)
  ) |>
    zero.omit()
  
  mixWheatFlr <- c(
    x['_allPurposeFlr$'] |> sum(), 
    x['_pastryFlr$'] |> sum(), 
    x['_breadFlr$'] |> sum(), 
    x['_wheatFlr$'] |> sum()
  )
  
  devrecipe <- getOption('devrecipe')

  ret <- list()
  
  ret$perRaw <- x |>
    as(Class = 'raw.') |>
    as.double.raw.(detail = FALSE, rel = TRUE) |>
    equiv(caption = 'Raw Ingredients', current = _)
  
  ret$perServing <- equiv(
    caption = 'Serving', 
    current = z / nutri@servingGram, target = if (is(x, 'recipe')) c(
      water = devrecipe$water(x), # um, this is wrong; raw-water / cooked-total
      #carbohydrate = devrecipe$carbohydrate(x),
      fat = devrecipe$fat(x), 
      bakingPowder = devrecipe$bakingPowder(x),
      starch = devrecipe$starch(x),
      alcohol = devrecipe$alcohol(x),
      sugar = devrecipe$sugar(x), 
      addedSugar = devrecipe$addedSugar(x),
      ssmOil = devrecipe$sesameOil(x),
      rattanPpOil = devrecipe$rattanPepperOil(x),
      sodium = devrecipe$sodium(x),
      drymilk = devrecipe$drymilk(x),
      creamChz = devrecipe$creamcheese(x),
      matcha = devrecipe$matcha(x),
      beet = devrecipe$beet(x),
      ginger = devrecipe$ginger.(x),
      garlic = devrecipe$garlic(x),
      whitePp = devrecipe$whitePepper(x),
      coriander = devrecipe$coriander(x),
      pumpkinSpice = devrecipe$pumpkinSpice(x),
      sesame = devrecipe$blackSesame(x),
      cocoa = devrecipe$cocoa(x),
      coffee = devrecipe$coffee(x),
      acai = devrecipe$acai(x)
    ))#)
  
  ret$perCornmeal <- equiv(
    caption = 'Cornmeal\U1f33d', 
    current = z / sum(x['_cornmeal$']), target = if (is(x, 'recipe')) c(
      flour = devrecipe$flour2cornmeal(x),
      breadFlr = devrecipe$breadFlr2cornmeal(x),
      pastryFlr = devrecipe$pastryFlr2cornmeal(x)
    ))#) 
  
  if (sum(mixWheatFlr > 0) > 1L) {
    
    ret$perMixFlr <- equiv(
      caption = 'Mixed Wheat Flour', 
      current = z / sum(mixWheatFlr), target = if (is(x, 'recipe')) c(
        water = devrecipe$water2wheatFlrMix(x),
        fat = devrecipe$fat2wheatFlrMix(x),
        bakingPowder = devrecipe$bakingPowder2wheatFlrMix(x),
        yeast = devrecipe$yeast2wheatFlrMix(x)
      ))
    
  } else {
    
    ret$perAllPurposeFlr <- if (!is(x, 'cheesecake')) equiv(
      caption = 'All-Purpose\U1f370\U1f35e Flour', 
      current = z / sum(x['_allPurposeFlr$']), target = if (is(x, 'recipe')) c(
        water = devrecipe$water2flour(x),
        fat = devrecipe$fat2flour(x),
        sesame = devrecipe$blackSesame2flour(x),
        eggYolk = devrecipe$eggYolk2flour(x),
        Na2CO3 = devrecipe$Na2CO3_2flour(x),
        bakingPowder = devrecipe$bakingPowder2flour(x),
        salt = devrecipe$salt2flour(x),
        yeast = devrecipe$yeast2flour(x)
      ))
    
    
    ret$perPastryFlr <- equiv(
      caption = 'Pastry\U1f370 Flour', 
      current = z / sum(x['_pastryFlr$']), target = if (is(x, 'recipe')) c(
        water = devrecipe$water2pastryFlr(x),
        fat = devrecipe$fat2pastryFlr(x),
        sesame = devrecipe$blackSesame2pastryFlr(x),
        eggYolk = devrecipe$eggYolk2pastryFlr(x),
        Na2CO3 = devrecipe$Na2CO3_2pastryFlr(x),
        bakingPowder = devrecipe$bakingPowder2pastryFlr(x),
        salt = devrecipe$salt2pastryFlr(x),
        yeast = devrecipe$yeast2pastryFlr(x),
        matcha = devrecipe$matcha2pastryFlr(x),
        beet = devrecipe$beet2pastryFlr(x),
        acai = devrecipe$acai2pastryFlr(x)
      ))
    
    
    ret$perBreadFlr <- equiv(
      caption = 'Bread\U1f35e Flour', 
      current = z / sum(x['_breadFlr$']), target = if (is(x, 'recipe')) c(
        fat = devrecipe$fat2breadFlr(x),
        sesame = devrecipe$blackSesame2breadFlr(x),
        eggYolk = devrecipe$eggYolk2breadFlr(x),
        Na2CO3 = devrecipe$Na2CO3_2breadFlr(x),
        bakingPowder = devrecipe$bakingPowder2breadFlr(x),
        salt = devrecipe$salt2breadFlr(x),
        yeast = devrecipe$yeast2breadFlr(x),
        matcha = devrecipe$matcha2breadFlr(x),
        beet = devrecipe$beet2breadFlr(x)
      ))
    
  }
  
  ret$perGlutenFreeFlr <- if (('_breadFlr$' %notin% x) && ('_pastryFlr$' %notin% x) && ('_allPurposeFlr$' %notin% x)) equiv(
    caption = 'Gluten-Free Flour', 
    current = z / sum(x['_gluten0Flr$']), target = if (is(x, 'recipe')) c(
      water = devrecipe$water2gluten0Flr(x),
      fat = devrecipe$fat2gluten0Flr(x),
      sesame = devrecipe$blackSesame2gluten0Flr(x),
      eggYolk = devrecipe$eggYolk2gluten0Flr(x),
      Na2CO3 = devrecipe$Na2CO3_2gluten0Flr(x),
      bakingPowder = devrecipe$bakingPowder2gluten0Flr(x),
      salt = devrecipe$salt2gluten0Flr(x),
      yeast = devrecipe$yeast2gluten0Flr(x)
    ))
  
  ret$perRiceFlr <- equiv(
    caption = 'Glutinous+Rice\U1f33e Flour', 
    current = z / sum(x['_riceFlr$|_glutRiceFlr$']), target = if (is(x, 'recipe')) c(
      water = devrecipe$water2riceFlr(x),
      glutRice = devrecipe$glutRice2riceFlr(x),
      fat = devrecipe$fat2riceFlr(x),
      starch = devrecipe$starch2riceFlr(x),
      matcha = devrecipe$matcha2riceFlr(x)
    ))
  
  ret$perCocoa <- if (!inherits(x, what = c('tiramisuMix', 'tiramisu_'))) equiv(
    caption = 'Alkalized Cocoa', 
    current = z / x['_cocoa$'], target = if (is(x, 'recipe')) c(
      alcohol = devrecipe$alcohol2cocoa(x),
      drymilk = devrecipe$drymilk2cocoa(x),
      addedSugar = devrecipe$addedSugar2cocoa(x),
      coffee = devrecipe$coffee2cocoa(x)
    ))
  
  ret$perTea <- equiv(
    caption = 'Tea\U1f343', 
    current = z / sum(x['_tea$']))
  
  ret$perCreamCheese <- equiv(
    caption = 'Cream Cheese', 
    current = z / sum(x['_creamCheese$']))
  
  out <- ret |>
    lapply(FUN = \(i) {
      names(i) <- names(i) |> 
        .repl()
      return(i)
    }) |>
    do.call(what = equivs, args = _)
  
  class(out) <- c(
    ifelse(
      test = is(x, 'recipe'), 
      yes = 'summary.recipe', 
      no = 'summary.raw.'
    ),
    class(out)
  ) |>
    unique.default()
  
  return(out)
  
}

#' @method print summary.recipe
#' @export
print.summary.recipe <- \(x, fmt_caption = '\u214c %s', ...) {
  NextMethod(generic = 'print', fmt_caption = fmt_caption, ...)
  # ?equiv4:::print.equivs
}

#' @method print summary.raw.
#' @export
print.summary.raw. <- \(x, fmt_caption = '\u214c %s', ...) {
  NextMethod(generic = 'print', fmt_caption = fmt_caption, ...)
  # ?equiv4:::print.equivs
}







