



#' @title \link[methods]{Arith} Methods of \linkS4class{nutrition}
#' 
#' @description
#' \link[methods]{Arith} methods involving \linkS4class{nutrition} class.
#' 
#' @param e1,e2 see **Usage**
#' 
#' @name Arith_nutrition
#' @aliases *,nutrition,numeric-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'nutrition', e2 = 'numeric'), definition = \(e1, e2) {
  if (length(e2) != 1L || anyNA(e2)) stop('illegal `e2`')
  slt <- (getSlots('nutrition') == 'numeric') |>
    which() |>
    names() |>
    setdiff(y = 'pieceGram') # important!!
  for (i in slt) {
    slot(e1, name = i) <- slot(e1, name = i) * e2
  }
  return(e1)
})


#' @rdname Arith_nutrition
#' @aliases *,numeric,nutrition-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'numeric', e2 = 'nutrition'), definition = \(e1, e2) {
  e2 * e1
})




#' @rdname Arith_nutrition
#' @aliases /,nutrition,numeric-method
#' @export
setMethod(f = '/', signature = signature(e1 = 'nutrition', e2 = 'numeric'), definition = \(e1, e2) {
  e1 * (1/e2)
})





#' @rdname Arith_nutrition
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


#' @rdname Arith_nutrition
#' @aliases -,nutrition,list-method
#' @export
setMethod(f = '-', signature = c(e1 = 'nutrition', e2 = 'list'), definition = \(e1, e2) {
  # negate
  e2_n <- e2 |> 
    lapply(FUN = `-`)
  e1 + e2_n
})




#' @rdname Arith_nutrition
#' @aliases +,nutrition,nutrition-method
#' @export
setMethod(f = '+', signature = c(e1 = 'nutrition', e2 = 'nutrition'), definition = \(e1, e2) {
  
  pc1 <- length(e1@pieceGram)
  pc2 <- length(e2@pieceGram)
  
  if (xor(pc1, pc2)) stop('two inputs must both having, or none having, `pieceGram`')
  
  if (pc1) {
    e1 <- e1 / e1@servingGram * e1@pieceGram
    e2 <- e2 / e2@servingGram * e2@pieceGram
  }
  
  (getSlots('nutrition') == 'numeric') |>
    which() |>
    names() |>
    vapply(FUN = \(i) {
      sum(
        slot(e1, name = i),
        slot(e2, name = i)
      )
    }, FUN.VALUE = NA_real_) |>
    zero.omit() |>
    as.list() |>
    c(list(
      piece_fmt = if (pc1 && (e1@piece_fmt == e2@piece_fmt)) {
        e1@piece_fmt
      } else character(),
      date = if (!is.na(e1@date) || !is.na(e2@date)) {
        min(e1@date, e2@date, na.rm = TRUE)
      } else as.Date(NA),
      url = c(e1@url, e2@url) |> 
        unique.default() |>
        ansi_string()
    ))
  
})


