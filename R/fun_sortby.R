


#' @export
sort_by.nutritionlist <- \(x, y, ...) {
  # `y` is \link[base]{character} scalar
  m <- x |>
    as.matrix.nutritionlist()
  
  o <- order(m[, y], ...)
  
  x[o] |>
    do.call(what = nutritionlist, args = _)
  # note that only [summary.nutrition()] will be activated!!
  # input is no longer \linkS4class{recipe} nor \linkS4class{raw.} !!!
}



#' @export
sort_by.nutritionMatrix <- \(x, y, ...) {
  # `y` is \link[base]{character} scalar
  z <- x[order(x[, y], ...), , drop = FALSE]
  class(z) <- class(x)
  return(z)
}


