
setGeneric(name = '%in%', 
           where = asNamespace('cooking'),
           useAsDefault = base::`%in%`)
setGeneric(name = '%notin%', 
           where = asNamespace('cooking'),
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
  
  any(grepl(pattern = x, x = names(table@spice))) ||
    any(grepl(pattern = x, x = names(table@oil))) ||
    any(grepl(pattern = x, x = names(table@puree))) ||
    any(grepl(pattern = x, x = names(table@beverage))) ||
    any(grepl(pattern = x, x = names(table@sauce))) ||
    any(grepl(pattern = x, x = names(table@dairy))) ||
    any(grepl(pattern = x, x = names(table@grain))) ||
    any(grepl(pattern = x, x = names(table@bean))) ||
    any(grepl(pattern = x, x = names(table@nut))) ||
    any(grepl(pattern = x, x = names(table@seed))) ||
    any(grepl(pattern = x, x = names(table@flour))) ||
    any(grepl(pattern = x, x = names(table@egg))) ||
    any(grepl(pattern = x, x = names(table@fat))) ||
    any(grepl(pattern = x, x = names(table@meat))) ||
    any(grepl(pattern = x, x = names(table@misc)))
  
})


#' @rdname S4methods
#' @aliases %notin%,character,raw.-method
#' @export
setMethod(f = '%notin%', signature = c(x = 'character', table = 'raw.'), definition = \(x, table) !(x %in% table))
  


#' @rdname S4methods
#' @aliases [,raw.,character-method
#' @export
setMethod(f = '[', signature = c(x = 'raw.', i = 'character'), definition = \(x, i) {
  
  if (any(id <- grepl(pattern = i, x = names(x@spice)))) return(x@spice[id])
  if (any(id <- grepl(pattern = i, x = names(x@oil)))) return(x@oil[id])
  if (any(id <- grepl(pattern = i, x = names(x@puree)))) return(x@puree[id])
  if (any(id <- grepl(pattern = i, x = names(x@beverage)))) return(x@beverage[id])
  if (any(id <- grepl(pattern = i, x = names(x@sauce)))) return(x@sauce[id])
  if (any(id <- grepl(pattern = i, x = names(x@dairy)))) return(x@dairy[id])
  if (any(id <- grepl(pattern = i, x = names(x@grain)))) return(x@grain[id])
  if (any(id <- grepl(pattern = i, x = names(x@bean)))) return(x@bean[id])
  if (any(id <- grepl(pattern = i, x = names(x@nut)))) return(x@nut[id])
  if (any(id <- grepl(pattern = i, x = names(x@seed)))) return(x@seed[id])
  if (any(id <- grepl(pattern = i, x = names(x@flour)))) return(x@flour[id])
  if (any(id <- grepl(pattern = i, x = names(x@egg)))) return(x@egg[id])
  if (any(id <- grepl(pattern = i, x = names(x@fat)))) return(x@fat[id])
  if (any(id <- grepl(pattern = i, x = names(x@meat)))) return(x@meat[id])
  if (any(id <- grepl(pattern = i, x = names(x@misc)))) return(x@misc[id])
  
  # look in more places

  return(numeric())

})

