

#' @title Row-Bind Unbalanced Vectors
#' 
#' @param ... two or more \link[base]{vector}s of the same \link[base]{storage.mode}
#' 
#' @examples
#' rbind_unbalanced(c(a = 1, b = 2), c(a = 11, c = 13))
#' rbind_unbalanced(A = c(a = 1, b = 2), B = c(a = 11, c = 13))
#' @export
rbind_unbalanced <- \(...) {
  
  dots <- list(...)
  
  dots <- dots[lengths(dots) > 0L]
  if (!length(dots)) return(invisible())
  
  nms <- dots |>
    lapply(FUN = names)
  
  nms |>
    lapply(FUN = \(i) {
      if (!length(i)) stop('each element must be named')
      if (anyNA(i) || !all(nzchar(i))) stop('each element must be named')
    })
  
  m <- dots |>
    vapply(FUN = storage.mode, FUN.VALUE = '') |>
    unique.default()
  if (length(m) != 1L) stop('all element should be one mode')
  
  rnm <- names(dots)
  if (length(rnm)) {
    if (anyNA(rnm) || !all(nzchar(rnm))) stop()
  }
  
  cnm <- nms |>
    unname() |> # in case `length(rnm)`
    do.call(what = c, args = _) |>
    unique.default() # union of names
  
  z <- switch(m, double = NA_real_, character = NA_character_, integer = NA_integer_) |>
    array(dim = c(length(dots), length(cnm)), dimnames = list(rnm, cnm))
  
  for (i in seq_along(dots)) {
    z[i, nms[[i]]] <- dots[[i]]
  }
  
  return(z)
  
}



#' @title Summation by Name
#' 
#' @description ..
#' 
#' @param ... \strong{named} \link[base]{numeric} \link[base]{vector}s
#' 
#' @return 
#' The function [sum_by_name()] returns a \link[base]{numeric} \link[base]{vector}.
#' 
#' @examples
#' sum_by_name(1, 2)
#' sum_by_name(1, c(a = 2))
#' 
#' x1 = c(a = 2, b = 3)
#' x2 = c(b = 2, c = 1)
#' x3 = c(a = 1, b = -2, c = -1)
#' sum_by_name(x1, x2, x3)
#' @export
sum_by_name <- \(...) {
  
  xs <- list(...)
  xs <- xs[lengths(xs) > 0L]
  if (!length(xs)) return(numeric())
  
  ns <- lengths(xs, use.names = FALSE)
  nms <- lapply(xs, FUN = names)
  nms_len <- lengths(nms, use.names = FALSE)
  if (all(ns == 1L)) {
    ret <- sum(unlist(xs, use.names = FALSE))
    if (all(nms_len == 0L)) return(ret)
    if (sum(nms_len) == 1L) {
      # beautiful! only one ingredient has name
      names(ret) <- nms[[which(nms_len == 1L)]]
      return(ret)
    }
  }
  
  xs |>
    do.call(what = rbind_unbalanced, args = _) |> 
    colSums(na.rm = TRUE)
  
}








# add name to len-1 vector
.addname1 <- \(x, nm = stop('no default!'), ...) {
  
  nx <- length(x)
  if (!nx) return(x) # exception
  
  if (nx == 1L) {
    xnm <- names(x)
    if (!length(xnm) || is.na(xnm) || !nzchar(xnm)) names(x) <- nm
  }
  
  xnm <- names(x) # re-do!
  if (!length(xnm) || anyNA(xnm) || !all(nzchar(xnm))) stop('ill name')
  return(x)
  
}



addname1 <- \(x, which, ...) {
  slot(x, name = which) <- slot(x, name = which) |>
    .addname1(...)
  return(x)
}


.slot_rm_zero <- \(x, name) {
  v <- slot(x, name = name)
  # generic method '+' will create 0's
  if (anyNA(v)) stop(name)
  slot(x, name = name) <- v[abs(v) > .Machine$double.eps] # len0 compatible
  return(x)
}




mergePc <- \(x, which, ...) {
  pc <- paste0(which, '_pc')
  v_pc <- slot(x, name = pc)
  if (!length(v_pc)) return(x)
  
  pieceGram <- names(v_pc) |>
    vapply(FUN = \(i) {
      eval(call(name = i))@pieceGram
    }, FUN.VALUE = NA_real_, USE.NAMES = TRUE)
  
  slot(x, name = which) <- sum_by_name(
    slot(x, name = which), 
    v_pc * pieceGram
  )
  
  slot(x, name = pc) <- numeric()
  
  return(x)
}



mergeVol_H2O <- \(x) {

  x_tsp <- sum_by_name(
    x@water_tsp,
    3 * x@water_Tbsp,
    48 * x@water_cup
  )
  
  x@water <- sum_by_name(
    x@water |> 
      .addname1(nm = 'c22'),
    4.92892 * x_tsp # tsp -> ml
  )
  x@water_tsp <- numeric()
  x@water_Tbsp <- numeric() 
  x@water_cup <- numeric() 
  return(x)
  
}


