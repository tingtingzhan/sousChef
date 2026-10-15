

# stopifnot(identical(' ', '\u0020'))


#' @title Kitchen \linkS4class{tool}s
#' 
#' @description ..
#' 
#' @slot name \link[base]{character} scalar, brand and name of kitchen tool
#' 
#' @slot alias \link[base]{character} scalar
#' 
#' @slot name2 any R object, currently supports \link[base]{character} or \linkS4class{tool}, brand and name of the auxiliary tool
#' 
#' @slot capacity \link[base]{numeric} scalar, maximum capacity, in times of recipe
#' 
#' @slot treatment \link[base]{character} scalar, pre-treatment
#' 
#' @slot program \link[base]{character} scalar, program
#' 
#' @slot operation \link[base]{character} scalar or \link[base]{vector}, operation(s) on multiple days
#' 
#' @slot fahrenheit \link[base]{numeric} scalar 
#' 
#' @slot minute \link[base]{numeric} scalar
#' 
#' @slot cooling \link[base]{character} scalar or \link[base]{vector}, instructions of cooling down
#' 
#' @slot note \link[base]{character} scalar or \link[base]{vector}, other notes
#' 
#' @slot waterLost \link[base]{numeric} scalar, water evaporated in cooking (in grams) 
#' 
#' @export
setClass(Class = 'tool', slots = c(
  name2 = 'ANY',
  capacity = 'numeric',
  fahrenheit = 'numeric',
  minute = 'numeric',
  waterLost = 'numeric',
  
  rep_names('character', nm = c(
    'name', 'alias',
    'treatment',
    'program',
    'operation',
    'cooling',
    'note'
  ))
))




tool <- \(...) {
  
  x <- list(...) |>
    add_tool_url(name = 'kitchenaid', fmt = 'https://www.kitchenaid.com/p.%s.html', brand = 'Kitchen Aid') |>
    add_tool_url(name = 'instantpot', fmt = 'https://instantpot.com/products/%s', brand = 'Instant Pot') |>
    add_tool_url(name = 'nutribullet', fmt = 'https://www.nutribullet.com/shop/%s', brand = 'Nutribullet') |>
    add_tool_url(name = 'sodastream', fmt = 'https://sodastream.com/products/%s', brand = 'SodaStream') |>
    add_tool_url(name = 'staub', fmt = 'https://www.zwilling.com/us/%s.html', brand = 'Staub') |>
    add_tool_url(name = 'stanley1913', fmt = 'https://www.stanley1913.com/products/%s', brand = 'Stanley')

  c(list(Class = 'tool'), x) |> 
    do.call(what = 'new', args = _)
  
}




#' @rdname tool-class
#' @param object see **Usage**
#' @export
setMethod(f = show, signature = 'tool', definition = \(object) {
  
  x <- object; object <- NULL
  
  if (identical(x, new(Class = 'tool'))) return(invisible())
    
  c(x@alias, x@name) |>
    paste(collapse = ' ') |>
    sprintf(fmt = '\u2756 %s \u2756\n') |>
    make_ansi_style('royalblue')() |> 
    cat()
  
  nm2 <- if (is.character(x@name2)) {
    x@name2
  } else if (is(x@name2, 'tool')) {
    x@name2@name
  } else if (!length(x@name2)) {
    character()
  } else stop('unsupported `@name2`')
  nm2 |> 
    sprintf(fmt = '\u2756 %s \u2756\n') |> 
    make_ansi_style('royalblue')() |> 
    cat()
  
  if (length(x@capacity)) {
    x@capacity |> 
      sprintf(fmt = '\u00d7%.1f recipes') |>
      bg_br_yellow() |>
      sprintf(fmt = ' \u2726 Max. Capacity: %s\n') |> 
      cat()
  }
  
  x@treatment |> 
    sprintf(fmt = ' \u21ac %s\n') |> 
    cat(sep = '')
  
  sprintf(
    fmt = ' \u2726 %s %s\n',
    x@program,
    (names(x@program) %||% '') |> bg_br_yellow()
  ) |> 
    cat(sep = '')
  
  temperature <- sprintf(
    fmt = '\U1f321%.0f\u00b0F %.0f\u00b0C',
    x@fahrenheit,
    (x@fahrenheit - 32) * 5/9 # celsius
  ) |> 
    col_blue() |> style_bold()
  
  minute <- sprintf(
    fmt = '\u23f0%s %s', 
    x@minute |> fmt_min() |> col_red() |> style_bold(),
    (names(x@minute) %||% '') |> bg_br_yellow()
  ) |>
    trimws()
  
  if (length(minute) && length(temperature)) {
    sprintf(fmt = '   %s %s', temperature, minute) |> 
      cat(sep = '\n')
  } else if (length(minute)) {
    sprintf(fmt = '   %s', minute) |> 
      cat(sep = '\n')
  } else if (length(temperature)) {
    sprintf(fmt = '   %s', temperature) |> 
      cat(sep = '\n')
  } # else do nothing
  
  x@operation |>
    gsub(pattern = '\n', replacement = '') |>
    gsub(pattern = '^ *|(?<= ) | *$', replacement = '', perl = TRUE) |>
    sprintf(fmt = ' \u21ac %s\n') |> 
    cat(sep = '')
  
  #cat('\n')
  
  x@cooling |> 
    sprintf(fmt = ' \u21ac %s\n') |> 
    cat(sep = '')
  
  x@waterLost |> 
    sprintf(fmt = ' \u2668 water evaporated: %.0f grams\n') |> 
    cat(sep = '')
  
  x@note |> 
    sprintf(fmt = ' \u2756 %s\n') |> 
    cat(sep = '')
  
  cat('\n')
  
})













