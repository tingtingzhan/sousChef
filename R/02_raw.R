

# According to 
# https://www.kingarthurbaking.com/pro/formulas
# Baker's percentage of water is
# added-water : flour
# water in flour is *not* included!!!



#' @title Raw Ingredients and Recipe
#' 
#' @description 
#' \linkS4class{raw.} allows negative ingredients.
#' 
#' @slot homemade \link[base]{numeric} vector
#' @slot misc,misc_tsp,misc_Tbsp,misc_cup \link[base]{numeric} vector, weight of one or more miscellaneous ingredients (in grams)
#' 
#' @slot puree,puree_tsp,puree_Tbsp,puree_cup,puree_pc \link[base]{numeric} vector, weight of one or more puree (in grams)
#' 
#' @slot fruit \link[base]{numeric} vector, weight of fresh fruit pulp or juice (in grams)
#' @slot fruit_pc \link[base]{numeric} vector, number of fresh fruit pulp or juice
#' 
#' @slot dairy,dairy_tsp,dairy_Tbsp,dairy_cup,dairy_brick \link[base]{numeric} scalar, weight of dairy products (in grams)
#' 
#' @slot oil,oil_tsp,oil_Tbsp,oil_cup \link[base]{numeric} scalar, weight (in grams) and volume of liquid oil
#' @slot fat,fat_tsp,fat_Tbsp,fat_cup \link[base]{numeric} scalar, weight (in grams) and volume of solid fat
#' 
#' @slot egg,egg_pc \link[base]{numeric} \link[base]{vector}s, numbers of large egg (52 grams each), egg yolks (17.3 grams each) and whites (34.7 grams each)
#' 
#' @slot tea,tea_pc \link[base]{numeric} \link[base]{vector}s, weight of loose tea in grams and number of tea bags, respectively
#' 
#' @slot flour,flour_tsp,flour_Tbsp,flour_cup \link[base]{numeric} \link[base]{vector}, weight of King Arthur all purpose flour (in grams)
#' @slot beverage,beverage_tsp,beverage_Tbsp,beverage_cup \link[base]{numeric} \link[base]{vector}
#' 
#' @slot starch,starch_tsp,starch_Tbsp,starch_cup \link[base]{numeric} scalar or \link[base]{vector}, named weight (in grams) and volume of various starch
#' 
#' @slot grain,grain_tsp,grain_Tbsp,grain_cup \link[base]{numeric} scalar or \link[base]{vector}, named weight of various grains
#' 
#' @slot bean \link[base]{numeric} \link[base]{vector}, weight of dry beans (in grams)
#' 
#' @slot nut \link[base]{numeric} scalar, weight of various dry nuts (in grams)
#' @slot seed \link[base]{numeric} scalar, weight of various dry seed (in grams)
#' 
#' 
#' @slot sugar,sugar_tsp,sugar_Tbsp,sugar_cup \link[base]{numeric} scalar, weight (in grams) and volume of 10x powdered confectioners sugar 
#' 
#' @slot syrup,syrup_tsp,syrup_Tbsp,syrup_cup \link[base]{numeric} scalar or \link[base]{vector}, weight (in grams) and volume of various (maple) syrup
#' 
#' @slot NaHCO3,NaHCO3_tsp,NaHCO3_Tbsp,NaHCO3_cup \link[base]{numeric} scalars, weight (in grams) and volume of Arm and Hammer baking soda
#' 
#' @slot Na2CO3,Na2CO3_tsp,Na2CO3_Tbsp,Na2CO3_cup \link[base]{numeric} scalars, 
#' weight (in grams) and volume of Na2CO3, respectively.
#' Na2CO3 is made from baking Arm and Hammer baking soda, 200F for 30 minutes
#' 
#' @slot bakingPowder,bakingPowder_tsp,bakingPowder_Tbsp,bakingPowder_cup \link[base]{numeric} scalar, weight (in grams) and volume of baking powder
#' @slot salt,salt_tsp,salt_Tbsp,salt_cup \link[base]{numeric} scalar, weight (in grams) and volume of salt
#' @slot msg,msg_tsp,msg_Tbsp,msg_cup \link[base]{numeric} scalar, weight (in grams) and volume of monosodium glutamate (MSG)
#' @slot vanilla,vanilla_tsp,vanilla_Tbsp,vanilla_cup \link[base]{numeric} scalar, weight (in grams) and volume of vanilla extract
#' 
# @slot blackSesame \link[base]{numeric} scalar, weight (in grams) of Greenmax powdered black sesame seed
#' 
#' @slot cocoa,cocoa_tsp,cocoa_Tbsp,cocoa_cup \link[base]{numeric} scalar, weight (in grams) and volume of Dutch-processed cocoa powder
#' @slot matcha,matcha_tsp,matcha_Tbsp,matcha_cup \link[base]{numeric} scalar, weight (in grams) and volume of culinary matcha powder 
#' @slot spice,spice_tsp,spice_Tbsp,spice_cup named \link[base]{numeric} \link[base]{vector}, weight (in grams) and volume of compound spices
#' 
#' @slot coffee,coffee_tsp,coffee_Tbsp,coffee_cup \link[base]{numeric} scalar, weight (in grams) and volume of `superior = 'NescafeGold_blonde'`
#' 
#' @slot poultry \link[base]{numeric} vector, weight of one or more cuts of poultry (in grams)
#' @slot seafood \link[base]{numeric} vector, weight of one or more other sea food (in grams)
#' 
#' @slot meat \link[base]{numeric} vector, weight of one or more cuts of meat (in grams)
#' 
#' @slot vegetable \link[base]{numeric} vector, weight of one or more vegetables (in grams)
#' 
#' @slot water,water_tsp,water_Tbsp,water_cup \link[base]{numeric} scalar, weight of water (in grams)
# @slot water_ext \link[base]{numeric} scalar, weight of extra water (in grams) to hydrate powders in a dough
#' @slot carbonatedWater \link[base]{numeric} scalar, weight of carbonated water (in grams)
#' 
#' @slot sauce,sauce_tsp,sauce_Tbsp,sauce_cup \link[base]{numeric} vector, weight (in grams) and volume of one or more sauces
#' @slot liqueur,liqueur_tsp,liqueur_Tbsp,liqueur_cup \link[base]{numeric} vector, weight (in grams) and volume of one or more liqueurs
#' 
#' @slot yeast,yeast_tsp,yeast_Tbsp,yeast_cup \link[base]{numeric} scalar, weight (in grams) and volume of yeast
#' 
#' @slot gelatin,gelatin_pc \link[base]{numeric} \link[base]{vector}s
#' 
#' @name raw_recipe
#' @aliases raw.-class
#' @export
setClass(Class = 'raw.', slots = c(
  # dQuote('raw') has a sealed class definition and cannot be redefined
  
  homemade = 'numeric',
  
  misc = 'numeric', misc_tsp = 'numeric', misc_Tbsp = 'numeric', misc_cup = 'numeric',
  puree = 'numeric', puree_tsp = 'numeric', puree_Tbsp = 'numeric', puree_cup = 'numeric', puree_pc = 'numeric',
  
  fruit = 'numeric', 
  fruit_pc = 'numeric',
  
  oil = 'numeric', oil_tsp = 'numeric', oil_Tbsp = 'numeric', oil_cup = 'numeric', 
  
  fat = 'numeric', fat_tsp = 'numeric', fat_Tbsp = 'numeric', fat_cup = 'numeric',
  
  egg = 'numeric', egg_pc = 'numeric', 
  
  tea = 'numeric', tea_pc = 'numeric', 
  
  dairy = 'numeric', dairy_tsp = 'numeric', dairy_Tbsp = 'numeric', dairy_cup = 'numeric', dairy_brick = 'numeric',
  
  yeast = 'numeric', yeast_tsp = 'numeric', yeast_Tbsp = 'numeric', yeast_cup = 'numeric',
  
  sugar = 'numeric', sugar_tsp = 'numeric', sugar_Tbsp = 'numeric', sugar_cup = 'numeric',
  syrup = 'numeric', syrup_tsp = 'numeric', syrup_Tbsp = 'numeric', syrup_cup = 'numeric',
  salt = 'numeric', salt_tsp = 'numeric', salt_Tbsp = 'numeric', salt_cup = 'numeric',
  msg = 'numeric', msg_tsp = 'numeric', msg_Tbsp = 'numeric', msg_cup = 'numeric',
  NaHCO3 = 'numeric', NaHCO3_tsp = 'numeric', NaHCO3_Tbsp = 'numeric', NaHCO3_cup = 'numeric',
  Na2CO3 = 'numeric', Na2CO3_tsp = 'numeric', Na2CO3_Tbsp = 'numeric', Na2CO3_cup = 'numeric',
  bakingPowder = 'numeric', bakingPowder_tsp = 'numeric', bakingPowder_Tbsp = 'numeric', bakingPowder_cup = 'numeric',
  
  flour = 'numeric', flour_tsp = 'numeric', flour_Tbsp = 'numeric', flour_cup = 'numeric',
  starch = 'numeric', starch_tsp = 'numeric', starch_Tbsp = 'numeric', starch_cup = 'numeric',
  beverage = 'numeric', beverage_tsp = 'numeric', beverage_Tbsp = 'numeric', beverage_cup = 'numeric', 
  
  grain = 'numeric', grain_tsp = 'numeric', grain_Tbsp = 'numeric', grain_cup = 'numeric',
  bean = 'numeric',
  nut = 'numeric',
  seed = 'numeric',
  
  vanilla = 'numeric', vanilla_tsp = 'numeric', vanilla_Tbsp = 'numeric', vanilla_cup = 'numeric',
  cocoa = 'numeric', cocoa_tsp = 'numeric', cocoa_Tbsp = 'numeric', cocoa_cup = 'numeric',
  coffee = 'numeric', coffee_tsp = 'numeric', coffee_Tbsp = 'numeric', coffee_cup = 'numeric',
  matcha = 'numeric', matcha_tsp = 'numeric', matcha_Tbsp = 'numeric', matcha_cup = 'numeric', 
  #blackSesame = 'numeric',
  spice = 'numeric', spice_tsp = 'numeric', spice_Tbsp = 'numeric', spice_cup = 'numeric',
  
  meat = 'numeric',
  poultry = 'numeric',
  seafood = 'numeric',
  
  vegetable = 'numeric',
  
  water = 'numeric', water_tsp = 'numeric', water_Tbsp = 'numeric', water_cup = 'numeric',
  #water_ext = 'numeric',
  carbonatedWater = 'numeric',
  
  sauce = 'numeric', sauce_tsp = 'numeric', sauce_Tbsp = 'numeric', sauce_cup = 'numeric',
  
  liqueur = 'numeric', liqueur_tsp = 'numeric', liqueur_Tbsp = 'numeric', liqueur_cup = 'numeric',
  
  gelatin = 'numeric', gelatin_pc = 'numeric'
))



