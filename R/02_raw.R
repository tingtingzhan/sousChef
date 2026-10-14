
#' @title Raw Ingredients and Recipe
#' 
#' @description 
#' \linkS4class{raw.} allows negative ingredients.
#' 
#' @slot homemade \link[base]{numeric} \link[base]{vector}
#' @slot misc \link[base]{numeric} \link[base]{vector}, weight (in grams) of one or more miscellaneous ingredients
#' 
#' @slot puree \link[base]{numeric} \link[base]{vector}, weight (in grams) of one or more puree
#' 
#' @slot fruit \link[base]{numeric} \link[base]{vector}, weight of fresh fruit pulp or juice (in grams)
#' 
#' @slot dairy \link[base]{numeric} \link[base]{vector}, weight (in grams) of dairy products
#' 
#' @slot oil \link[base]{numeric} \link[base]{vector}, weight (in grams) of liquid oil
#' @slot fat \link[base]{numeric} \link[base]{vector}, weight (in grams) of solid fat
#' 
#' @slot egg \link[base]{numeric} \link[base]{vector}, numbers of large egg (52 grams each), egg yolks (17.3 grams each) and whites (34.7 grams each)
#' 
#' @slot tea \link[base]{numeric} \link[base]{vector}, weight of loose tea (in grams) and number of tea bags.
#' 
#' @slot flour \link[base]{numeric} \link[base]{vector}, weight (in grams) of King Arthur all purpose flour
#' @slot beverage \link[base]{numeric} \link[base]{vector}
#' 
#' @slot starch \link[base]{numeric} \link[base]{vector}, weight (in grams) of various starch
#' 
#' @slot grain \link[base]{numeric} \link[base]{vector}, weight (in grams) of various grains
#' 
#' @slot bean \link[base]{numeric} \link[base]{vector}, weight of dry beans (in grams)
#' 
#' @slot nut \link[base]{numeric} \link[base]{vector}, weight of dry nuts (in grams)
#' @slot seed \link[base]{numeric} \link[base]{vector}, weight of dry seed (in grams)
#' 
#' 
#' @slot sugar \link[base]{numeric} \link[base]{vector}, weight (in grams) of sugar 
#' 
#' @slot syrup \link[base]{numeric} \link[base]{vector}, weight (in grams) of various syrup
#' 
#' @slot NaHCO3 \link[base]{numeric} \link[base]{vector}, weight (in grams) of baking soda
#' 
#' @slot Na2CO3 \link[base]{numeric} \link[base]{vector}, weight (in grams) of Na2CO3.  Na2CO3 is made from baking the baking soda, 200F for 30 minutes
#' 
#' @slot bakingPowder \link[base]{numeric} \link[base]{vector}, weight (in grams) of baking powder
#' @slot salt \link[base]{numeric} \link[base]{vector}, weight (in grams) of salt
#' @slot msg \link[base]{numeric} \link[base]{vector}, weight (in grams) of monosodium glutamate (MSG)
#' @slot vanilla \link[base]{numeric} \link[base]{vector}, weight (in grams) of vanilla extract
#' @slot yeast \link[base]{numeric} \link[base]{vector}, weight (in grams) of yeast
#' 
#' @slot cocoa \link[base]{numeric} \link[base]{vector}, weight (in grams) of Dutch-processed cocoa powder
#' @slot matcha \link[base]{numeric} \link[base]{vector}, weight (in grams) of culinary matcha powder 
#' @slot spice named \link[base]{numeric} \link[base]{vector}, weight (in grams) of compound spices
#' 
#' @slot coffee \link[base]{numeric} \link[base]{vector}, weight (in grams) of instant coffee
#' 
#' @slot meat \link[base]{numeric} \link[base]{vector}, weight of one or more cuts of meat (in grams)
#' @slot poultry \link[base]{numeric} \link[base]{vector}, weight of one or more cuts of poultry (in grams)
#' @slot seafood \link[base]{numeric} \link[base]{vector}, weight of one or more other sea food (in grams)
#' 
#' @slot vegetable \link[base]{numeric} \link[base]{vector}, weight of one or more vegetables (in grams)
#' 
#' @slot water \link[base]{numeric} \link[base]{vector}, weight (in grams) of water
#' @slot sauce \link[base]{numeric} \link[base]{vector}, weight (in grams) of one or more sauces
#' @slot liqueur \link[base]{numeric} \link[base]{vector}, weight (in grams) of one or more liqueurs
#' 
#' @slot gelatin \link[base]{numeric} \link[base]{vector}
#' 
#' @name raw_recipe
#' @aliases raw.-class
#' @export
setClass(
  Class = 'raw.', 
  # dQuote('raw') has a sealed class definition and cannot be redefined
  slots = rep_names('numeric', nm = c(
    'homemade',
    'misc',
    'puree',
    'fruit',
    'oil',
    'fat',
    'egg',
    'tea',
    'dairy',
    'yeast',
    'sugar',
    'syrup',
    'salt',
    'msg',
    'NaHCO3',
    'Na2CO3',
    'bakingPowder',
    'flour',
    'starch',
    'beverage', 
    'grain', 'bean', 'nut', 'seed',
    'vanilla',
    'cocoa',
    'coffee',
    'matcha',
    'spice',
    'meat', 'poultry', 'seafood',
    'vegetable',
    'water',
    'sauce',
    'liqueur',
    'gelatin'
)))








