


# combine water at different temperature
#' @importFrom stats setNames
setAs(from = 'raw.', to = 'raw_mergeH2O', def = \(from) {
  
  from@water <- from@water |>
    sum() |>
    setNames(nm = 'Wegmans_water')

  z <- names(getSlots('raw.')) |>
    setNames(nm = _) |>
    lapply(FUN = slot, object = from)
  
  c(list(Class = 'raw_mergeH2O'), z[lengths(z) > 0L]) |>
    do.call(what = 'new', args = _)
    
})
