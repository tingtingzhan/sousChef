
#' @rdname recipe
#' @param object a \linkS4class{recipe} object
#' @export
setMethod(f = show, signature = 'recipe', definition = \(object) {
  object |>
    print.recipe()
})



#' @export
print.recipe <- \(x, ...) {
  
  cat('\n')
  
  x@date |> # len0-compatible
    format.Date(format = '%A, %B %e, %Y\n') |> 
    gsub(pattern = '^ *|(?<= ) | *$', replacement = '', perl = TRUE) |>
    col_green() |> style_bold() |> cat()
  
  x |> 
    print.ingredient()
  #NextMethod(generic = 'show', object = x) # Error: no method to invoke
  #NextMethod(generic = 'print', object = x) # Error: C stack usage  7955168 is too close to the limit
  
  y <- x |>
    as(Class = 'nutrition')
  
  if (length(x@portion)) {
    r <- y@servingGram / x@portion
    sprintf(
      fmt = '\u058d %.1f \u00d7 %.0f grams %s %s %s\n', # '\u058e'
      r,
      x@portion, 
      (y@usd / r) |> 
        sprintf(fmt = '\U1f4b5%.2f') |> 
        col_green() |> style_bold(),
      if (length(y@calorie)) {
        (y@calorie / r) |> 
          sprintf(fmt = '\U1f525%.0f') |>
          col_br_red() |> style_bold() 
      } else '',
      x@portion |> 
        names() |> 
        col_magenta() |> style_bold()
    ) |> 
      cat(sep = '')
    cat('\n')
  } # else NULL
  
  x@tool |>
    lapply(FUN = show)
  
  x@pros |> 
    sprintf(fmt = '\U1f389 %s\n') |> 
    cat(sep = '')
  if (length(x@pros)) cat('\n')
  
  x@cons |> 
    sprintf(fmt = '\U1f940 %s\n') |> 
    cat(sep = '')
  if (length(x@cons)) cat('\n')
  
  if (length(x@url) || length(x@youtube)) {
    
    cat('\U1f4d6 Reference:\n')
    if (length(x@url)) cat('', x@url, sep = '\n') # len0 compatible
    if (n_ytb <- length(x@youtube)) {
      if (n_ytb != 1L) stop('only allow scalar @youtube')
      cat(' \U1f4f9', 
          x@youtube |> 
            fmtURL(fmt = 'https://youtu.be/%s', text = x@youtube), 
          '\n')
    }
    #if (length(x@doi)) cat(styleURL(url_ = sprintf(fmt = 'https://doi.org/%s', x@doi), text_ = names(x@doi)), sep = '\n')
    cat('\n')
    
  }
  
}