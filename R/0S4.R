# '\u2318' 
# c('\u058d', '\u058e')

#' @title \linkS4class{recipe}
#' 
#' @slot misc,water slots of \link[sousChef.ingredient]{ingredient-class}
#' 
#' @slot call \link[base]{name}, the function name to create this \linkS4class{recipe}
#' 
#' @slot flavor \link[base]{character} scalar with Unicode symbols
#' 
#' @slot author \link[base]{character} scalar
#' @slot tool \link[base]{list} of kitchen \link[sousChef.tool]{tool-class}es
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
#' @name recipe
#' @aliases recipe-class
#' @export
setClass(Class = 'recipe', contains = 'ingredient', slots = c(
  
  call = 'name',
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



#' @rdname recipe
#' 
#' @param no_eval ..
#' 
#' @param ... raw user input
#' 
#' @details
#' The helper function [recipe()] converts raw user input into the (slots of) \linkS4class{recipe}-class.
#' 
#' @export
recipe <- \(no_eval = sys_call_name(which = -2), ...) {
  
  no_eval
  
  x <- list(...)
  if (!length(x$call)) x$call <- call(name = 'quote', no_eval)
  
  x <- x |>
    .clean_ingredient() |>
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




#setMethod(f = initialize, signature = 'recipe', definition = \(.Object, ...) {
#  callNextMethod(.Object, ...) |>
#    add_flavor() # .Deprecated()
#})










