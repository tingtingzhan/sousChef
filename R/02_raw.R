
#' @title Raw Ingredients and Recipe
#' 
#' @description 
#' \linkS4class{raw.} allows negative ingredients.
#' 
#' @slot homemade \link[base]{numeric} \link[base]{vector}
#' 
#' @slot misc \link[base]{numeric} \link[base]{vector}, weight (in grams) of miscellaneous ingredients
#' 
#' @slot water \link[base]{numeric} \link[base]{vector}, weight (in grams) of water
#' 
#' @name raw_recipe
#' @aliases raw.-class
#' @export
setClass(
  Class = 'raw.', 
  # dQuote('raw') has a sealed class definition and cannot be redefined
  slots = c(
    homemade = 'numeric',
    misc = 'numeric',
    water = 'numeric'
  )
)








#' @rdname raw_recipe
#' @param object see **Usage**
#' @export
setMethod(f = show, signature = 'raw.', definition = \(object) print.raw.(object))



#' @method labels raw.
#' @export
labels.raw. <- \(object, ...) {
  attr(object, which = 'name', exact = TRUE) %||% 
    character() # see setAs(from = 'nutrition', to = 'raw.')
}


#' @method print raw.
#' @export
print.raw. <- \(x, ...) {
  
  cat('\n')
  
  x |> 
    labels() |> # [labels.raw.] or [labels.recipe]
    #col_grey() |> 
    style_bold() |> 
    cat('\n\n')

  prt_vol(x@homemade)
  prt_vol(x@misc)
  prt_vol_H2O(x@water)

  cat('\n')
  
  x |>
    as(Class = 'nutrition') |>
    print.nutrition(prt_label = FALSE)
  
}



raw. <- \(...) {
  
  #x <- list(...) |>
  #  .findCall(which = -2)
  
  list(...) |>
    .cleanSlots_raw.() |>
    c(list(Class = 'raw.')) |> 
    do.call(what = 'new', args = _)
  
}


.cleanSlots_raw. <- \(x) {
  
  x <- x |>
    # merge??(which = 'homemade') |> # has no vol
    mergePc() |> 
    mergeVol() |>
    mergeVol_H2O()
    
  for (i in slotNames(x = 'raw.')) {
    if (length(x[[i]])) {
      x[[i]] <- x[[i]] |>
        zero.omit() |>
        sort.default(decreasing = TRUE) # beautiful!
    }
  }
  
  return(x)
  
}



#' @importFrom stats na.omit
#' @method as.double raw.
#' @export
as.double.raw. <- \(x, detail = TRUE, rel = FALSE, ...) {
  
  x <- x |>
    mergeH2O()
  
  # detailed ingredients
  ingredient <- attributes(x)[slotNames(x = 'raw.')] |>
    unname() |>
    unlist(use.names = TRUE) |> # no need to remove len-0 element
    zero.omit()
  
  if (anyDuplicated.default(names(ingredient))) stop('do not allow!!!')
  
  z <- if (detail) {
    ingredient
  } else {
    c(
      c(
        'water'
      ) |>
        vapply(FUN = \(i) {
          v <- slot(x, name = i)
          if (!length(v)) return(NA_real_)
          return(sum(v))
        }, FUN.VALUE = NA_real_, USE.NAMES = TRUE) |>
        na.omit(),
      
      # addedSugar = x@sugar |> sum(), # wrong!! `@sugar` is **not** 100% sugar
      
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
      # 'eggWhite' = x['^eggWhite$'] |> sum()#, # waterLost after cooking!!
    )
  }
  if (!length(z)) stop('shouldnt happen!!!')
  if (rel) return(z / sum(ingredient))
  return(z)
}

  

