
#' @importFrom stats setNames
setAs(from = 'raw.', to = 'nutrition', def = \(from) {
  
  grams <- from |> 
    as.double.raw.(detail = TRUE, rel = FALSE)
  
  z <- grams |>
    names() |> 
    setNames(nm = _) |>
    lapply(FUN = \(i) {
      eval(call(name = i))
    })
  
  date <- z |> 
    lapply(FUN = slot, name = 'date') |>
    do.call(what = c, args = _) |>
    min(na.rm = FALSE)
  
  info <- z |>
    do.call(what = nutritionlist, args = _) |>
    as.matrix.nutritionlist(incl_usd = TRUE, incl_calorie = TRUE, rel = TRUE)
  
  z <- crossprod(grams, info)[1, , drop = TRUE]
  
  new(
    Class = 'nutrition',
    call = quote(`<UNDEFINED>`), # mark explicitly as an ill-formatted \linkS4class{nutrition}
    name = labels.raw.(from),
    date = date,
    servingGram = sum(grams),
    usd = z['usd'] |> unname(),
    calorie = z['calorie'] |> unname(),
    carbohydrate = z['carbohydrate'] |> unname(),
    fiber = z['fiber'] |> unname(),
    sugar = z['sugar'] |> unname(),
    addedSugar = max(0, z['addedSugar']) |> unname(),
    alcohol = z['alcohol'] |> unname(),
    sodium = z['sodium'] |> unname(),
    fat = z['fat'] |> unname(),
    cholesterol = z['cholesterol'] |> unname(),
    protein = z['protein'] |> unname(),
    water = z['water'] |> unname()
  )
  
})







setAs(from = 'recipe', to = 'nutrition', def = \(from) {
  
  x <- from; from <- NULL
  
  nutri <- x |>
    as(Class = 'raw.') |>
    as(Class = 'nutrition')
  
  waterLost <- x@tool |>
    lapply(FUN = \(i) i@waterLost) |> 
    unlist(use.names = FALSE) |>
    sum()
  
  nutri@name <- x |>
    labels.recipe()
  
  # `numeric() - 3` returns `numeric()` 
  nutri@servingGram <- nutri@servingGram - waterLost - sum(x@sugarLost)
  nutri@sugar <- max(0, nutri@sugar - sum(x@sugarLost))
  nutri@addedSugar <- if (length(nutri@addedSugar)) {
    max(0, nutri@addedSugar - sum(x@sugarLost))
  } else numeric()
  nutri@water <- max(0, nutri@water - waterLost) # tzh has not put @water info for all \linkS4class{nutrition} objects
  
  return(nutri)

})






#' @importFrom stats setNames
setAs(from = 'nutrition', to = 'raw.', def = \(from) {
  
  x <- from; from <- NULL
  
  if (identical(x@call, quote(`<UNDEFINED>`))) {
    # created by one of setAs()
    return(invisible())
  }
  
  z <- x@servingGram |>
    setNames(nm = as.character(x@call)) |> 
    raw.(misc = _)
    
  if (!length(x@suggest)) {
    #return(z) # no bug now :)
    return(invisible())
  }
  
  z <- z + 
    x@suggest
  # setMethod(f = '+', signature = c(e1 = 'raw.', e2 = 'list'))
  
  # \linkS4class{raw.} does not have slot `@name`
  attr(z, which = 'name') <- x |>
    labels.nutrition() |>
    sprintf(fmt = x@suggest_fmt) |> 
    c() 
  
  return(z)
  
  # how to use such result in `@homemade` ??
  
})