#' @rdname raw_recipe
#' @param object see **Usage**
#' @export
setMethod(f = show, signature = 'raw.', definition = \(object) print.raw.(object))



#' @method labels raw.
#' @export
labels.raw. <- \(object, ...) character()


#' @method print raw.
#' @export
print.raw. <- \(x, prt_total = TRUE, ...) {
  
  x |> 
    labels() |> # [labels.raw.] or [labels.recipe]
    #col_grey() |> 
    style_bold() |> 
    cat('\n\n')

  if (prt_total) {
    names(getSlots(x = 'raw.')) |>
      lapply(FUN = slot, object = x) |>
      unlist() |>
      sum() |>
      sprintf(fmt = 'Total: %.1f grams\n\n') |>
      cat()
  }
  
  prt_vol(x@homemade)
  prt_vol(x@meat)
  prt_vol(x@poultry)
  prt_vol(x@seafood)
  prt_vol(x@egg)
  prt_vol(x@flour)
  prt_vol(x@starch)
  prt_vol(x@sugar)
  prt_vol(x@beverage)
  prt_vol(x@puree)
  prt_vol(x@fruit)
  prt_vol(x@sauce)
  prt_vol(x@oil)
  prt_vol(x@liqueur)
  prt_vol(x@nut)
  prt_vol(x@seed)
  prt_vol(x@grain)
  prt_vol(x@bean)
  prt_vol(x@fat)
  prt_vol(x@dairy)
  prt_vol(x@vegetable)
  prt_vol(x@spice)
  prt_vol(x@matcha)
  prt_vol(x@coffee)
  prt_vol(x@cocoa)
  prt_vol(x@vanilla)
  prt_vol(x@syrup)
  prt_vol(x@yeast)
  prt_vol(x@salt)
  prt_vol(x@msg)
  prt_vol(x@NaHCO3)
  prt_vol(x@Na2CO3)
  prt_vol(x@bakingPowder)
  prt_vol(x@gelatin)
  prt_vol(x@tea)
  prt_vol(x@misc)
  
  prt_vol_H2O(x@water)

  cat('\n')
  
}






#setMethod(f = initialize, signature = 'raw.', definition = \(.Object, ...) {
.cleanSlots_raw. <- \(x) {
  
  x <- x |> # alphabetically
    mergeVol(which = 'bakingPowder') |>
    mergeVol(which = 'bean') |> 
    mergeVol(which = 'beverage') |> 
    mergeVol(which = 'cocoa') |>
    mergeVol(which = 'coffee') |>
    mergeVol(which = 'dairy') |> 
    mergePc(which = 'egg') |>
    mergeVol(which = 'fat') |>
    mergeVol(which = 'flour') |>
    mergePc(which = 'fruit') |>
    mergePc(which = 'gelatin') |>
    mergeVol(which = 'grain') |> 
    # merge??(which = 'homemade') |> # has no vol
    mergeVol(which = 'liqueur') |>
    mergeVol(which = 'matcha') |>
    # merge??(which = 'meat') |> # has no vol
    mergeVol(which = 'misc') |>
    mergeVol(which = 'msg') |>
    mergeVol(which = 'Na2CO3', nm = 'Na2CO3') |>
    mergeVol(which = 'NaHCO3') |>
    mergeVol(which = 'nut') |>
    mergeVol(which = 'oil') |>
    # merge??(which = 'poultry') |> # has no vol
    mergePc(which = 'puree') |> mergeVol(which = 'puree') |>
    mergeVol(which = 'salt', nm = 'Morton_salt') |>
    mergeVol(which = 'sauce') |>
    # merge??(which = 'seafood') |> # has no vol
    mergeVol(which = 'seed') |>
    mergeVol(which = 'spice') |>
    mergeVol(which = 'starch') |>
    mergeVol(which = 'sugar', nm = 'US_10x') |>
    mergeVol(which = 'syrup') |>
    mergePc(which = 'tea') |>
    mergeVol(which = 'vanilla') |>
    # merge??(which = 'vegetable') |> # has no vol
    mergeVol_H2O() |>
    mergeVol(which = 'yeast')
    
  for (i in names(getSlots(x = 'raw.'))) {
    if (length(x[[i]])) {
      x[[i]] <- x[[i]] |>
        zero.omit()
    }
  }
  
  return(x)
  
}



