

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
  
  x_nutri <- x |>
    as(Class = 'nutrition')
  # setAs(from = 'raw.', to = 'nutrition')
  # setAs(from = 'recipe', to = 'nutrition')
  
  x_rawtotal <- x |>
    as.double.raw.() |> # `x` could be \linkS4class{recipe}
    sum()
  
  x_overview <- c(
    addedWater = x@water |> sum(),
    # addedSugar = x['_sugar$'] |> sum(), # wrong!! `'_sugar$'` is **not** always 100% sugar
    yeast = x['_yeast$'] |> sum(),
    salt = x['_salt$'] |> sum(), # e.g., salt-2-flour, salt-2-yeast
    NaHCO3 = x['_NaHCO3$'] |> sum(),
    Na2CO3 = x['^NaHCO3$'] |> sum(), # exact match!!
    bakingPowder = x['_bakingPowder$'] |> sum(),
    gelatin = x['_gelatin$'] |> sum(),
    matcha = x['_matcha$'] |> sum(),
    cocoa = x['_cocoa$'] |> sum(),
    coffee = x['_coffee$'] |> sum(),
    ssmOil = x['_sesame_oil$'] |> sum(),
    rattanPpOil = x['_rattanPepper_oil$'] |> sum(),
    drymilk = x['_drymilk$'] |> sum(),
    creamChz = x['_creamCheese$'] |> sum(),
    beet = x['_beet_pulv$'] |> sum(),
    acai = x['_acai_pulv$'] |> sum(),
    ginger = x['_ginger$'] |> sum(),
    cumin = x['_cumin$'] |> sum(),
    cilantro = x['_cilantro$'] |> sum(),
    garlic = x['_garlic$'] |> sum(),
    onion = x['_onion$'] |> sum(),
    whitePp = x['_whitePepper$'] |> sum(),
    blackPp = x['_blackPepper$'] |> sum(),
    turmeric = x['_turmeric$'] |> sum(),
    cinnamon = x['_cinnamon$'] |> sum(),
    paprika = x['_paprika$'] |> sum(),
    coriander = x['_coriander$'] |> sum(),
    pumpkinSpice = x['_pumpkinSpice$'] |> sum(),
    sesame = x['_blackSesame$'] |> sum(),
    coconutFlr = x['_coconutFlr$'] |> sum(),
    coconutBar = x['_coconutBar$'] |> sum(),
    flour = x['_allPurposeFlr$'] |> sum(),
    breadFlr = x['_breadFlr$'] |> sum(),
    pastryFlr = x['_pastryFlr$'] |> sum(),
    cornmeal = x['_cornmeal$'] |> sum(),
    glutRice = x['_glutRice$|_glutRiceFlr$'] |> sum(),
    eggYolk = x['^eggYolk$'] |> sum()
    # 'eggWhite' = x['^eggWhite$'] |> sum()#, # waterEvap after cooking!!
  )
  
  z <- c(
    x_nutri |>
      as.double.nutrition(
        incl_calorie = FALSE, 
        incl_usd = FALSE, 
        incl_water = FALSE, # **not** x_nutri@water
        incl_carbohydrate = FALSE, 
        rel = FALSE
      ),
    x_overview
  ) |>
    zero.omit()
  
  mixWheatFlr <- c(
    x['_allPurposeFlr$'] |> sum(), 
    x['_pastryFlr$'] |> sum(), 
    x['_breadFlr$'] |> sum(), 
    x['_wheatFlr$'] |> sum()
  )
  
  target <- if (is(x, 'recipe')) {
    xpref <- x |>
      key() |>
      paste0('_prefer')
    if (exists(xpref, envir = .GlobalEnv)) {
      do.call(what = xpref, args = list(x))
    } # else do nothing
  } # else do nothing
  
  ret <- list()
  
  ret$perRaw <- if (waterEvap(x)) {
    (x_overview / x_rawtotal) |>
      paste_names('2raw', sep = '') |>
      equiv(caption = 'Raw Ingredients', current = _, target = target) |>
      gsub_names(pattern = '2raw$', replacement = '')
  }
    
  ret$perServing <- (z / x_nutri@servingGram) |>
    equiv(caption = 'Serving', current = _, target = target)
  
  ret$perCornmeal <- (z / sum(x['_cornmeal$'])) |>
    paste_names('2cornmeal', sep = '') |>
    equiv(caption = 'Cornmeal\U1f33d', current = , target = target) |>
    gsub_names(pattern = '2cornmeal$', replacement = '')
  
  if (sum(mixWheatFlr > 0) > 1L) {
    
    ret$perMixFlr <- (z / sum(mixWheatFlr)) |>
      paste_names('2wheatFlrMix', sep = '') |>
      equiv(caption = 'Mixed Wheat Flour', current = _, target = target) |>
      gsub_names(pattern = '2wheatFlrMix$', replacement = '')
    
  } else {
    
    ret$perAllPurposeFlr <- (z / sum(x['_allPurposeFlr$'])) |>
      paste_names('2flour', sep = '') |>
      equiv(caption = 'All-Purpose\U1f370\U1f35e Flour', current = _, target = target) |>
      gsub_names(pattern = '2flour$', replacement = '')
    
    ret$perPastryFlr <- (z / sum(x['_pastryFlr$'])) |> 
      paste_names('2pastryFlr', sep = '') |>
      equiv(caption = 'Pastry\U1f370 Flour', current = _, target = target) |>
      gsub_names(pattern = '2pastryFlr$', replacement = '')

    ret$perBreadFlr <- (z / sum(x['_breadFlr$'])) |>
      paste_names('2breadFlr', sep = '') |>
      equiv(caption = 'Bread\U1f35e Flour', current = _, target = target) |>
      gsub_names(pattern = '2breadFlr$', replacement = '')
    
  }
  
  ret$perGlutenFreeFlr <- if (('_breadFlr$' %notin% x) && ('_pastryFlr$' %notin% x) && ('_allPurposeFlr$' %notin% x)) {
    (z / sum(x['_gluten0Flr$'])) |>
      paste_names('2gluten0Flr', sep = '') |>
      equiv(caption = 'Gluten-Free Flour', current = _, target = target) |>
      gsub_names(pattern = '2gluten0Flr$', replacement = '')
  }

  ret$perRiceFlr <- (z / sum(x['_riceFlr$|_glutRiceFlr$'])) |>
    paste_names('2riceFlr', sep = '') |>
    equiv(caption = 'Glutinous+Rice\U1f33e Flour', current = _, target = target) |> 
    gsub_names(pattern = '2riceFlr$', replacement = '')

  ret$perCocoa <- (z / x['_cocoa$']) |> 
    paste_names('2cocoa', sep = '') |>
    equiv(caption = 'Alkalized Cocoa', current = _, target = target) |>
    gsub_names(pattern = '2cocoa$', replacement = '')
  
  ret$perTea <- (z / sum(x['_tea$'])) |>
    equiv(caption = 'Tea\U1f343', current = _)
  
  ret$perCreamCheese <- (z / sum(x['_creamCheese$'])) |>
    equiv(caption = 'Cream Cheese', current = _)
  
  out <- ret |>
    lapply(FUN = .repl_names) |>
    do.call(what = 'equivs', args = _)
  
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







