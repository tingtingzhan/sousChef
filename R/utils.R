

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
  
  











