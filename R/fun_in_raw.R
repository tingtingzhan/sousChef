
setGeneric(name = '%in%', 
           where = asNamespace('sousChef'),
           useAsDefault = base::`%in%`)
setGeneric(name = '%notin%', 
           where = asNamespace('sousChef'),
           useAsDefault = base::`%notin%`)



#' @title Subset Methods of \linkS4class{raw.}
#' 
#' @param x,i,table see **Usage**
#' 
#' @name in_raw
#' @aliases %in%,character,raw.-method
#' @export
setMethod(f = '%in%', signature = c(x = 'character', table = 'raw.'), definition = \(x, table) {
  
  slotNames('raw.') |>
    setdiff(y = c('water')) |> 
    lapply(FUN = slot, object = table) |>
    unname() |>
    unlist(use.names = TRUE) |>
    names() |>
    grepl(pattern = x, x = _) |>
    any()
  
})




#' @rdname in_raw
#' @aliases %notin%,character,raw.-method
#' @export
setMethod(f = '%notin%', signature = c(x = 'character', table = 'raw.'), definition = \(x, table) !(x %in% table))





#' @rdname in_raw
#' @aliases [,raw.,character-method
#' @export
setMethod(f = '[', signature = c(x = 'raw.', i = 'character'), definition = \(x, i) {
  
  z <- slotNames('raw.') |>
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
