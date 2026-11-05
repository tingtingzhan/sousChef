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
#' @slot pros,cons \link[base]{character} scalars or \link[base]{vector}s, pros and cons
#' 
#' @slot portion \link[base]{numeric} scalar or \link[base]{vector}, weight of raw portion (in grams)
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
  pros = 'character', cons = 'character',
  portion = 'numeric',
  tool = 'list',
  date = 'Date'
  
), prototype = prototype(
  # key = 'null', # backward compatibility (no longer needed!!)
  date = as.Date.numeric(numeric()) # must!!
))



#' @rdname raw_recipe
#' 
#' @param no_eval ..
#' 
#' @param ... raw user input
#' 
#' @details
#' The helper function [recipe()] converts raw user input into the (slots of) \linkS4class{recipe}-class.
#' 
#' @export
recipe <- \(no_eval = .findCall(which = -2), ...) {
  
  no_eval
  # force(no_eval) # messes up envir!!
  
  x <- list(...)
  if (!length(x$call)) x$call <- no_eval
  
  x <- x |>
    .cleanSlots_raw.() |>
    get_key_() |>
    add_author_url1() |>
    add_youtube(name = 'bakethat', text = 'Bake That!') |>
    add_youtube(name = 'cookingtree', text = 'Cooking Tree \ucfe0\ud0b9\ud2b8\ub9ac') |>
    add_youtube(name = 'daatgo', text = '\u8fbe\u54e5\u53a8\u623f') |>
    add_youtube(name = 'dad1966', text = '\u8001\u7238\u7684\u98df\u5149') |>
    add_youtube(name = 'giallozafferano', text = 'Giallozafferano Italian Recipes') |>
    add_youtube(name = 'guga', text = 'Guga') |>
    add_youtube(name = 'happytears', text = '\u5e78\u798f\u7684\u773c\u6cea') |>
    add_youtube(name = 'laofangu', text = '\u8001\u996d\u9aa8') |>
    add_youtube(name = 'mrhongkitchen', text = '\u963f\u9e3f\u53a8\u623f') |>
    add_youtube(name = 'pino', text = '\u54c1\u8bfa') |>
    add_youtube(name = 'shangshikitchen', text = '\u5c1a\u98df\u53a8\u623f') |>
    add_youtube(name = 'viewsontheroad', text = 'Views on the road') |>
    add_youtube(name = 'xiaogaojie', text = '\u5c0f\u9ad8\u59d0') |>
    add_youtube_recipe(name = 'brianlagerstrom', fmt = 'https://brianlagerstrom.com/recipes/%s', text1 = 'Brian', text2 = 'Lagerstrom') |>
    add_youtube_recipe(name = 'chefjeanpierre', fmt = 'https://chefjeanpierre.com/recipes/%s', text1 = 'Chef', text2 = 'Jean-Pierre') |>
    add_youtube_recipe(name = 'emmafontanella', fmt = 'https://www.emmafontanella.com/%s', text1 = 'Emma', text2 = 'Fontanella') |>
    add_youtube_recipe(name = 'joshuaweissman', fmt = 'https://www.joshuaweissman.com/post/%s', text1 = 'Joshua', text2 = 'Weissman') |>
    add_youtube_recipe(name = 'julieseatsandtreats', fmt = 'https://www.julieseatsandtreats.com/%s', text1 = 'Julie\'s', text2 = 'Eats & Treats') |>
    add_youtube_recipe(name = 'just1cookbook', fmt = 'https://www.justonecookbook.com/%s', text1 = 'Just One', text2 = 'Cookbook') |>
    add_youtube_recipe(name = 'lynnsrecipes', fmt = 'https://lynnsrecipes.com/recipes/%s.pdf', text1 = 'Lynn\'s', text2 = 'Recipes') |>  
    add_youtube_recipe(name = 'kitchenaiduk2003', fmt = 'https://www.kitchenaid.co.uk/recipes/%s', text1 = 'KitchenAid', text2 = 'UK') |>
    add_youtube_recipe(name = 'natashaskitchen', fmt = 'https://natashaskitchen.com/%s/', text1 = 'Natasha\'s', text2 = 'Kitchen') |>
    add_youtube_recipe(name = 'preppykitchen', fmt = 'https://preppykitchen.com/%s/', text1 = 'Preppy', text2 = 'Kitchen') |>
    add_author_url(name = 'allrecipes', fmt = 'https://www.allrecipes.com/recipe/%s') |>
    add_author_url(name = 'ippodotea', fmt = 'https://ippodotea.com/products/%s', text = 'Ippodo\U1f375\u4e00\u4fdd\u5802\u8336\u8216\U1f1ef\U1f1f5') |>
    add_author_url(name = 'ippodoteajpn', fmt = 'https://www.ippodo-tea.co.jp/products/%s', text = 'Ippodo\U1f375\u4e00\u4fdd\u5802\u8336\u8216\U1f1ef\U1f1f5') |>
    add_author_url(name = 'kingarthur', fmt = 'https://www.kingarthurbaking.com/recipes/%s', text = 'King Arthur\U1f1fa\U1f1f8') |>
    add_author_url(name = 'nytimes', fmt = 'https://cooking.nytimes.com/recipes/%s', text = 'New York Times Cooking') |>
    add_author_url(name = 'quakeroats', fmt = 'https://www.quakeroats.com/cooking-and-recipes/%s', text = 'Quaker\U1f1fa\U1f1f8') |>
    add_author_url(name = 'wegmans', fmt = 'https://shop.wegmans.com/recipes/%s', text = 'Wegmans\U1f1fa\U1f1f8') |>
    add_author_url(name = 'youtube', fmt = 'https://youtu.be/%s')
  
  # non-standard author
  
  if (length(x$juniorscheesecakecookbook)) {
    if (length(x$juniorscheesecakecookbook) > 1L) stop('only allow len-1 `juniorscheesecakecookbook`')
    x$author <- style_hyperlink(url = 'https://www.juniorscheesecake.com/products/juniors-cheesecake-cookbook', text = sprintf('Junior\'s Cheesecake Cookbook p.%d', x$juniorscheesecakecookbook))
    x$juniorscheesecakecookbook <- NULL
  }
  
  c(list(Class = 'recipe'), x) |> 
    do.call(what = 'new', args = _)
  
}




