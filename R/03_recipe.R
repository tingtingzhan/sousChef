# '\u2318' 
# c('\u058d', '\u058e')

#' @rdname raw_recipe
#' 
#' @slot call \link[base]{name}, the function name to create this \linkS4class{recipe}
#' 
#' @slot key \link[base]{character} scalar
#' 
#' @slot flavor \link[base]{character} scalar with Unicode symbols
#' 
#' @slot author \link[base]{character} scalar
#' @slot tool \link[base]{list} of \linkS4class{tool}s
#' 
#' @slot date \link[base]{Date} scalar
#' 
#' @slot url \link[base]{character} scalar or \link[base]{vector}, URL of original recipe
#' @slot youtube \link[base]{character} scalar or \link[base]{vector}, YouTube ID of original recipe
# @slot doi \link[base]{character} scalar or \link[base]{vector}
#' 
# @slot machine (legacy) \link[base]{list} of \link[base]{character} scalar or \link[base]{vector}, machine(s) used.  To be superceeded by slot `@tool`
#' 
#' @slot review \link[base]{character} scalar or \link[base]{vector}, people's comments
#' @slot pros \link[base]{character} scalar or \link[base]{vector}, pros
#' @slot cons \link[base]{character} scalar or \link[base]{vector}, cons
#' 
#' @slot portion \link[base]{numeric} scalar or \link[base]{vector}, weight of raw portion (in grams)
#' 
# difficult to quantify `fatLost` vs `waterLost`
#' @slot sugarLost \link[base]{numeric} scalar, weight of sugar (in grams) consumed by yeast in fermentation
#' 
#' @aliases recipe-class
#' @export
setClass(Class = 'recipe', contains = 'raw.', slots = c(
  
  call = 'name',
  key = 'character',
  flavor = 'character',
  
  author = 'character',
  youtube = 'character',
  url = 'character',
  
  #doi = 'character',
  review = 'character',
  pros = 'character', cons = 'character',
  portion = 'numeric',
  tool = 'list',
  date = 'Date',
  
  sugarLost = 'numeric'
  
), prototype = prototype(
  # key = 'null', # backward compatibility (no longer needed!!)
  date = as.Date.numeric(numeric()) # must!!
))



