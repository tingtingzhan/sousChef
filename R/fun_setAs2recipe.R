
#' @importFrom stats setNames
setAs(from = 'nutrition', to = 'raw.', def = \(from) {
  
  x <- from; from <- NULL
  
  if (!length(x@suggest)) return(invisible())
  
  z <- list(
    misc = setNames(x@servingGram, nm = as.character(x@call))
  ) |> 
    c(x@suggest) |>
    do.call(what = 'raw.', args = _)
  
  attr(z, which = 'name') <- x |>
    labels.nutrition() |>
    sprintf(fmt = x@suggest_fmt) |> 
    c() # \linkS4class{raw.} does not have slot `@name`
    
  return(z)
  
  # how to use such result in `@homemade` ??
  
})



