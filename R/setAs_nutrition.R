



setAs(from = 'recipe', to = 'nutrition', def = \(from) {
  
  x <- from; from <- NULL
  
  nutri <- x |>
    as(Class = 'ingredient') |>
    as(Class = 'nutrition')
  
  x_waterEvap <- x |>
    waterEvap() # [waterEvap.recipe()]
  
  x_sugarLost <- x |>
    sugarLost() |>
    sum()
  
  nutri@name <- x |>
    labels.recipe()
  
  # `numeric() - 3` returns `numeric()` 
  nutri@servingGram <- nutri@servingGram - x_waterEvap - x_sugarLost
  nutri@sugar <- max(0, nutri@sugar - x_sugarLost)
  nutri@addedSugar <- if (length(nutri@addedSugar)) {
    max(0, nutri@addedSugar - x_sugarLost)
  } else numeric()
  nutri@water <- max(0, nutri@water - x_waterEvap) # tzh has not put @water info for all \linkS4class{nutrition} objects
  
  return(nutri)

})







