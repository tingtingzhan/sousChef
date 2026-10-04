


# combine water at different temperature
#' @importFrom stats setNames
setAs(from = 'raw.', to = 'raw_mergeH2O', def = \(from) {
  
  from@water <- sum_by_name(
    from@iceWater,
    from@ice,
    from@water,
    from@water40,
    from@water70,
    from@water80,
    from@water90,
    from@water95,
    from@boilingWater
  )
  
  from@iceWater <- from@ice <- from@water40 <-
    from@water70 <- from@water80 <- 
    from@water90 <- from@water95 <- 
    from@boilingWater <- numeric()
  
  z <- names(getSlots('raw.')) |>
    setNames(nm = _) |>
    lapply(FUN = slot, object = from)
  
  c(list(Class = 'raw_mergeH2O'), z[lengths(z) > 0L]) |>
    do.call(what = 'new', args = _)
    
})
