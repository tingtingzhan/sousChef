



setAs(from = 'recipe', to = 'nutrition', def = \(from) {
  
  x <- from; from <- NULL
  
  nutri <- x |>
    as(Class = 'ingredient') |>
    as(Class = 'nutrition')
  
  waterEvap <- x |>
    waterEvap.recipe()
  
  sugarLost <- x |>
    get_sugarLost() |>
    sum()
  
  nutri@name <- x |>
    labels.recipe()
  
  # `numeric() - 3` returns `numeric()` 
  nutri@servingGram <- nutri@servingGram - waterEvap - sugarLost
  nutri@sugar <- max(0, nutri@sugar - sugarLost)
  nutri@addedSugar <- if (length(nutri@addedSugar)) {
    max(0, nutri@addedSugar - sugarLost)
  } else numeric()
  nutri@water <- max(0, nutri@water - waterEvap) # tzh has not put @water info for all \linkS4class{nutrition} objects
  
  return(nutri)

})







