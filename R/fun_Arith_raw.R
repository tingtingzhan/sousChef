
#' @title \link[methods]{Arith} Methods of \linkS4class{raw.}
#' 
#' @description
#' \link[methods]{Arith} methods involving \linkS4class{raw.} class.
#' 
#' @param e1,e2 see **Usage**
#' 
#' @name Arith_raw
#' @aliases *,raw.,numeric-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'raw.', e2 = 'numeric'), definition = \(e1, e2) {
  if (length(e2) != 1L || anyNA(e2)) stop('illegal `e2`')
  for (i in slotNames('raw.')) {
    slot(e1, name = i) <- slot(e1, name = i) * e2
  }
  if (is(e1, 'recipe') && length(e1@tool)) {
    e1@tool <- e1@tool |>
      lapply(FUN = '*', e2 = e2)
  } # else do nothing
  return(e1)
})





#' @rdname Arith_raw
#' @aliases *,numeric,raw.-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'numeric', e2 = 'raw.'), definition = \(e1, e2) {
  e2 * e1
})



#' @rdname Arith_raw
#' @aliases /,raw.,numeric-method
#' @export
setMethod(f = '/', signature = signature(e1 = 'raw.', e2 = 'numeric'), definition = \(e1, e2) {
  e1 * (1/e2)
})





#' @rdname Arith_raw
#' @importFrom stats setNames
#' @importFrom equiv4 sum_by_name
#' @aliases +,raw.,raw.-method
#' @export
setMethod(f = '+', signature = signature(e1 = 'raw.', e2 = 'raw.'), definition = \(e1, e2) {
  
  e1 <- e1 |> 
    as(Class = 'raw.', strict = TRUE)
  e2 <- e2 |> 
    as(Class = 'raw.', strict = TRUE)
  
  ret0 <- slotNames(x = 'raw.') |>
    setNames(nm = _) |>
    lapply(FUN = \(i) {
      sum_by_name(
        slot(e1, name = i), 
        slot(e2, name = i)
      )
    })

  ret0[lengths(ret0) > 0L] |>
    do.call(what = 'raw.', args = _)
  
})


#' @rdname Arith_raw
#' @aliases -,raw.,raw.-method
#' @export
setMethod(f = '-', signature = signature(e1 = 'raw.', e2 = 'raw.'), definition = \(e1, e2) e1 + (-1) * e2)






#' @rdname Arith_raw
#' @aliases -,raw.,character-method
#' @export
setMethod(f = '-', signature = c(e1 = 'raw.', e2 = 'character'), definition = \(e1, e2) {
  
  if (e2 %in% slotNames('raw.')) {
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
  
  for (nm in slotNames('raw.')) {
    v <- slot(e1, name = nm)
    vnm <- names(v)
    id <- (vnm == e2)
    if (!any(id)) next;
    slot(e1, name = nm) <- v[!id]
    return(e1)
  }
  
})



#' @rdname Arith_raw
#' @aliases -,raw.,nutrition-method
#' @export
setMethod(f = '-', signature = c(e1 = 'raw.', e2 = 'nutrition'), definition = \(e1, e2) {
  e1 - as.character(e2@call)
})




#' @rdname Arith_raw
#' @importFrom equiv4 sum_by_name
#' @aliases +,raw.,list-method
#' @export
setMethod(f = '+', signature = c(e1 = 'raw.', e2 = 'list'), definition = \(e1, e2) {
  
  atr <- attributes(e1)
  atr$class <- NULL
  
  if (length(atr$call)) { # slot2attr
    atr$no_eval <- call(
      name = 'quote', 
      call(
        name = 'quote', 
        atr$call
      )
    )
    atr$call <- NULL
    # for [recipe()] !!!
  }
  
  atr <- atr[lengths(atr) > 0L]
  
  e2 <- e2[lengths(e2) > 0L]
  
  nm <- intersect(names(atr), names(e2))
  
  for (i in nm) { # len-0 compatible!
    atr[[i]] <- sum_by_name(atr[[i]], e2[[i]]) |>
      zero.omit()
    e2[[i]] <- NULL
  }
  
  ifelse(
    test = is(e1, 'recipe'), 
    yes = 'recipe', 
    no = 'raw.'
  ) |>
    do.call(
      what = _,
      args = c(atr, e2)
    )

})



#' @rdname Arith_raw
#' @aliases -,raw,list-method
#' @export
setMethod(f = '-', signature = c(e1 = 'raw.', e2 = 'list'), definition = \(e1, e2) {
  # negate
  e2_n <- e2 |> 
    lapply(FUN = `-`)
  e1 + e2_n
})