# combined water at different temperature
setClass(Class = 'raw_mergeH2O', contains = 'raw.')





#' @rdname raw_recipe
#' @param object see **Usage**
#' @export
setMethod(f = show, signature = 'raw.', definition = \(object) print.raw.(object))

#' @rdname raw_recipe
#' @export
setMethod(f = show, signature = 'raw_mergeH2O', definition = \(object) print.raw.(object))


#' @method labels raw.
#' @export
labels.raw. <- \(object, ...) character()


#' @method print raw.
#' @export
print.raw. <- \(x, ...) {
  
  x |> 
    labels() |> # [labels.raw.] or [labels.recipe]
    col_grey() |> style_bold() |> 
    cat('\n\n')

  prt_vol(x@homemade)
  
  prt_vol(x@meat)
  prt_vol(x@poultry)
  prt_vol(x@seafood)
  
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
  
  prt_vol(x@egg)
  prt_vol(x@gelatin)
  prt_vol(x@tea)
  
  prt_vol(x@misc)
  
  prt_vol_H2O(x@water)
  
  #  water <- sum_by_name(x@water, x@water_ext)
  #  sprintf(fmt = '%s Water %.0f=%.0f%s grams %s\n', col_orchid4('\u5e38\u6e29\u6c34'), water, x@water, sprintf('+%.0f', x@water_ext) |> col_br_red(), fmt_vol(water)) |> 
  #    format_inline() |>
  #    cat()
  
  if (length(x@carbonatedWater)) {
    sprintf(fmt = '%s Carbonated Water %.0f grams %s\n', col_orchid4('\u6c14\u6ce1\u6c34'), x@carbonatedWater, fmt_vol(x@carbonatedWater)) |> 
      format_inline() |>
      cat()
  }

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
    #mergeVol(which = 'water', nm = 'Wegmans_water') |>
    mergeVol_H2O() |>
    addname1(which = 'carbonatedWater', nm = 'Wegmans_water') |>
    #addname1(which = 'ice', nm = 'Wegmans_water') |>
    #addname1(which = 'water_ext', nm = 'Wegmans_water') |> # think more...
    mergeVol(which = 'misc') |>
    mergeVol(which = 'fat') |>
    mergeVol(which = 'spice') |>
    mergeVol(which = 'sugar', nm = 'US_10x') |>
    mergeVol(which = 'syrup') |>
    mergeVol(which = 'salt', nm = 'Morton_salt') |>
    mergeVol(which = 'NaHCO3', nm = 'ArmHammer_NaHCO3') |>
    mergeVol(which = 'Na2CO3', nm = 'Na2CO3') |>
    mergeVol(which = 'bakingPowder', nm = 'TraderJoes_bakingPowder') |>
    mergeVol(which = 'starch') |>
    mergeVol(which = 'oil') |>
    mergeVol(which = 'sauce') |>
    mergeVol(which = 'liqueur') |>
    mergeVol(which = 'dairy') |> 
    mergeVol(which = 'grain') |> 
    mergeVol(which = 'nut') |>
    mergeVol(which = 'seed')
  
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
    as(Class = 'raw_mergeH2O')
  
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

  

