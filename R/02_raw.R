
#' @title Raw Ingredients and Recipe
#' 
#' @description 
#' \linkS4class{raw.} allows negative ingredients.
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
  object |>
    attr(which = 'name', exact = TRUE)
  # see 
  # setAs(from = 'raw.', to = 'nutrition')
  # setAs(from = 'nutrition', to = 'raw.')
}


#' @method print raw.
#' @export
print.raw. <- \(x, ...) {
  
  cat('\n')
  
  if (is(x, 'recipe')) {
    x |> 
      labels() |> # [labels.recipe]
      #col_grey() |> 
      style_bold() |> 
      cat('\n\n')
  } # else do nothing

  prt_vol(x@misc)
  prt_vol_H2O(x@water)

  cat('\n')
  
  if (sum(waterEvap(x))) {
    sum(x@misc, x@water) |>
      sprintf(fmt = '%.0f grams') |>
      make_ansi_style('deeppink4')() |>
      bg_br_yellow() |>
      style_bold() |>
      sprintf(fmt = 'Raw Total %s\n\n') |>
      cat()
  }

  x |>
    as(Class = 'nutrition') |>
    print.nutrition(prt_label = FALSE)
  
}



raw. <- \(...) {
  list(...) |>
    .cleanSlots_raw.() |>
    c(list(Class = 'raw.')) |> 
    do.call(what = 'new', args = _)
}


.cleanSlots_raw. <- \(x) {
  
  x <- x |>
    mergePc() |> 
    mergeVol() |>
    mergeVol_H2O()
    
  for (i in slotNames(x = 'raw.')) {
    if (length(x[[i]])) {
      x[[i]] <- x[[i]] |>
        zero.omit() |>
        sort.default(decreasing = TRUE)
    }
  }
  
  return(x)
  
}




#' @method as.double raw.
#' @export
as.double.raw. <- \(x, ...) {
  
  x <- x |>
    mergeH2O()
  
  # detailed ingredients
  attributes(x)[slotNames(x = 'raw.')] |>
    unname() |>
    unlist(use.names = TRUE) # no need to remove len-0 element
  
}
  

setValidity(Class = 'raw.', method = \(object) {
  
  ingredient <- object |>
    as.double.raw.()
  
  if (anyDuplicated.default(names(ingredient))) {
    stop('do not allow!!!')
  }
  
})
  
  
  

