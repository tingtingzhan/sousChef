
setGeneric(name = '%in%', 
           where = asNamespace('sousChef'),
           useAsDefault = base::`%in%`)
setGeneric(name = '%notin%', 
           where = asNamespace('sousChef'),
           useAsDefault = base::`%notin%`)


#' @title `S4` Methods
#' 
#' @description
#' `S4` methods.
#' 
#' @param e1,e2 see **Usage**
#' 
#' @param x,i,table see **Usage**
#' 
#' @name S4methods
#' @aliases *,raw.,numeric-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'raw.', e2 = 'numeric'), definition = \(e1, e2) {
  e1 <- e1 |>
    as(Class = 'raw.', strict = TRUE)
  if (length(e2) != 1L || anyNA(e2)) stop('illegal `e2`')
  for (i in slotNames(e1)) {
    slot(e1, name = i) <- slot(e1, name = i) * e2
  }
  return(e1)
})

#' @rdname S4methods
#' @aliases *,numeric,raw.-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'numeric', e2 = 'raw.'), definition = \(e1, e2) e2 * e1)

#' @rdname S4methods
#' @aliases /,raw.,numeric-method
#' @export
setMethod(f = '/', signature = signature(e1 = 'raw.', e2 = 'numeric'), definition = \(e1, e2) e1 * (1/e2))



#' @rdname S4methods
#' @aliases +,raw.,raw.-method
#' @export
setMethod(f = '+', signature = signature(e1 = 'raw.', e2 = 'raw.'), definition = \(e1, e2) {
  
  e1 <- e1 |> 
    as(Class = 'raw.', strict = TRUE)
  e2 <- e2 |> 
    as(Class = 'raw.', strict = TRUE)
  
  ret0 <- names(getSlots(x = 'raw.')) |>
    setNames(nm = _) |>
    lapply(FUN = \(i) sum_by_name(slot(e1, name = i), slot(e2, name = i)))

  ret <- do.call(what = new, args = c(list(
    Class = 'raw.'
  ), ret0[lengths(ret0) > 0L]))
  return(ret)
  
})


#' @rdname S4methods
#' @aliases -,raw.,raw.-method
#' @export
setMethod(f = '-', signature = signature(e1 = 'raw.', e2 = 'raw.'), definition = \(e1, e2) e1 + (-1) * e2)





#' @rdname S4methods
#' @aliases %in%,character,raw.-method
#' @export
setMethod(f = '%in%', signature = c(x = 'character', table = 'raw.'), definition = \(x, table) {
  
  slotNames('raw.') |>
    grepv(pattern = '_tsp$|_Tbsp$|_cup$|_brick$|_pc$', invert = TRUE) |>
    setdiff(y = c('water')) |> 
    lapply(FUN = slot, object = table) |>
    unname() |>
    unlist(use.names = TRUE) |>
    names() |>
    grepl(pattern = x, x = _) |>
    any()

})


#' @rdname S4methods
#' @aliases %notin%,character,raw.-method
#' @export
setMethod(f = '%notin%', signature = c(x = 'character', table = 'raw.'), definition = \(x, table) !(x %in% table))
  


#' @rdname S4methods
#' @aliases [,raw.,character-method
#' @export
setMethod(f = '[', signature = c(x = 'raw.', i = 'character'), definition = \(x, i) {
  
  z <- slotNames('raw.') |>
    grepv(pattern = '_tsp$|_Tbsp$|_cup$|_brick$|_pc$', invert = TRUE) |>
    setdiff(y = c('water')) |> 
    lapply(FUN = slot, object = x) |>
    unname() |>
    unlist(use.names = TRUE)
    
  id <- z |>
    names() |>
    grepl(pattern = i, x = _)
  
  if (any(id)) return(z[id])
  return(numeric())

})


#' @rdname S4methods
#' @aliases -,raw.,character-method
#' @export
setMethod(f = '-', signature = c(e1 = 'raw.', e2 = 'character'), definition = \(e1, e2) {
  
  if (e2 %in% names(getSlots('raw.'))) {
    slot(e1, name = e2) <- numeric()
    return(e1)
  }
  
  nm1 <- e1 |>
    as.double.raw.(detail = TRUE, rel = FALSE) |>
    names()
  id <- (nm1 == e2)
  if (!sum(id)) {
    warning(sQuote(e2), ' does not exist in `e1`')
    return(e1)
  }
  if (sum(id) > 1L) stop('already prevented by as.double.raw.()')
  
  for (nm in names(getSlots('raw.'))) {
    v <- slot(e1, name = nm)
    vnm <- names(v)
    id <- (vnm == e2)
    if (!any(id)) next;
    slot(e1, name = nm) <- v[!id]
    return(e1)
  }
  
})



#' @rdname S4methods
#' @aliases -,raw.,nutrition-method
#' @export
setMethod(f = '-', signature = c(e1 = 'raw.', e2 = 'nutrition'), definition = \(e1, e2) {
  e1 - as.character(e2@call)
})