#' @importFrom stats na.omit
#' @method as.double raw.
#' @export
as.double.raw. <- \(x, detail = TRUE, rel = FALSE, ...) {
  
  x <- x |>
    mergeH2O()
  
  # detailed ingredients
  ingredient <- attributes(x)[names(getSlots(x = 'raw.'))] |>
    unname() |>
    unlist(use.names = TRUE) |> # no need to remove len-0 element
    zero.omit()
  
  if (anyDuplicated.default(names(ingredient))) stop('do not allow!!!')
  
  z <- if (detail) {
    ingredient
  } else {
    c(
      c(
        'water',
        'NaHCO3', 'Na2CO3', 'bakingPowder', 
        'salt', # e.g., salt-2-flour, salt-2-yeast
        'msg', 'yeast',
        'starch', 'gelatin',
        'tea', 'matcha', 'cocoa', 'coffee'
        # 'puree', # waterLost after cooking!  only meaningful for \linkS4class{.raw}, not \linkS4class{recipe}
      ) |>
        vapply(FUN = \(i) {
          v <- slot(x, name = i)
          if (!length(v)) return(NA_real_)
          return(sum(v))
        }, FUN.VALUE = NA_real_, USE.NAMES = TRUE) |>
        na.omit(),
      
      # addedSugar = x@sugar |> sum(), # wrong!! `@sugar` is **not** 100% sugar
      
      ssmOil = x['_sesame_oil$'] |> sum(),
      rattanPpOil = x['_rattanPepper_oil$'] |> sum(),
      drymilk = x['_drymilk$'] |> sum(),
      creamChz = x['_creamCheese$'] |> sum(),
      beet = x['_beet_pulv$'] |> sum(),
      acai = x['_acai_pulv$'] |> sum(),
      ginger = x['_ginger$'] |> sum(),
      cumin = x['_cumin$'] |> sum(),
      cilantro = x['_cilantro$'] |> sum(),
      garlic = x['_garlic$'] |> sum(),
      onion = x['_onion$'] |> sum(),
      whitePp = x['_whitePepper$'] |> sum(),
      blackPp = x['_blackPepper$'] |> sum(),
      turmeric = x['_turmeric$'] |> sum(),
      cinnamon = x['_cinnamon$'] |> sum(),
      paprika = x['_paprika$'] |> sum(),
      coriander = x['_coriander$'] |> sum(),
      pumpkinSpice = x['_pumpkinSpice$'] |> sum(),
      sesame = x['_blackSesame$'] |> sum(),
      coconutFlr = x['_coconutFlr$'] |> sum(),
      coconutBar = x['_coconutBar$'] |> sum(),
      flour = x['_allPurposeFlr$'] |> sum(),
      breadFlr = x['_breadFlr$'] |> sum(),
      pastryFlr = x['_pastryFlr$'] |> sum(),
      cornmeal = x['_cornmeal$'] |> sum(),
      glutRice = x['_glutRice$|_glutRiceFlr$'] |> sum(),
      eggYolk = x['^eggYolk$'] |> sum()
      # 'eggWhite' = x['^eggWhite$'] |> sum()#, # waterLost after cooking!!
    )
  }
  if (!length(z)) stop('shouldnt happen!!!')
  if (rel) return(z / sum(ingredient))
  return(z)
}

  

