

# According to 
# https://www.kingarthurbaking.com/pro/formulas
# Baker's percentage of water is
# added-water : flour
# water in flour is *not* included!!!














# add name to len-1 vector
addname1 <- \(x, nm = stop('no default!'), ...) {
  
  nx <- length(x)
  if (!nx) return(x) # exception
  
  if (nx == 1L) {
    xnm <- names(x)
    if (!length(xnm) || is.na(xnm) || !nzchar(xnm)) {
      names(x) <- nm
    } # else do nothing
  }
  
  xnm <- names(x) # re-do!
  if (!length(xnm) || anyNA(xnm) || !all(nzchar(xnm))) {
    stop('ill name')
  }
  
  return(x)
  
}



# nomenclature
# stats::na.omit
zero.omit <- \(x) {
  if (anyNA(x)) stop('input cannot contain missingness')
  x[abs(x) > .Machine$double.eps] # len0 compatible
}



# name clash
# ?stats::getCall


.findCall <- \(which = -2) {
  
  # default `-2` frame is determined by 
  # [.findCall]
  # helper function, 
  # e.g. [spice()], [nutrition()], [recipe()]
  
  tmp <- match.call(
    definition = sys.function(which = which), 
    call = sys.call(which = which)
  ) # let err!!
  
  z <- tmp[[1L]]
  #print(z)
  
  if (is.symbol(z)) {
    # do nothing
  } else if (as.character(z[[1L]]) %in% c('::', ':::')) {
    z <- z[[3L]]
  } else stop('unsupported ', sQuote(z))
  
  # for ?methods::new to work!!!
  call(name = 'quote', z) 
  
}


#' @importFrom equiv4 sum_by_name
mergePc <- \(x, ...) {  
  
  v <- x[['misc_pc']]
  if (!length(v)) return(x)
  
  pieceGram <- names(v) |>
    vapply(FUN = \(i) {
      eval(call(name = i))@pieceGram
    }, FUN.VALUE = NA_real_, USE.NAMES = TRUE)
  
  z <- sum_by_name(
    x[['misc']],
    v * pieceGram
  )
  
  if (length(z)) x$misc <- z
  
  x$misc_pc <- NULL
  
  return(x)
}




# combine water at different temperature
#' @importFrom stats setNames
mergeH2O <- \(x) {
  # `x` is \linkS4class{raw.}
  if (length(x@water)) {
    x@water <- x@water |>
      sum() |>
      setNames(nm = 'Wegmans_water')
  } # else do nothing
  return(x)
}



#' @importFrom equiv4 sum_by_name
mergeVol_H2O <- \(x) {

  x$water <- x[['water']] |>
    addname1(nm = 'c22')
  x$water_tsp <- x[['water_tsp']] |>
    addname1(nm = 'c22')
  x$water_Tbsp <- x[['water_Tbsp']] |>
    addname1(nm = 'c22')
  x$water_floz <- x[['water_floz']] |>
    addname1(nm = 'c22')
  x$water_cup <- x[['water_cup']] |>
    addname1(nm = 'c22')
  
  x_tsp <- sum_by_name(
    x[['water_tsp']],
    3 * x[['water_Tbsp']],
    6 * x[['water_floz']],
    48 * x[['water_cup']]
  )
  
  z <- sum_by_name(
    x[['water']],
    4.92892 * x_tsp # tsp -> ml
  )
  
  if (length(z)) x$water <- z
  
  x$water_tsp <- x$water_Tbsp <- x$water_floz <- x$water_cup <- NULL
  
  return(x)
  
}


#' @importFrom equiv4 sum_by_name
mergeVol <- \(x, ...) {
  
  x_tsp <- sum_by_name(
    x[['misc_tsp']],
    3 * x[['misc_Tbsp']],
    6 * x[['misc_floz']],
    48 * x[['misc_cup']],
    3 * 16 * x[['misc_brick']]
  )
  
  z <- sum_by_name(
    x[['misc']], # weight in gram 
    gram_per_tsp(names(x_tsp)) * x_tsp
  )

  if (length(z)) x$misc <- z
  
  x$misc_tsp <- x$misc_Tbsp <- x$misc_floz <- x$misc_cup <- x$misc_brick <- NULL
  return(x)
  
}