Pastalinda260 <- \(...) tool(
  name = 'https://www.pastalindausa.com/collections/pasta-maker-classic-260' |>
    style_hyperlink(text = 'Pasta Maker Classic 260', url = _) |>
    c(),
  ...
)


SamsungME21R706BAT <- \(...) tool(
  name = style_hyperlink(text = 'Samsung ME21R706BAT/AA 2.1 Ft\u00b3 Over-The-Range Microwave', url = 'https://samsungparts.com/products/me21r706bat-aa') |> c(),
  ...)


thermometer <- \(...) tool(
  name = style_hyperlink(text = 'Etekcity Lasergrip 1260', url = 'https://etekcity.com/products/lasergrip-1260-infrared-thermometer') |> c(), 
  ...)

CuisinartICE70 <- \(...) tool(
  name = style_hyperlink(text = 'Cuisinart Ice Cream Maker ICE-70', url = 'https://www.cuisinart.com/ICE-70P1.html') |> c(),
  ...)

InstantPot <- \(...) tool(
  name = 'Pro, 8 Quart', 
  instantpot = 'instant-pot-pro-8-quart-multi-use-pressure-cooker', 
  alias = '\u7535\u9ad8\u538b\u9505',
  ...)

KSMICM <- \(...) tool(
  name = 'Ice Cream Attachment KSMICM', kitchenaid = 'ksmicm',
  ...)

KSM8990 <- \(...) tool(
  name = 'Stand Mixer KSM8990, 8 Quart', kitchenaid = 'ksmc895ob',
  ...)

KSM7BL3PSS_doughhook <- \(...) tool(
  name = 'Dough Hook, Stainless Steel',
  kitchenaid = 'KSM7BL3PSS',
  ...)


KSM7BL3PSS_flatbeater <- \(...) tool(
  name = 'Flat Beater, Stainless Steel',
  kitchenaid = 'KSM7BL3PSS',
  ...)

KSM7BL3PSS_wirewhip <- \(...) tool(
  name = 'Wire Whip, Stainless Steel',
  kitchenaid = 'KSM7BL3PSS',
  ...)

KSM8990_dough <- \(...) KSM8990(
  ...,
  name2 = KSM7BL3PSS_doughhook(),
  operation = c(
    paste('\U1f4a1 blend canned or frozen fruit ', col_br_blue('e.g., pineapple, etc.')),
    'Add 1\ufe0f\u20e3 water/puree; 2\ufe0f\u20e3 flour; 3\ufe0f\u20e3 baking powder/soda & yeast', # ; 4\ufe0f\u20e3 solid fat
    'Knead at Level 2; stop\U1f6d1 once no dry flour is visible',
    paste0('Press everything tight using ', 'Pastalinda' |> col_red() |> style_bold()),
    'Knead at Level-Stir; manually stop and reposition frequently',
    'Add solid fat after gluten developes; knead until fat is obsorbed'
  )
)



KSM3316X <- \(...) tool(
  name = 'Stand Mixer KSM3316X, 3.5 Quart', kitchenaid = 'ksm3316xer',
  ...)

KSEG950ESS <- \(...) tool(
  name = 'Downdraft Range KSEG950ESS', kitchenaid = 'kseg950ess', alias = '\u70e4\u7bb1',
  ...)

RobamCT763 <- \(...) tool(
  name = style_hyperlink(text = 'Robam R-Box CT763 Combi Steam Oven', url = 'https://robamliving.com/products/robam-ct763') |> c(),
  ...)

PhilipsHD9867 <- \(...) tool(
  name = style_hyperlink(text = 'Philips Airfryer XXL HD9867', url = 'https://www.usa.philips.com/c-p/HD9867_16') |> c(), 
  alias = '\u7a7a\u6c14\u70b8\u9505',
  ...)

SanyoECJS35S <- \(...) tool(
  name = style_hyperlink(text = 'Sanyo Rice Cooker ECJ-S35S', url = 'https://kitchen.manualsonline.com/manuals/mfg/sanyo/ecjs35s.html') |> c(), 
  alias = '\u7535\u996d\u7172', 
  ...)

JoyoungDJ13U <- \(...) tool(
  name = style_hyperlink(text = 'Joyoung Soymilk Maker DJ13U-P10', url = 'https://en.huarenstore.com/joyoung-soy-milk-maker-dj13u-p10.html') |> c(), 
  alias = '\u8c46\u6d46\u673a', 
  ...)