#' @rdname raw_recipe
#' 
#' @param ... raw user input
#' 
#' @details
#' The helper function [recipe()] converts raw user input into the (slots of) \linkS4class{recipe}-class.
#' 
#' @export
recipe <- \(...) {
  
  x <- list(...) |>
    .findCall(which = -2)
  
  x <- x |>
    .cleanSlots_raw.() |>
    get_key_()

  # processing 'character'
  
  if (length(x$author)) {
    if (length(x$allrecipes)) {
      #stop('where?')
      x$author <- x$allrecipes |>
        fmtURL(fmt = 'https://www.allrecipes.com/recipe/%s', text = x$author)
      x$allrecipes <- NULL
    } else if (length(x$youtube)) {
      #stop('where?')
      x$author <- x$youtube[1L] |>
        fmtURL(fmt = 'https://youtu.be/%s', text = x$author)
      x$youtube <- x$youtube[-1L]
    } else if (length(x$url)) {
      #stop('where?')
      x$author <- x$url[1L] |>
        style_hyperlink(url = _, text = x$author) |> 
        c()
      x$url <- x$url[-1L]
    }
  } # before `if (!length(x@author))` !!!
  
  # youtubers
  x <- x |>
    add_youtube(name = 'daatgo', text = '\u8fbe\u54e5\u53a8\u623f') |>
    add_youtube(name = 'dad1966', text = '\u8001\u7238\u7684\u98df\u5149') |>
    add_youtube(name = 'giallozafferano', text = 'Giallozafferano Italian Recipes') |>
    add_youtube(name = 'guga', text = 'Guga') |>
    add_youtube(name = 'happytears', text = '\u5e78\u798f\u7684\u773c\u6cea') |>
    add_youtube(name = 'laofangu', text = '\u8001\u996d\u9aa8') |>
    add_youtube(name = 'mrhongkitchen', text = '\u963f\u9e3f\u53a8\u623f') |>
    add_youtube(name = 'pino', text = '\u54c1\u8bfa') |> # http://www.pinochina.com # temporarily down
    add_youtube(name = 'shangshikitchen', text = '\u5c1a\u98df\u53a8\u623f') |>
    add_youtube(name = 'viewsontheroad', text = 'Views on the road') |>
    add_youtube(name = 'xiaogaojie', text = '\u5c0f\u9ad8\u59d0')
  
  if (length(x$ippodotea)) {
    if (length(x$ippodotea) > 1L) stop('only allow len-1 `ippodotea`')
    x$author <- x$ippodotea |>
      fmtURL(fmt = 'https://ippodotea.com/products/%s', text = 'Ippodo\U1f375\u4e00\u4fdd\u5802\u8336\u8216\U1f1ef\U1f1f5')
    x$ippodotea <- NULL
  }
  
  if (length(x$ippodoteajpn)) {
    if (length(x$ippodoteajpn) > 1L) stop('only allow len-1 `ippodoteajpn`')
    x$author <- x$ippodoteajpn |> 
      fmtURL(fmt = 'https://www.ippodo-tea.co.jp/products/%s', text = 'Ippodo\U1f375\u4e00\u4fdd\u5802\u8336\u8216\U1f1ef\U1f1f5')
    x$ippodoteajpn <- NULL
  }
  
  x <- x |>
    add_youtube_recipe(name = 'chefjeanpierre', fmt = 'https://chefjeanpierre.com/recipes/%s', text1 = 'Chef', text2 = 'Jean-Pierre') |>
    add_youtube_recipe(name = 'joshuaweissman', fmt = 'https://www.joshuaweissman.com/post/%s', text1 = 'Joshua', text2 = 'Weissman') |>
    add_youtube_recipe(name = 'julieseatsandtreats', fmt = 'https://www.julieseatsandtreats.com/%s', text1 = 'Julie\'s', text2 = 'Eats & Treats') |>
    add_youtube_recipe(name = 'just1cookbook', fmt = 'https://www.justonecookbook.com/%s', text1 = 'Just One', text2 = 'Cookbook') |>
    add_youtube_recipe(name = 'kitchenaiduk2003', fmt = 'https://www.kitchenaid.co.uk/recipes/%s', text1 = 'KitchenAid', text2 = 'UK') |>
    add_youtube_recipe(name = 'natashaskitchen', fmt = 'https://natashaskitchen.com/%s/', text1 = 'Natasha\'s', text2 = 'Kitchen') |>
    add_youtube_recipe(name = 'preppykitchen', fmt = 'https://preppykitchen.com/%s/', text1 = 'Preppy', text2 = 'Kitchen')# |>
  
  if (length(x$juniorscheesecakecookbook)) {
    if (length(x$juniorscheesecakecookbook) > 1L) stop('only allow len-1 `juniorscheesecakecookbook`')
    x$author <- style_hyperlink(url = 'https://www.juniorscheesecake.com/juniors-cheesecake-cookbook', text = sprintf('Junior\'s Cheesecake Cookbook p.%d', x$juniorscheesecakecookbook)) |> c()
    x$juniorscheesecakecookbook <- NULL
  }
  
  if (length(x$kingarthur)) {
    if (length(x$kingarthur) > 1L) stop('only allow len-1 `kingarthur`')
    if (!length(x$author)) stop('King Arthur employee name?')
    x$author <- paste(
      x$kingarthur |>
        fmtURL(fmt = 'https://www.kingarthurbaking.com/recipes/%s', text = 'King Arthur'),
      x$author |> 
        fmtURL(fmt = 'https://www.kingarthurbaking.com/author/%s', text = 'Recipe')
    )
    x$kingarthur <- NULL
  }
  
  if (length(x$nytimes)) {
    if (length(x$nytimes) > 1L) stop('only allow len-1 `nytimes`')
    x$author <- x$nytimes |>
      fmtURL(fmt = 'https://cooking.nytimes.com/recipes/%s', text = 'New York Times Cooking')
    x$nytimes <- NULL
  }
  
  if (length(x$quakeroats)) {
    if (length(x$quakeroats) > 1L) stop('only allow len-1 `quakeroats`')
    x$author <- x$quakeroats |> 
      fmtURL(fmt = 'https://www.quakeroats.com/cooking-and-recipes/%s', text = 'Quaker\U1f1fa\U1f1f8')
    x$quakeroats <- NULL
  }
  
  if (length(x$wegmans)) {
    if (length(x$wegmans) > 1L) stop('only allow len-1 `wegmans`')
    x$author <- x$wegmans |>
      fmtURL(fmt = 'https://shop.wegmans.com/recipes/%s', text = 'Wegmans\U1f1fa\U1f1f8')
    x$wegmans <- NULL
  }
  

  c(list(Class = 'recipe'), x) |> 
    do.call(what = 'new', args = _)
  
}