mergeVol <- \(x, which, ...) {
  
  slt <- names(getSlots(x = 'raw.'))
  
  tsp <- paste0(which, '_tsp')
  has_tsp <- tsp %in% slt
  Tbsp <- paste0(which, '_Tbsp')
  has_Tbsp <- Tbsp %in% slt
  cup <- paste0(which, '_cup')
  has_cup <- cup %in% slt
  brick <- paste0(which, '_brick')
  has_brick <- brick %in% slt
  
  x_tsp <- sum_by_name(
    if (has_tsp) .addname1(slot(x, name = tsp), ...),
    if (has_Tbsp) 3 * .addname1(slot(x, name = Tbsp), ...),
    if (has_cup) 48 * .addname1(slot(x, name = cup), ...), 
    if (has_brick) 3 * 16 * .addname1(slot(x, name = brick), ...)
  )
  
  z <- sum_by_name(
    .addname1(slot(x, name = which), ...), # weight in gram 
    gram_per_tsp(names(x_tsp)) * x_tsp
  )

  slot(x, name = which) <- z
  
  if (has_tsp) slot(x, name = tsp) <- numeric()
  if (has_Tbsp) slot(x, name = Tbsp) <- numeric() 
  if (has_cup) slot(x, name = cup) <- numeric() 
  if (has_brick) slot(x, name = brick) <- numeric()
  return(x)
  
}






#' @importFrom stats median
#' @importFrom equiv4 binlabel
median_binlabel <- \(x, ...) {
  x |>
    binlabel(median(x, na.rm = TRUE), ...)()
}

#' @importFrom equiv4 binlabel
max_binlabel <- \(x, ...) {
  x |>
    binlabel(max(x, na.rm = TRUE), ...)()
}


#' @importFrom consec cmod
fmt_min <- \(x) {
  x |>
    cmod(e2 = c(d = 60*24, hr = 60, min = 1, sec = 1/60), n = 3L)
}


#' @importFrom consec cmod
fmt_vol <- \(x, nm = names(x)) {
  
  nx <- length(x)
  if (!nx) return(character())

  x1 <- x / gram_per_tsp(nm)
  
  id <- grepl(pattern = '_butter$|_creamCheese$', x = nm)
  
  z <- character(length = nx)
  z[id] <- x1[id] |>
    cmod(e1 = _, e2 = consec::teaspoon2, n = 3L, tol = 1e-6)
  z[!id] <- x1[!id] |>
    cmod(e1 = _, e2 = consec::teaspoon, n = 3L, tol = 1e-6) 
  
  z |>
    col_br_blue() |> 
    style_bold()
}


fmt_vol_H2O <- \(x) {
  nx <- length(x)
  if (!nx) return(character())
  (x / 4.92892) |> # ml -> tsp
    cmod(e1 = _, e2 = consec::teaspoon, n = 3L, tol = 1e-6) |>
    col_br_blue() |> 
    style_bold()
}




fmt_perc <- \(x, name) {
  # `x` is \linkS4class{nutrition}
  x_ <- slot(x, name = name)
  if (!length(x_) || (x_ == 0)) return(character())
  pct <- x_ / x@servingGram
  pct |> 
    binlabel(pct, accuracy = .1)() |> 
    make_ansi_style('olivedrab')() |> 
    style_bold()
}




add_store_url_ <- \(x, name, fmt, store_brand, store_name = store_brand) {
  x_store <- slot(x, name = name)
  if (!length(x_store)) return(x)
  store_url <- sprintf(fmt = fmt, x_store)
  if (!length(x@brand)) {
    if (is.na(store_brand)) stop('must have `store_brand`')
    x@brand <- style_hyperlink(url = store_url, text = store_brand) |> c()
  } else x@url <- c(x@url, style_hyperlink(url = store_url, text = paste('\U1f6d2', store_name)))
  slot(x, name = name) <- vector(mode = typeof(x_store), length = 0L)
  return(x)
}



add_brand_url <- \(x, name, fmt, text) {
  v <- slot(x, name = name)
  if (!length(v)) return(x)
  if (length(x@brand)) {
    print(x@brand)
    print(v)
    stop('`@brand` already exists!')
  }
  x@brand <- v |> 
    sprintf(fmt = fmt) |>
    style_hyperlink(text = text) |> 
    c() # i.e., [brand_url]
  slot(x, name = name) <- switch(storage.mode(v), integer = integer(), double = double(), character = character())
  return(x)
}


brand_url <- \(x, name, fmt, text) {
  x |>
    slot(name = name) |> 
    sprintf(fmt = fmt) |>
    style_hyperlink(text = text) |> 
    c()
}



