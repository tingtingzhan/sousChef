

# According to 
# https://www.kingarthurbaking.com/pro/formulas
# Baker's percentage of water is
# added-water : flour
# water in flour is *not* included!!!


if (FALSE) {
  character(0) |> 
    cat(sep = '\n') # an empty line
  character(0) |> 
    sprintf(fmt = '%s\n') |>
    cat(sep = '') # no empty line. preferred!!
}











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


call2alias_nutrition <- \(x) {
  if (!length(x@alias)) return(x)
  if (grepl(pattern = '\\.run', as.character(x@alias))) return(x) 
  
  x@alias <- x@alias |>
    .cli_run(
      pkg = 'sousChef',
      fun = as.character(x@call)
    )
  return(x)
}




# ansiURL('https://www.google.com')
ansiURL <- \(x) {
  if (length(x) != 1L) stop()
  if (ansi_has_any(x, link = TRUE)) return(x)
  x |>
    gsub('^https://|^http://', replacement = '', x = _) |> 
    style_hyperlink(url = x, text = _)
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




mergeUSD <- \(x, ...) {
  
  x$usd <- min(
    x$usd,
    x$jpy / 153.507,
    # x$jpy / quantmod::getQuote('USDJPY=X')$Last 
    # may cause devtools::check() error
    na.rm = TRUE
  ) |>
    suppressWarnings() # min(numeric()) # has warning
  
  if (is.infinite(x$usd)) x$usd <- NULL
  
  x$jpy <- NULL
  
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
    style_hyperlink(text = text, url = _)
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
    x$brand <- style_hyperlink(url = store_url, text = store_brand)
  } else {
    x$url <- c(
      x$url, 
      style_hyperlink(url = store_url, text = paste('\U1f6d2', store_name))
    ) |>
      ansi_string()
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


add_author_url <- \(x, name, ..., text = x[['author']]) {
  v <- x[[name]]
  nv <- length(v)
  if (!nv) return(x)
  if (nv > 1L) stop('only allow len-1 ', sQuote(name))
  if (!length(text)) return(x)
  x$author <- v |>
    fmtURL(text = text, ...)
  x[[name]] <- NULL
  return(x)
}


add_author_url1 <- \(x) {
  n_aut <- length(x$author)
  if (!n_aut) return(x)
  if (n_aut != 1L) stop('@author must be len-1')
  if (ansi_has_any(x$author, link = TRUE)) return(x)
  if (!length(x$url)) return(x)
  x$author <- x$url[1L] |>
    style_hyperlink(url = _, text = x$author)
  x$url <- x$url[-1L]
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
  ) |>
    ansi_string()
  x[[name]] <- NULL
  return(x)
}


append_url <- \(x, name, ...) {
  if (!length(x[[name]])) return(x)
  x$url <- c(
    x$url, 
    x[[name]] |> fmtURL(...)
  ) |>
    ansi_string()
  x[[name]] <- NULL
  return(x)
}



get_sugarLost <- \(x) {
  
  if ('_yeast$' %in% x) {
    z <- if (key(x) %in% c('bao')) {
      # After one hour brew time, ~0.35 grams of sugar per gram of yeast have been consumed, 
      # leaving ~0.65 grams of unfermented sugar per gram of yeast.
      # https://www.lallemand.com/BakerYeastNA/eng/PDFs/LBU%20PDF%20FILES/1_19WATR.PDF
      sum(x['_yeast$']) * .35
    } else {
      # I ferment overnight in fridge, lost 1.15 yeast
      # then ferment in room temperature, lost .35 yeast
      sum(x['_yeast$']) * 1.5
    }
  } else z <- numeric()
  
  return(z)
  
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


add_flavor <- \(x) {
  # is(x, 'recipe')
  
  if (length(x@flavor)) return(x)
  
  x@flavor <- if ('_coffeeLiqueur$|_espressoLiqueur$' %in% x) {
    'Tiramisu\u0300'
  } else if ('_coffee$' %in% x) {
    if ('_liqueur$' %in% x) {
      'Tiramisu\u0300'
    } else if ('_cocoa$' %in% x) {
      if ('_blackCocoa$' %in% x) {
        warning('Black cocoa is overly alkalized and not a good choice for hot cocoa and mocaccino!')
      }
      if (('_tea$' %in% x) && ('_coconutBar$' %in% x)) {
        '\u751f\u6930\u9e33\u9e2f'
      } else if ('_coconutBar$' %in% x) {
        if (('_coffee$' %in% x) && ('_drymilk$|_milk$' %in% x)) {
          '\u751f\u6930\u62ff\u94c1'
        } else '\u751f\u6930'
      } else if (('_cocoa$' %in% x) && ('_coffee$' %in% x) && (x['_cocoa$'] / x['_coffee$'] < 1)) {
        'Caff\u00e8' 
      } else 'Caff\u00e8 Mocha'
    } else if ('_syrup$' %in% x) {
      if ('_ryeWhisky_syrup$' %in% x) {
        'Rye Whiskey\u67ab\u7cd6 Tiramisu\u0300'
      } else stop('more syrup?')
    } else 'Caff\u00e8'
    
  } else if ('_adzukibean$' %in% x) {
    '\u7ea2\u8c46'
  } else if ('_mungbean$' %in% x) {
    '\u7eff\u8c46'
  } else if ('_redkidneybean$' %in% x) {
    '\u7ea2\u82b8\u8c46'
  } else if ('_applesauce$' %in% x) {
    '\u82f9\u679c\U1f34e'
  } else if ('_acai_pulv$' %in% x) {
    '\u5df4\u897f\u8393'
  } else if ('_beet_pulv$' %in% x) {
    '\u751c\u83dc'
  } else if ('_blackRice$' %in% x) {
    '\u9ed1\u7c73'
  } else if ('_blackSesame$' %in% x) {
    '\u9ed1\u829d\u9ebb'
  } else if ('_brownRice$' %in% x) {
    '\u7cd9\u7c73'
  } else if ('_cashew$' %in% x) {
    '\u8170\u679c'
  } else if ('_chickpea$' %in% x) {
    '\u9e70\u5634\u8c46'
  } else if ('_cocoa$' %in% x) { # `cocoa` has higher priority than `coffee`
    '\u5de7\u514b\u529b\U1f36b' # '\u53ef\u53ef\U1f36b'
  } else if ('_coconutFlr$' %in% x) {
    '\u6930\u84c9\U1f965'
  } else if ('_coconutBar$' %in% x) {
    '\u6930\u5976\U1f965'
  } else if ('_darkCherry$' %in% x) {
    '\u751c\u6a31\u6843\U1f352'
  } else if ('_mandarine$' %in% x) {
    '\u6a58\u5b50\U1f34a'
  } else if ('_mango$' %in% x) {
    '\u8292\u679c\U1f96d'
  } else if ('_matcha$' %in% x) {
    '\u62b9\u8336\U1f375'
  } else if ('_pear$' %in% x) {
    '\u68a8\U1f350'
  } else if ('_pineapple$' %in% x) {
    # '\u83e0\u841d\U1f34d'
    'Pineapple\U1f34d'
  } else if ('_pumpkin$|_pumpkinPieMix$' %in% x) {
    'Pumpkin\U1f383'
  } else if ('_strawberry$' %in% x) {
    '\u8349\u8393\U1f353'
  } else if ('_tomato$' %in% x) {
    '\u897f\u7ea2\u67ff\U1f345'
  } else if ('_yellowCorn$' %in% x) {
    '\u7389\u7c73\U1f33d'
  } else if ('shrimp' %in% x) {
    '\u867e\U1f990'
  } else if ('^beef_' %in% x) {
    '\u725b\u8089'
  } else if ('^pork_' %in% x) {
    '\u732a\u8089'
  } else if ('_ginger$' %in% x) {
    '\u59dc\u9999\U1fada'
  } else if ('_liqueur$' %in% x) {
    x['_liqueur$'] |> names() |> get_flavor_()
    #} else if (length(x@sauce)) {
    #  if ('_tomyum$' %in% x) {
    #    '\u51ac\u9634'
    #  } else character()
  } else if ('_syrup$' %in% x) {
    x['_syrup$'] |> names() |> get_flavor_()
  } else if ('_tea$' %in% x) {
    x['_tea$'] |> names() |> get_flavor_()
  } else switch(
    EXPR = class(x), 
    matchaLatte_ =, matchaGoatLatte_ = {
      switch(class(x), matchaLatte_ = {
        '\u62b9\u8336\U1f375Latte'
      }, matchaGoatLatte_ = {
        '\u62b9\u8336\U1f375\u7f8a\u5976Latte'
      })
    },
    shortDough =, waterDough = {
      if ('_lard$' %in% x) {
        '\u732a\u6cb9'
      }
      #}, stop('must have @flavor !'))
    }, character())
  
  return(x)
  
}
  
  







gram_per_tsp <- \(x) {
  
  if (!length(x)) return(double())
  
  if (!is.character(x) || anyNA(x) || !all(nzchar(x))) stop('input degenerated')
    
  x |> 
    vapply(FUN = \(i) {
      v <- eval(call(name = i)) |>
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
    lapply(FUN = \(i) eval(call(name = i)))
  
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
    sprintf(fmt = '%s Iced Water \U0001f32132\u00b0F')
  label[label == 'c22'] <- '22\u00b0C\u5e38\u6e29\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Water \U0001f32172\u00b0F')
  label[label == 'c40'] <- '40\u00b0C\u6e29\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Warm Water \U0001f321104\u00b0F')
  label[label == 'c70'] <- '70\u00b0C\u70ed\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Hot Water \U0001f321160\u00b0F')
  label[label == 'c80'] <- '80\u00b0C\u70ed\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Hot Water \U0001f321175\u00b0F')
  label[label == 'c85'] <- '85\u00b0C\u70ed\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Hot Water \U0001f321185\u00b0F')
  label[label == 'c90'] <- '90\u00b0C\u70ed\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Hot Water \U0001f321195\u00b0F')
  label[label == 'c95'] <- '95\u00b0C\u70ed\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Hot Water \U0001f321203\u00b0F')
  label[label == 'c100'] <- '100\u00b0C\u5f00\u6c34' |>
    col_orchid4() |>
    sprintf(fmt = '%s Boiling Water \U0001f321212\u00b0F')
  
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
      if (!is(i, 'nutrition')) return(FALSE) # could be homemade \linkS4class{recipe}
      length(i@pieceGram) > 0L
    }, FUN.VALUE = NA)
  
  z <- character(length = nx)
  z[id] <- fmt_pc(x[id])
  z[!id] <- fmt_vol(x[!id])
  
  label <- ingredient |>
    vapply(FUN = labels, FUN.VALUE = '') 
  # [labels.nutrition]; or 
  # [labels.recipe] (when dealing with homemade ingredients)
    
  sprintf(fmt = '%s %.0f grams %s\n', label, x, z) |>
    format_inline() |>
    cat()
  
}



