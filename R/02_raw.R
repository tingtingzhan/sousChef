
#' @title Raw Ingredients and Recipe
#' 
#' @description 
#' \linkS4class{raw.} allows negative ingredients.
#' 
#' @slot homemade \link[base]{numeric} vector
#' @slot misc,misc_tsp,misc_Tbsp,misc_cup \link[base]{numeric} vector, weight (in grams) and volume of one or more miscellaneous ingredients
#' 
#' @slot puree,puree_tsp,puree_Tbsp,puree_cup,puree_pc \link[base]{numeric} vector, weight (in grams) and volume of one or more puree
#' 
#' @slot fruit \link[base]{numeric} vector, weight of fresh fruit pulp or juice (in grams)
#' @slot fruit_pc \link[base]{numeric} vector, number of fresh fruit pulp or juice
#' 
#' @slot dairy,dairy_tsp,dairy_Tbsp,dairy_cup,dairy_brick \link[base]{numeric} scalar, weight (in grams) and volume of dairy products
#' 
#' @slot oil,oil_tsp,oil_Tbsp,oil_cup \link[base]{numeric} scalar, weight (in grams) and volume of liquid oil
#' @slot fat,fat_tsp,fat_Tbsp,fat_cup \link[base]{numeric} scalar, weight (in grams) and volume of solid fat
#' 
#' @slot egg,egg_pc \link[base]{numeric} \link[base]{vector}s, numbers of large egg (52 grams each), egg yolks (17.3 grams each) and whites (34.7 grams each)
#' 
#' @slot tea,tea_pc \link[base]{numeric} \link[base]{vector}s, weight of loose tea (in grams) and number of tea bags.
#' 
#' @slot flour,flour_tsp,flour_Tbsp,flour_cup \link[base]{numeric} \link[base]{vector}, weight (in grams) and volume of King Arthur all purpose flour
#' @slot beverage,beverage_tsp,beverage_Tbsp,beverage_cup \link[base]{numeric} \link[base]{vector}
#' 
#' @slot starch,starch_tsp,starch_Tbsp,starch_cup \link[base]{numeric} scalar or \link[base]{vector}, weight (in grams) and volume of various starch
#' 
#' @slot grain,grain_tsp,grain_Tbsp,grain_cup \link[base]{numeric} scalar or \link[base]{vector}, weight (in grams) and volume of various grains
#' 
#' @slot bean \link[base]{numeric} \link[base]{vector}, weight of dry beans (in grams)
#' 
#' @slot nut \link[base]{numeric} scalar, weight of dry nuts (in grams)
#' @slot seed \link[base]{numeric} scalar, weight of dry seed (in grams)
#' 
#' 
#' @slot sugar,sugar_tsp,sugar_Tbsp,sugar_cup \link[base]{numeric} scalar, weight (in grams) and volume of sugar 
#' 
#' @slot syrup,syrup_tsp,syrup_Tbsp,syrup_cup \link[base]{numeric} scalar or \link[base]{vector}, weight (in grams) and volume of various syrup
#' 
#' @slot NaHCO3,NaHCO3_tsp,NaHCO3_Tbsp,NaHCO3_cup \link[base]{numeric} scalars, weight (in grams) and volume of Arm and Hammer baking soda
#' 
#' @slot Na2CO3,Na2CO3_tsp,Na2CO3_Tbsp,Na2CO3_cup \link[base]{numeric} scalars, weight (in grams) and volume of Na2CO3.  Na2CO3 is made from baking Arm and Hammer baking soda, 200F for 30 minutes
#' 
#' @slot bakingPowder,bakingPowder_tsp,bakingPowder_Tbsp,bakingPowder_cup \link[base]{numeric} scalar, weight (in grams) and volume of baking powder
#' @slot salt,salt_tsp,salt_Tbsp,salt_cup \link[base]{numeric} scalar, weight (in grams) and volume of salt
#' @slot msg,msg_tsp,msg_Tbsp,msg_cup \link[base]{numeric} scalar, weight (in grams) and volume of monosodium glutamate (MSG)
#' @slot vanilla,vanilla_tsp,vanilla_Tbsp,vanilla_cup \link[base]{numeric} scalar, weight (in grams) and volume of vanilla extract
#' @slot yeast,yeast_tsp,yeast_Tbsp,yeast_cup \link[base]{numeric} scalar, weight (in grams) and volume of yeast
#' 
#' @slot cocoa,cocoa_tsp,cocoa_Tbsp,cocoa_cup \link[base]{numeric} scalar, weight (in grams) and volume of Dutch-processed cocoa powder
#' @slot matcha,matcha_tsp,matcha_Tbsp,matcha_cup \link[base]{numeric} scalar, weight (in grams) and volume of culinary matcha powder 
#' @slot spice,spice_tsp,spice_Tbsp,spice_cup named \link[base]{numeric} \link[base]{vector}, weight (in grams) and volume of compound spices
#' 
#' @slot coffee,coffee_tsp,coffee_Tbsp,coffee_cup \link[base]{numeric} scalar, weight (in grams) and volume of instant coffee
#' 
#' @slot meat \link[base]{numeric} vector, weight of one or more cuts of meat (in grams)
#' @slot poultry \link[base]{numeric} vector, weight of one or more cuts of poultry (in grams)
#' @slot seafood \link[base]{numeric} vector, weight of one or more other sea food (in grams)
#' 
#' @slot vegetable \link[base]{numeric} vector, weight of one or more vegetables (in grams)
#' 
#' @slot water,water_tsp,water_Tbsp,water_cup \link[base]{numeric} scalar, weight (in grams) and volume of water
#' @slot sauce,sauce_tsp,sauce_Tbsp,sauce_cup \link[base]{numeric} vector, weight (in grams) and volume of one or more sauces
#' @slot liqueur,liqueur_tsp,liqueur_Tbsp,liqueur_cup \link[base]{numeric} vector, weight (in grams) and volume of one or more liqueurs
#' 
#' @slot gelatin,gelatin_pc \link[base]{numeric} \link[base]{vector}s
#' 
#' @name raw_recipe
#' @aliases raw.-class
#' @export
setClass(
  Class = 'raw.', 
  # dQuote('raw') has a sealed class definition and cannot be redefined
  slots = rep_names('numeric', nm = c(
    'homemade',
    'misc', 'misc_tsp', 'misc_Tbsp', 'misc_cup',
    'puree', 'puree_tsp', 'puree_Tbsp', 'puree_cup', 'puree_pc',
    'fruit', 'fruit_pc',
    'oil', 'oil_tsp', 'oil_Tbsp', 'oil_cup', 
    'fat', 'fat_tsp', 'fat_Tbsp', 'fat_cup',
    'egg', 'egg_pc', 
    'tea', 'tea_pc', 
    'dairy', 'dairy_tsp', 'dairy_Tbsp', 'dairy_cup', 'dairy_brick',
    'yeast', 'yeast_tsp', 'yeast_Tbsp', 'yeast_cup',
    'sugar', 'sugar_tsp', 'sugar_Tbsp', 'sugar_cup',
    'syrup', 'syrup_tsp', 'syrup_Tbsp', 'syrup_cup',
    'salt', 'salt_tsp', 'salt_Tbsp', 'salt_cup',
    'msg', 'msg_tsp', 'msg_Tbsp', 'msg_cup',
    'NaHCO3', 'NaHCO3_tsp', 'NaHCO3_Tbsp', 'NaHCO3_cup',
    'Na2CO3', 'Na2CO3_tsp', 'Na2CO3_Tbsp', 'Na2CO3_cup',
    'bakingPowder', 'bakingPowder_tsp', 'bakingPowder_Tbsp', 'bakingPowder_cup',
    'flour', 'flour_tsp', 'flour_Tbsp', 'flour_cup',
    'starch', 'starch_tsp', 'starch_Tbsp', 'starch_cup',
    'beverage', 'beverage_tsp', 'beverage_Tbsp', 'beverage_cup', 
    'grain', 'grain_tsp', 'grain_Tbsp', 'grain_cup',
    'bean', 'nut', 'seed',
    'vanilla', 'vanilla_tsp', 'vanilla_Tbsp', 'vanilla_cup',
    'cocoa', 'cocoa_tsp', 'cocoa_Tbsp', 'cocoa_cup',
    'coffee', 'coffee_tsp', 'coffee_Tbsp', 'coffee_cup',
    'matcha', 'matcha_tsp', 'matcha_Tbsp', 'matcha_cup', 
    'spice', 'spice_tsp', 'spice_Tbsp', 'spice_cup',
    'meat', 'poultry', 'seafood',
    'vegetable',
    'water', 'water_tsp', 'water_Tbsp', 'water_cup',
    'sauce', 'sauce_tsp', 'sauce_Tbsp', 'sauce_cup',
    'liqueur', 'liqueur_tsp', 'liqueur_Tbsp', 'liqueur_cup',
    'gelatin', 'gelatin_pc'
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
print.raw. <- \(x, ...) {
  
  x |> 
    labels() |> # [labels.raw.] or [labels.recipe]
    #col_grey() |> 
    style_bold() |> 
    cat('\n\n')

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






setMethod(f = initialize, signature = 'raw.', definition = \(.Object, ...) {
  
  x <- callNextMethod(.Object, ...)
  
  x <- x |> 
    mergePc(which = 'gelatin') |>
    mergePc(which = 'egg') |>
    mergePc(which = 'fruit') |>
    mergePc(which = 'puree') |>
    mergePc(which = 'tea') |>
    mergeVol(which = 'flour') |>
    mergeVol_H2O() |>
    mergeVol(which = 'misc') |>
    mergeVol(which = 'fat') |>
    mergeVol(which = 'spice') |>
    mergeVol(which = 'syrup') |>
    mergeVol(which = 'sugar', nm = 'US_10x') |>
    mergeVol(which = 'salt', nm = 'Morton_salt') |>
    mergeVol(which = 'starch') |>
    mergeVol(which = 'oil') |>
    mergeVol(which = 'sauce') |>
    mergeVol(which = 'liqueur') |>
    mergeVol(which = 'dairy') |> 
    mergeVol(which = 'grain') |> 
    mergeVol(which = 'nut') |>
    mergeVol(which = 'seed') |>
    mergeVol(which = 'coffee') |>
    mergeVol(which = 'cocoa') |>
    mergeVol(which = 'matcha')
  
  for (i in names(getSlots(x = 'raw.'))) {
    x <- x |>
      .slot_rm_zero(name = i)
  }
  
  return(x)
  
})



#' @importFrom stats na.omit
#' @method as.double raw.
#' @export
as.double.raw. <- \(x, detail = TRUE, rel = FALSE, ...) {
  
  x <- x |>
    mergeH2O()
  
  # detailed ingredients
  ingredient <- attributes(x)[names(getSlots(x = 'raw.'))] |>
    unname() |>
    unlist(use.names = TRUE) # no need to remove len-0 element
  
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
      glutRice = x['_glutinousRiceFlr$'] |> sum(),
      eggYolk = x['^eggYolk$'] |> sum()
      # 'eggWhite' = x['^eggWhite$'] |> sum()#, # waterLost after cooking!!
    )
  }
  if (!length(z)) stop('shouldnt happen!!!')
  if (rel) return(z / sum(ingredient))
  return(z)
}

  

