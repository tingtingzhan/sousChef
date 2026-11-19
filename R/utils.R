

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






get_flavor_ <- \(x) {
  # `x` is base::character base::vector
  x |>
    lapply(FUN = eval_, envir = asNamespace('sousChef.nutrition')) |>
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
  
  .Deprecated()
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
      if ('_coconutBar$' %in% x) {
        '\u751f\u6930'
      } else if (('_cocoa$' %in% x) && ('_coffee$' %in% x) && (x['_cocoa$'] / x['_coffee$'] < 1)) {
        'Caff\u00e8' 
      } else 'Caff\u00e8 Mocha'
    } else if ('_syrup$' %in% x) {
      if ('_ryeWhisky_syrup$' %in% x) {
        'Rye Whiskey\u67ab\u7cd6 Tiramisu\u0300'
      } else stop('more syrup?')
    } else 'Caff\u00e8'
    
  } else if ('_cocoa$' %in% x) { # `cocoa` has higher priority than `coffee`
    '\u5de7\u514b\u529b\U1f36b' # '\u53ef\u53ef\U1f36b'
  } else if ('shrimp' %in% x) {
    '\u867e\U1f990'
  } else if ('^beef_' %in% x) {
    '\u725b\u8089'
  } else if ('^pork_' %in% x) {
    '\u732a\u8089'
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
  
  