#' @importFrom equiv4 binlabel
max_binlabel <- \(x, ...) {
  x |>
    binlabel(max(x, na.rm = TRUE), ...)()
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



fmtURL <- \(x, fmt, text, ...) {
  x |>    
    sprintf(fmt = fmt) |>
    style_hyperlink(text = text, url = _) |> 
    c()
}



add_tool_url <- \(x, name, brand, ...) {
  v <- x[[name]]
  if (!length(v)) return(x)
  x$name <- v |>
    fmtURL(text = paste(brand, x[['name']]), ...)
  x[[name]] <- NULL
  return(x)
}





add_store_url <- \(x, name, fmt, store_brand, store_name = store_brand) {
  v <- x[[name]]
  if (!length(v)) return(x)
  store_url <- sprintf(fmt = fmt, v)
  if (!length(x$brand)) {
    if (is.na(store_brand)) stop('must have `store_brand`')
    x$brand <- style_hyperlink(url = store_url, text = store_brand) |> c()
  } else {
    x$url <- c(x$url, style_hyperlink(url = store_url, text = paste('\U1f6d2', store_name)))
  }
  x[[name]] <- NULL
  return(x)
}






add_brand_url <- \(x, name, ...) {
  v <- x[[name]]
  if (!length(v)) return(x)
  if (length(x$brand)) {
    stop('`brand` already exists!')
  }
  x$brand <- v |> 
    fmtURL(...)
  x[[name]] <- NULL
  return(x)
}




add_youtube <- \(x, name, ...) {
  v <- x[[name]]
  nv <- length(v)
  if (!nv) return(x)
  if (nv > 1L) stop('only allow len-1 ', sQuote(name))
  if (length(x[['author']])) return(x)
  x$author <- v |>
    fmtURL(fmt = 'https://youtu.be/%s', ...)
  x[[name]] <- NULL
  return(x)
}



add_youtube_recipe <- \(x, name, text1, text2, ...) {
  v <- x[[name]]
  nv <- length(v)
  if (!nv) return(x)
  if (nv > 1L) stop('only allow len-1 ', sQuote(name))
  if (length(x$author)) {
    print(x$author)
    print(v)
    stop('`@author` already exists!')
  }
  x$author <- paste(
    v |>
      names() |> # len0-name compatible!!
      fmtURL(fmt = 'https://youtu.be/%s', text = text1),
    v |>
      fmtURL(text = text2, ...)
  )
  x[[name]] <- NULL
  return(x)
}



get_key_ <- \(x, no_eval) {
  # x is \link[base]{list}
  # for [recipe()] and [nutrition()]
  if (!length(x$key)) {
    if (!identical(no_eval, quote(`<UNDEFINED>`))) {
      z <- no_eval[[2L]] |> # `no_eval` is quote(name)        
        as.character() |>
        strsplit(split = '_')
      z <- z[[1L]]
      x$key <- z[length(z)]
    } # else do nothing
  } # else do nothing
  return(x)
}


get_flavor_ <- \(x) {
  # `x` is base::character base::vector
  x |>
    lapply(FUN = \(i) eval(call(name = i))) |>
    vapply(FUN = \(i) {
      if (is(i, 'nutrition')) {
        i@name
      } else if (is(i, 'recipe')) {
        #i@flavor
        i@alias |> 
          gsub(pattern = 'Evaporated', replacement = '') |> 
          trimws()
      } else stop('what happens?')
    }, FUN.VALUE = '') |>
    paste(collapse = ' + ')
}




gram_per_tsp <- \(x) {
  
  if (!length(x)) return(double())
  
  if (!is.character(x) || anyNA(x) || !all(nzchar(x))) stop('input degenerated')
    
  x |> 
    vapply(FUN = \(i) {
      v <- call(name = i) |>
        eval() |>
        as(Class = 'nutrition')
      if (!is(v, 'nutrition')) {
        stop(sQuote(i), ' cannot be converted to `nutrition`')
      }
      if (!length(v@servingTsp)) return(NA_real_)
      v@servingGram / v@servingTsp
    }, FUN.VALUE = NA_real_, USE.NAMES = TRUE)
  
}







fmt_pc <- \(x) {
  
  # x is `raw.@fruit`, for example
  
  if (!length(x)) return(invisible())
    
  id_pc <- names(x) |>
    vapply(FUN = exists, where = asNamespace('sousChef'), inherits = FALSE, FUN.VALUE = NA)
  
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
  
  col_orchid4 <- make_ansi_style('orchid4')
  
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
  
  x <- x |>
    zero.omit()
  
  nx <- length(x)
  if (!nx) return(invisible())
  
  nm <- x |> 
    names()
  
  ingredient <- nm |>
    lapply(FUN = \(i) eval(call(name = i)))
    
  id <- ingredient |>
    vapply(FUN = \(i) {
      if (!is(i, 'nutrition')) return(FALSE) # could be @homemade \linkS4class{recipe}
      length(i@pieceGram) > 0L
    }, FUN.VALUE = NA)
  
  z <- character(length = nx)
  z[id] <- fmt_pc(x[id])
  z[!id] <- fmt_vol(x[!id])
  
  label <- ingredient |>
    vapply(FUN = labels, FUN.VALUE = '') 
  # [labels.nutrition]; or 
  # [labels.recipe] (when dealing with `@homemade`)
    
  sprintf(fmt = '%s %.0f grams %s\n', label, x, z) |>
    format_inline() |>
    cat()
  
}