setMethod(f = initialize, signature = 'recipe', definition = \(.Object, ...) {
  
  callNextMethod(.Object, ...) |>
    add_flavor()
  
})





#' @export
labels.recipe <- \(object, ...) {
  
  x <- object; object <- NULL
  
  # <flavor> <key> <author>
  # e.g., Pumpkin Cheesecake Preppy Kitchen
  # `<flavor> <key>` might have {.run } link
  
  key_txt <- switch(
    EXPR = x@key,
    bao = '\u5305\u5b50\u76ae',
    beefball = '\u725b\u8089\u4e38',
    Bundt = 'Bundt\u86cb\u7cd5',
    cheesecake = 'NY Cheesecake\u91cd\u4e73\u916a\u86cb\u7cd5',
    cocoaMix = 'Cocoa Mix',
    CoengFan = '\u80a0\u7c89',
    cornbread = 'Cornbread\U1f33d',
    creamCheeseDip = 'Cream Cheese Dip\u5976\u6cb9\u4e73\u916a\u9171', 
    creamCheeseSpread = 'Cream Cheese Spread\U1f96f\u5976\u6cb9\u4e73\u916a\u9171',
    custardFilling = '\u5976\u9ec4\u9985',
    fauxReo = '\u5c71\u5be8\u5965\u5229\u5965',
    fishball = '\u9c7c\u4e38',
    grahamCrust = 'Graham Crust',
    guacamole = 'Guacamole\u725b\u6cb9\u679c\U0001f951\u9171',
    huajuan = '\u82b1\u5377',
    LangueDeChat = 'Langue de Chat\u732b\u820c\u997c',
    liangpi = '\u51c9\u76ae',
    meatTenderizer = '\u5ae9\u8089\u6c34',
    mianjin = '\u9762\u7b4b',
    mochaMix = 'Mocha Mix',
    oatmeal = 'Oatmeal\u71d5\u9ea6\u7ca5',
    pasteisdenata = '\u8461\u5f0f\u86cb\u631e',
    ricepi = '\u7c73\u76ae',
    sesamelava = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
    snowSkin = '\u51b0\u76ae',
    sodastream = 'SodaStream\u6c7d\u6c34',
    udon = '\u9942\u98e9\u3046\u3069\u3093',
    youtiao = '\u6cb9\u6761',
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
    format.Date(format = '%A, %B %e, %Y\n') |> 
    gsub(pattern = '^ *|(?<= ) | *$', replacement = '', perl = TRUE) |>
    col_green() |> style_bold() |> cat()
  
  x |> 
    print.raw.()
  
  y <- x |>
    as(Class = 'nutrition')
  
  if (length(x@portion)) {
    r <- y@servingGram / x@portion
    sprintf(
      fmt = '\u058d %.1f \u00d7 %.0f grams %s %s %s\n', # '\u058e'
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
      cat(sep = '')
    cat('\n')
  } # else NULL
  
  x@tool |>
    lapply(FUN = show)
  
  x@pros |> 
    sprintf(fmt = '\U1f389 %s\n') |> 
    cat(sep = '')
  if (length(x@pros)) cat('\n')
  
  x@cons |> 
    sprintf(fmt = '\U1f940 %s\n') |> 
    cat(sep = '')
  if (length(x@cons)) cat('\n')
  
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







