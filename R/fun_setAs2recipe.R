
#' @importFrom stats setNames
setAs(from = 'nutrition', to = 'recipe', def = \(from) {
  
  x <- from; from <- NULL
  
  if (!length(x@suggest)) return(invisible())
  
  list(
    #call = quote(x@call), # to pass through ?base::do.call (?)
    call = quote(quote(`<UNDEFINED>`)),
    alias = x |>
      labels.nutrition() |>
      sprintf(fmt = x@suggest_fmt) |> 
      c(),
    misc = setNames(x@servingGram, nm = as.character(x@call))
  ) |> 
    c(x@suggest) |>
    do.call(what = recipe, args = _)
  
  # how to use such recipe in `@homemade` ??
  
})



