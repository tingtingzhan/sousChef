
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

#' @rdname S4methods
#' @aliases *,numeric,raw.-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'numeric', e2 = 'raw.'), definition = \(e1, e2) {
  e2 * e1
})

#' @rdname S4methods
#' @aliases /,raw.,numeric-method
#' @export
setMethod(f = '/', signature = signature(e1 = 'raw.', e2 = 'numeric'), definition = \(e1, e2) {
  e1 * (1/e2)
})




#' @rdname S4methods
#' @aliases *,tool,numeric-method
setMethod(f = '*', signature = signature(e1 = 'tool', e2 = 'numeric'), definition = \(e1, e2) {
  if (length(e2) != 1L || anyNA(e2)) stop('illegal `e2`')
  tool(
    name = e1@name, name2 = e1@name2, 
    alias = e1@alias,
    # other slots: all suppressed
    waterLost = e1@waterLost * e2 # !length(e1@waterLost) compatible!!
  )
})

#' @rdname S4methods
#' @aliases /,tool,numeric-method
#' @export
setMethod(f = '/', signature = signature(e1 = 'tool', e2 = 'numeric'), definition = \(e1, e2) e1 * (1/e2))





#' @rdname S4methods
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



#' @rdname S4methods
#' @aliases -,raw.,nutrition-method
#' @export
setMethod(f = '-', signature = c(e1 = 'raw.', e2 = 'nutrition'), definition = \(e1, e2) {
  e1 - as.character(e2@call)
})




#' @rdname S4methods
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

#' @rdname S4methods
#' @aliases -,raw,list-method
#' @export
setMethod(f = '-', signature = c(e1 = 'raw.', e2 = 'list'), definition = \(e1, e2) {
  # negate
  e2_n <- e2 |> 
    lapply(FUN = `-`)
  e1 + e2_n
})


#' @rdname S4methods
#' @aliases +,nutrition,list-method
#' @export
setMethod(f = '+', signature = c(e1 = 'nutrition', e2 = 'list'), definition = \(e1, e2) {
  
  e2 <- e2[lengths(e2) > 0L]
  
  txt <- character(length = length(e2))
  
  arg_nm <- names(e2)
  if (!length(arg_nm) || anyNA(arg_nm) || !all(nzchar(arg_nm))) stop('components to be subtracted must be fully named')
  
  for (i in seq_along(e2)) {
    
    inm <- arg_nm[i]
    
    ival <- e2[[i]]
    if (!is.numeric(ival) || length(ival) != 1L || is.na(ival)) { 
      arg_nm[i] |>
        sprintf(fmt = 'illegal `%s`') |> 
        stop('b')
    }
    
    txt[i] <- paste0(ifelse(ival > 0, yes = '+', no = '-'), inm)
    
    if (inm %notin% slotNames(e1)) sprintf(fmt = '`%s` is not a supported component', inm) |> stop('d')
    old <- slot(e1, name = inm)
    if (ival > old) {
      sprintf(fmt = 'too much `%s` (>%.1f grams) to be subtracted', inm, old) |> 
        stop('c')
    }
    new <- old + ival # \link[base]{names} preserved
    slot(e1, name = inm) <- if (new > 0) new else numeric()
    
    if (inm == 'sugar') {
      if (length(e1@addedSugar)) {
        e1@addedSugar <- max(0, e1@addedSugar + ival) |>
          zero.omit()
      }
      e1@carbohydrate <- e1@carbohydrate + ival
    }
    
    e1@servingGram <- e1@servingGram + ival
    # but do NOT change servingTsp !!
    
  }
  
  tmp <- txt |>
    unique.default() |>
    paste0(collapse = '/') |>
    col_grey() |> bg_br_green()
  e1@name <- paste(e1@name, tmp)
  
  e1@calorie <- numeric() # ideally I should be able to calculate this Haha
  
  e1@usd <- numeric() # etc.
  
  slt <- getSlots('nutrition')
  for (inm in setdiff(names(slt)[which(slt == 'character')], c('name', 'brand'))) {
    slot(e1, name = inm) <- character()
  }
  
  for (inm in setdiff(names(attributes(e1)), c(names(slt), 'class'))) {
    attr(e1, which = inm) <- NULL
  }
  
  return(e1)
  
  
})


#' @rdname S4methods
#' @aliases -,nutrition,list-method
#' @export
setMethod(f = '-', signature = c(e1 = 'nutrition', e2 = 'list'), definition = \(e1, e2) {
  # negate
  e2_n <- e2 |> 
    lapply(FUN = `-`)
  e1 + e2_n
})