JoyoungDJ06M <- \(...) tool(
  name = style_hyperlink(text = 'Joyoung Mini Soymilk Maker DJ06M', url = 'https://en.huarenstore.com/joyoung-soymilk-maker-dj06m.html') |> c(), 
  alias = '\u8ff7\u4f60\u8c46\u6d46\u673a', 
  ...)


JoyoungDJ13U_soymilk <- \(
  treatment = c(
    paste('Soak dry beans', col_br_blue('e.g., soybean, chickpea, mung bean, etc.'), 'overnight in fridge')
  ),
  program = '\u8001\u8c46\u6d46\u7a0b\u5e8f Classic Soymilk program, 1300ml water line',
  waterLost = 45, # whole machine, 4175 - 4131, 2024-09-15
  ...
) JoyoungDJ13U(treatment = treatment, program = program, waterLost = waterLost, ...)


JoyoungDJ06M_soymilk <- \(
  treatment = c(
    paste0('Soak dry beans ', col_br_blue('e.g., soybean, chickpea, mung bean, etc.'), ' overnight in fridge')
  ),
  program = '\u8c46\u6d46\u7a0b\u5e8f Soymilk program, 600ml water line',
  waterLost = 5, # soymilk 2130 - 2126, confirmed 2024-10-08
  ...
) JoyoungDJ06M(treatment = treatment, program = program, waterLost = waterLost, ...)


JoyoungDJ13U_cornjuice <- \(
  program = '\u7389\u7c73\u6c41\u7a0b\u5e8f Corn\U1f33d Juice program, 900ml water line',
  operation = c(
    'Do not use 1300ml water line, cannot push down blades',
    'Machine gives error if pre-blended'
  ), 
  ...
) JoyoungDJ13U(program = program, operation = operation, ...)


JoyoungCJA9U <- \(
  program = '\u7206\u7092\u7a0b\u5e8f Stir Fry program',
  ...
) new(
  Class = 'tool',
  name = 'https://en.huarenstore.com/joyoung-cooking-machine-cj-a9u.html' |>
    style_hyperlink(text = 'Joyoung Stir-Frying Machine CJ-A9U', url = _) |> 
    c(), 
  alias = '\u7092\u83dc\u673a',
  program = program, 
  ...)


JoyoungCJA9U_filling <- \(
  treatment = c(
    'Sprinkle (chilled) butter chunks on bottom of stir-frying pan; otherwise batter sticks and burns!',
    'Pour mixture into stir-frying pan, on top of sprinkled butter'
  ),
  operation = '\U1f4a1 manually stir frequently for high sugar-content ingredient!',
  cooling = c(
    'fold added sugar into hot, cooked paste',
    'disassemble machine as early as possible; sugar syrup may stick'
  ),
  ...
) {
  JoyoungCJA9U(
    treatment = treatment,
    operation = operation,
    cooling = cooling,
    ...
  )
}



nutribullet20 <- \(...) tool(
  name = 'Ultra 20 fl. oz. Blending Cup', 
  nutribullet = 'accessories/nutribullet-tritan-renew-20oz-cup/',
  ...) 

nutribullet24 <- \(...) tool(
  name = 'Ultra 24 fl. oz. Blending Cup', 
  nutribullet = 'accessories/nutribullet-tritan-renew-24-oz-cup-with-to-go-lid/',
  ...) 

Stanley20 <- \(...) tool(
  stanley1913 = 'adventure-quencher-travel-tumbler-20-oz',
  name = 'Quencher 20oz',
  ...)

Stanley14 <- \(...) tool(
  stanley1913 = 'adventure-quencher-travel-tumbler-14-oz',
  name = 'Quencher 14oz',
  ...)

Stanley40 <- \(...) tool(
  stanley1913 = 'quencher-protour-flipstraw-tumbler',
  name = 'Quencher 40oz',
  ...)

StanleyJar36 <- \(...) tool(
  stanley1913 = 'adventure-to-go-food-jar-spork-36-oz',
  name = 'Food Jar 36oz', 
  ...)



Staub_vertRoaster <- \(...) tool(
  name = 'Vertical Chicken Roaster', staub = '1200023', alias = '\u94f8\u94c1\u70e4\u9e21\u67b6',
  name2 = KSEG950ESS(),
  ...)

Staub_deepSkillet <- \(...) tool(
  name = 'Deep Skillet, 8.5 inch', staub = '1029479', alias = '\u94f8\u94c1\u5e73\u5e95\u9505',
  ...
)


SodaStream_Art <- \(...) tool(
  name = 'ART',
  sodastream = 'art',
  ...
)

SodaStream_bottle1L <- \(...) tool(
  name = 'Slim Sparkling Water Bottle 33.8 oz',
  sodastream = 'sodastream-1l-slim-dishwasher-safe-bottles-twin-pack-black',
  ...
)