setMethod(f = initialize, signature = 'recipe', definition = \(.Object, ...) {
  
  x <- callNextMethod(.Object, ...)
  
  if (('_yeast$' %in% x) && !length(x@sugarLost)) {
    x@sugarLost <- if (is(x, 'bao')) {
      # After one hour brew time, ~0.35 grams of sugar per gram of yeast have been consumed, 
      # leaving ~0.65 grams of unfermented sugar per gram of yeast.
      # https://www.lallemand.com/BakerYeastNA/eng/PDFs/LBU%20PDF%20FILES/1_19WATR.PDF
      sum(x['_yeast$']) * .35
    } else {
      # I ferment overnight in fridge, lost 1.15 yeast
      # then ferment in room temperature, lost .35 yeast
      sum(x['_yeast$']) * 1.5
    }
  }
  
  if (!length(x@flavor)) {
    x@flavor <- if ('_coffee$' %in% x) {
      if ('_liqueur$' %in% x) {
        'Tiramisu\u0300'
      } else if ('_cocoa$' %in% x) {
        if ('_blackCocoa$' %in% x) {
          warning('Black cocoa is overly alkalized and not a good choice for hot cocoa and mocaccino!')
        }
        if (('_tea$' %in% x) && ('_coconutBar$' %in% x)) {
          '\u751f\u6930\u9e33\u9e2f'
        } else if ('_coconutBar$' %in% x) {
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
    } else if (length(x@homemade)) {
      x@homemade |> names() |> get_flavor_()
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
    
  }
  
  return(x)
})



#' @export
labels.recipe <- \(object, ...) {
  
  x <- object; object <- NULL
  
  # <flavor> <key> <author>
  # e.g., Pumpkin Cheesecake Preppy Kitchen
  # `<flavor> <key>` might have {.run } link
  
  key_txt <- switch(
    EXPR = x@key,
    beefball = '\u725b\u8089\u4e38',
    cheesecake = 'NY Cheesecake\u91cd\u4e73\u916a\u86cb\u7cd5',
    creamCheeseSpread = 'Cream Cheese Spread\U1f96f\u5976\u6cb9\u4e73\u916a\u9171',
    custardFilling = '\u5976\u9ec4\u9985',
    fauxReo = '\u5c71\u5be8\u5965\u5229\u5965',
    fishball = '\u9c7c\u4e38',
    guacamole = 'Guacamole\u725b\u6cb9\u679c\U0001f951\u9171',
    liangpi = '\u51c9\u76ae',
    meatTenderizer = '\u5ae9\u8089\u6c34',
    mianjin = '\u9762\u7b4b',
    pasteisdenata = '\u8461\u5f0f\u86cb\u631e',
    ricepi = '\u7c73\u76ae',
    #stop('undefined @key ', sQuote(x@key))
    character()
  )
  
  nm <- c(x@flavor, key_txt) |> # allow len-0 x@flavor
    paste(collapse = ' ') |>
    make_ansi_style('steelblue4')()
  
  if (!identical(x@call, quote(`<UNDEFINED>`))) { 
    # e.g., **not** from setAs(from = 'nutrition', to = 'recipe')
    nm <- nm |>
      sprintf(fmt = '{.run [%s](sousChef::%s())}', . = _, as.character(x@call)) |> 
      format_inline() # must!!
  }
  
  if (!length(x@author)) return(nm)
  
  paste(
    nm, 
    x@author |> 
      col_green()
  )
  
}




#' @rdname raw_recipe
#' @export
setMethod(f = show, signature = 'recipe', definition = \(object) {
  
  x <- object; object <- NULL
  
  cat('\n')
  
  x@date |> # len0-compatible
    format.Date(format = '%A, %B %e, %Y\n\n') |> 
    gsub(pattern = '^ *|(?<= ) | *$', replacement = '', perl = TRUE) |>
    col_green() |> style_bold() |> cat()
  
  x |> 
    print.raw.()
  
  y <- x |>
    as(Class = 'nutrition')
  
  if (length(x@portion)) {
    r <- y@servingGram / x@portion
    sprintf(
      fmt = '\u058d %.1f \u00d7 %.0f grams %s %s %s', # '\u058e'
      r,
      x@portion, 
      (y@usd / r) |> 
        sprintf(fmt = '\U1f4b5%.2f') |> 
        col_green() |> style_bold(),
      if (length(y@calorie)) {
        (y@calorie / r) |> 
        sprintf(fmt = '\U1f525%.0f') |>
        col_br_red() |> style_bold() 
      } else '',
      x@portion |> 
        names() |> 
        col_magenta() |> style_bold()
    ) |> 
      cat(sep = '\n')
    cat('\n')
  } # else NULL
  
  x@tool |>
    lapply(FUN = show)
  
  if (length(x@review)) {
    x@review |> 
      sprintf(fmt = '\U1f4dd %s') |> 
      cat(sep = '\n')
    cat('\n')
  }
  
  if (length(x@pros)) {
    x@pros |> 
      sprintf(fmt = '\U1f389 %s') |> 
      cat(sep = '\n')
    cat('\n')
  }
  
  if (length(x@cons)) {
    x@cons |> 
      sprintf(fmt = '\U1f940 %s') |> 
      cat(sep = '\n')
    cat('\n')
  }
  
  if (length(x@url) || length(x@youtube)) {
    
    cat('\U1f4d6 Reference:\n')
    if (length(x@url)) cat('', x@url, sep = '\n') # len0 compatible
    if (n_ytb <- length(x@youtube)) {
      if (n_ytb != 1L) stop('only allow scalar @youtube')
      cat(' \U1f4f9', 
          x@youtube |> 
            fmtURL(fmt = 'https://youtu.be/%s', text = x@youtube), 
          '\n')
    }
    #if (length(x@doi)) cat(styleURL(url_ = sprintf(fmt = 'https://doi.org/%s', x@doi), text_ = names(x@doi)), sep = '\n')
    cat('\n')
    
  }

})







