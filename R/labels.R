
#' @export
labels.recipe <- \(object, ...) {
  
  x <- object; object <- NULL
  
  # <flavor> <key> <author>
  # e.g., Pumpkin Cheesecake Preppy Kitchen
  # `<flavor> <key>` might have {.run } link
  
  key_txt <- switch(
    EXPR = key(x),
    bao = '\u5305\u5b50\u76ae',
    beefball = '\u725b\u8089\u4e38',
    Bundt = 'Bundt\u86cb\u7cd5',
    caffeCoconut = '\u751f\u6930\u62ff\u94c1',
    cake = '\u86cb\u7cd5\U1f370',
    cheesecake = 'NY Cheesecake\u91cd\u4e73\u916a\u86cb\u7cd5',
    cheesecakeJPN = '\u65e5\u5f0f\u8f7b\u4e73\u916a\u86cb\u7cd5',
    cocoaMix = 'Cocoa Mix',
    CoengFan = '\u80a0\u7c89',
    cornbread = 'Cornbread\U1f33d',
    cookedBrownRice = '\u7cd9\u7c73\u996d',
    cookedRice = '\u7c73\u996d',
    creamCheeseDip = 'Cream Cheese Dip\u5976\u6cb9\u4e73\u916a\u9171', 
    creamCheeseSpread = 'Cream Cheese Spread\U1f96f\u5976\u6cb9\u4e73\u916a\u9171',
    custardFilling = '\u5976\u9ec4\u9985',
    dip = '\u8638\u6c34',
    fauxReo = '\u5c71\u5be8\u5965\u5229\u5965',
    fishball = '\u9c7c\u4e38',
    grahamCrust = 'Graham Crust',
    guacamole = 'Guacamole\u725b\u6cb9\u679c\U0001f951\u9171',
    gyoza = '\u997a\u5b50\u76ae',
    huajuan = '\u82b1\u5377',
    LangueDeChat = 'Langue de Chat\u732b\u820c\u997c',
    lava = '\u6d41\u5fc3\u9985',
    liangpi = '\u51c9\u76ae',
    matchaCoconut = '\u751f\u6930\u62b9\u8336',
    meatTenderizer = '\u5ae9\u8089\u6c34',
    mianjin = '\u9762\u7b4b',
    mochaMix = 'Mocha Mix',
    oatmeal = 'Oatmeal\u71d5\u9ea6\u7ca5',
    pasteisdenata = '\u8461\u5f0f\u86cb\u631e',
    ricepi = '\u7c73\u76ae',
    rub = '\u814c\u6599',
    sacima = '\u8428\u5176\u9a6c',
    skinGlaze = '\u8106\u76ae\u7cd6\u6d46',
    snowSkin = '\u51b0\u76ae',
    sodastream = 'SodaStream\u6c7d\u6c34',
    teaCaffeCoconut = '\u751f\u6930\u9e33\u9e2f',
    tiramisu = 'Tirames\u00f9', # Venetian (not Italian)
    tomyumStew = '\u94f8\u94c1\u9505\u7116\u6d77\u9c9c \u51ac\u9634\u9171',
    tortilla = 'Tortilla',
    udon = '\u9942\u98e9\u3046\u3069\u3093',
    wonton = '\u9984\u9968\u76ae',
    youtiao = '\u6cb9\u6761',
    #stop('undefined @key ', sQuote(key(x)))
    character()
  )
  
  nm <- c(x@flavor, key_txt) |> # allow len-0 x@flavor
    paste(collapse = ' ') |>
    make_ansi_style('steelblue4')()
  
  if (!identical(x@call, quote(`<UNDEFINED>`))) { 
    # e.g., **not** from setAs(from = 'nutrition', to = 'recipe')
    nm <- nm |>
      .cli_run(
        pkg = 'sousChef',
        fun = as.character(x@call)
      )
  }
  
  if (!length(x@author)) return(nm)
  
  paste(
    nm, 
    x@author |> 
      col_green()
  )
  
}