get_flavor_ <- \(x) {
  # `x` is base::character base::vector
  x |>
    lapply(FUN = \(i) eval(call(name = i))) |>
    vapply(FUN = \(i) {
      if (inherits(i, 'nutrition')) {
        i@name
      } else if (inherits(i, what = 'recipe')) {
        #i@flavor
        i@alias |> 
          gsub(pattern = 'Evaporated', replacement = '') |> 
          trimws()
      } else stop('what happens?')
    }, FUN.VALUE = '') |>
    paste(collapse = ' + ')
}



#' @importFrom stats setNames
gram_per_tsp <- \(x) {
  
  if (!length(x)) return(double())
  
  x1 <- if (is.character(x)) {
    if (anyNA(x) || !all(nzchar(x))) stop('input degenerated')
    #names(x) <- x
    x |> 
      setNames(nm = _) |>
      lapply(FUN = \(i) {
        call(name = i) |>
          eval() |>
          as(Class = 'nutrition')
      })
  } else x
  
  if (!is.recursive(x1) || !all(vapply(x1, FUN = inherits, what = 'nutrition', FUN.VALUE = NA))) 
    stop('input cannot be converted to `nutrition`')
  
  x1 |> 
    vapply(FUN = \(i) {
      if (!length(i@servingTsp)) return(NA_real_)
      i@servingGram / i@servingTsp
    }, FUN.VALUE = NA_real_, USE.NAMES = TRUE)
  
}







fmt_pc <- \(x) {
  
  # x is `raw.@fruit`, for example
  
  if (!length(x)) return(invisible())
    
  id_pc <- names(x) |>
    vapply(FUN = exists, where = asNamespace('cooking'), inherits = FALSE, FUN.VALUE = NA)
  
  v_pc <- names(x)[id_pc] |>
    lapply(FUN = \(i) {
      eval(call(name = i))
    })
  
  pieceGram <- v_pc |> 
    vapply(FUN = slot, name = 'pieceGram', FUN.VALUE = NA_real_)
    
  fmt <- v_pc |>
    vapply(FUN = slot, name = 'piece_fmt', FUN.VALUE = '')
    
  z <- character(length = length(x))
  z[id_pc] <- (x[id_pc] / pieceGram) |>
    sprintf(fmt = fmt) |> # `fmt` can be vectorized!!
    col_br_magenta() |> 
    style_bold()
  return(z)
  
}



prt_vol_H2O <- \(x) {
  
  if (!length(x)) return(invisible())
  
  z <- x |>
    fmt_vol_H2O()
  
  label <- names(x)
  label[label == 'ice'] <- '\u51b0\u5757' |>
    col_orchid4() |>
    sprintf(fmt = '%s Ice\U1f9ca Cubes')
  label[label == 'c0'] <- '0\u00b0C\u51b0\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Iced Water, 32\u00b0F')
  label[label == 'c22'] <- '22\u00b0C\u5e38\u6e29\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Water, 72\u00b0F')
  label[label == 'c40'] <- '40\u00b0C\u6e29\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Warm Water, 104\u00b0F')
  label[label == 'c70'] <- '70\u00b0C\u70ed\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Hot Water, 160\u00b0F')
  label[label == 'c80'] <- '80\u00b0C\u70ed\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Hot Water, 175\u00b0F')
  label[label == 'c90'] <- '90\u00b0C\u70ed\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Hot Water, 195\u00b0F')
  label[label == 'c95'] <- '95\u00b0C\u70ed\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Hot Water, 203\u00b0F')
  label[label == 'c100'] <- '100\u00b0C\u5f00\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Boiling Water, 212\u00b0F')
  
  sprintf(fmt = '%s %.0f grams %s\n', label, x, z) |>
    format_inline() |>
    cat()
  
}






prt_vol <- \(x) {
  
  nx <- length(x)
  if (!nx) return(invisible())
  
  nm <- x |> 
    names()
  
  ingredient <- nm |>
    lapply(FUN = \(i) eval(call(name = i)))
    
  id <- ingredient |>
    vapply(FUN = \(i) {
      if (!inherits(i, what = 'nutrition')) return(FALSE) # could be @homemade \linkS4class{recipe}
      length(i@pieceGram) > 0L
    }, FUN.VALUE = NA)
  
  z <- character(length = nx)
  z[id] <- fmt_pc(x[id])
  z[!id] <- fmt_vol(x[!id])
  
  label <- ingredient |>
    vapply(FUN = labels, FUN.VALUE = '') # [labels.nutrition] or [labels.recipe] (when dealing with `@homemade`)
    
  sprintf(fmt = '%s %.0f grams %s\n', label, x, z) |>
    format_inline() |>
    cat()
  
}



