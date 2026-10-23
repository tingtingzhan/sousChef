

#' @import cli
#' @import methods
'_PACKAGE'



.onLoad <- \(libname, pkgname) {
  
  # `x` is \linkS4class{recipe}
  
  fn. <- \(x) NA_real_
  
  sugar <- \(x) switch(
    x@key,
    spam = .006,
    shrimpfill_garlicHerb = .009,
    meatmash =, meatball =, shrimpfillCantonese = .008,
    crumbcrust = if ('_blackSesame$' %in% x) .11 else .01, 
    ricepaste = .015,
    oatmeal = .018,
    soytea = if ('_matcha$' %in% x) .07 else .022, # matcha sweetness needs to be decreased!!!
    bao = if (('_matcha$' %in% x) || ('_beet_pulv$' %in% x) || ('_cocoa$' %in% x)) {
      .04 
    } else .03, # any lower, not delicious!
    snowSkin = if ('_beet_pulv$' %in% x) .03 else .023,
    porkfill = .023,
    stickyTortilla =, crepeCake =, pancake =, thinCrust = .03, 
    yuenyeungCoconut = .035,
    millecrepe = if ('_matcha$' %in% x) {
      .075
    } else if ('_cocoa$' %in% x) {
      .095
    } else if ('_liqueur$' %in% x) {
      .14 
    } else if ('_beet_pulv$' %in% x) {
      .08
    } else .035, 
    marinade = .04,
    caffeCoconut = .02,
    caffeLatte_ = .04, 
    matchaLatte_ = .04, # perfect! 2024 late summer
    tiramisu_ = .045,
    mocaccino_ = .045,
    guacamole = .045,
    milktea_ = .05,
    stickyRice =, riceCake =, riceMousse = .05, 
    #tortillaLard = .06,
    cocoa_ = .055,
    muffin = if ('_cornmeal$' %in% x) {
      .055 # tastes better than .05
    } else if ('_pumpkin$' %in% x) {
      .08
    } else NA_real_,
    pumpkinSpiceLatte_ = .06,
    matchaGoatLatte_ = .07, # early 2024; whole goat milk; try to reduce with tenju!
    sundae = if ('_matcha$' %in% x) {
      .095
    } else if ('_coffee$' %in% x) {
      .07
    } else if ('_pumpkin$' %in% x) {
      .09
    } else if ('_cocoa$' %in% x) {
      NA_real_
    } else .07,
    mascarponeFrosting =, mascarponeGanache =, whippedCream = if ('_liqueur$' %in% x) {
      .07
    } else if ('_matcha$' %in% x) {
      .075 
    } else if ('_cocoa$' %in% x) {
      .09
    } else if ('_pineapple$' %in% x) {
      .08
    } else if ('_pumpkin$' %in% x) {
      .07 # was .065, a little bland
    } else NA_real_,
    kefir =, goatKefir = .075,
    beanPaste = .09,
    lava = .1,
    frosting =, ganache = if ('_matcha$' %in% x) {
      .125
    } else if ('_cocoa$' %in% x) {
      .13
    } else NA_real_,
    creamCheeseSpread =, creamCheeseDip = .08,
    muffin = .08, # all sugar consumed by people # 1st try .09 too sweet
    gateau = if ('_cocoa$' %in% x) {
      .11
    } else NA_real_,
    bread = if (('_matcha$' %in% x) || ('_cocoa$' %in% x)) {
      .075 # great on '_matcha$' 
    } else .045,
    cheesecake = if ('_pumpkin$' %in% x) .12 else .1,
    # froyo = NA_real_, # Greek yogurt flavor too strong to cover
    custardFilling = if ('_pumpkin$' %in% x) {
      .12
    } else if ('_applesauce$' %in% x) {
      .155
    } else if ('_pineapple$' %in% x) {
      .165 
    } else .13,
    cookie = if ('_blackSesame$' %in% x) {
      .145
    } else if (('_matcha$' %in% x) || ('_ginger$' %in% x)) {
      .22 
    } else .2,
    tomyumStew = .16,
    mocaccino = .37,
    matchaLatteMix = .4,
    matchaGoatLatteMix = .515,
    drinkmix = if ('_syrup$' %in% x) {
      .515
    } else NA_real_,
    NA_real_)
  
  addedSugar <- \(x) switch(
    x@key,
    milktea_ = .013,
    NA_real_)
  
  addedSugar2cocoa <- \(x) switch(
    x@key,
    mocaccino =, mocaccino_ = .30,
    NA_real_) 
  
  drymilk <- \(x) switch(
    x@key, 
    caffeCoconut = .015, 
    yuenyeungCoconut = .02, 
    ricepaste = .025,
    riceMousse = {
      if ('_Rice$' %in% x) .035 else .05
    }, 
    stickyTortilla = .03,
    bread = .035, # perfect with match, coffee
    snowSkin =, custardFilling = .045, 
    sundae = if ('_matcha$' %in% x) {
      .077 
    } else if ('_coffee$' %in% x) {
      .075
    } else .055,
    millecrepe = if ('_liqueur$' %in% x) .05 else .06,
    pudding = .05, # trying
    milktea_ = .065,
    caffeLatte_ = .065,
    matchaGoatLatte_ = .065, 
    matchaLatte_ =, mocaccino_ = .065,
    cocoa_ =, 
    pumpkinSpiceLatte_ = .065,
    tiramisu_ = .065,
    cookie = if ('_blackSesame$' %in% x) {
      .08
    } else .15,
    stickyRice =, riceCake = .1, # need to re-think!!
    matchaGoatLatteMix = .53,
    NA_real_)
  
  drymilk2cocoa <- \(x) switch(
    x@key,
    NA_real_)
  
  creamcheese <- \(x) switch(
    x@key,
    cheesecake = if ('_pumpkin$' %in% x) {
      .5 
    } else if (length(x@homemade) && grepl('pineapple', names(x@homemade))) {
      .55
    } else .7,
    NA_real_)
  
  #carbohydrate <- \(x) switch(
  # # !!!! replace with `fiber`!
  #  x@key,
  #  soymilk = .007,
  #  beanPaste = if ('_redkidneybean$' %in% x) .125 else .15,
  #  NA_real_)
  
  fat <- \(x) switch(
    x@key, 
    matchaLatte_ = .004, 
    tiramisu_ = .008,
    stickyTortilla =, TangYuan = .01, 
    mocaccino_ = .01,
    matchaGoatLatte_ = .01,
    snowSkin = .015, 
    bao =, pancake = .02, 
    flan = .025, #tortillaOlive = .025, 
    caffeCoconut =, yuenyeungCoconut = .016,
    matchaLatteMix = .04, 
    bread = if ('_cocoa$' %in% x) .038 else .04, 
    #tortilla = .04,
    riceMousse = .05, 
    beanPaste = .05,
    tiramisuMix = .06,
    crepeCake = .07,
    matchaGoatLatteMix = .075,
    custardFilling = .075,
    mocaccino = .077,
    muffin = .08, 
    millecrepe = if ('_liqueur$' %in% x) .075 else .1, 
    sundae = .11,
    beeffillLeeKumKee = .11,
    meatmash = .12,
    gateau = .12, 
    shrimpfillCantonese = .14, 
    shrimpfill_garlicHerb = .15, 
    mousse = .15,
    cheesecake = if ('_pumpkin$' %in% x) {
      .14 
    } else if (length(x@homemade) && grep('pineapple', names(x@homemade))) {
      .145
    } else .18, # 3:1 mixed cheese
    lava = if ('_blackSesame$' %in% x) .17 else if ('_coconutFlr$' %in% x) .08 else NA_real_,
    cookie = if ('_blackSesame$' %in% x) {
      .28
    } else .25, 
    # cheesecake = .24, # 100% Nancy's full fat, low sodium cream cheese
    porkfill = .25,
    crumbcrust = if ('_blackSesame$' %in% x) .23 else .28,
    mascarponeGanache = if ('_liqueur$' %in% x) {
      .36
    } else if (length(x@water)) {
      .3
    } else if ('_pumpkin$' %in% x) {
      .195
    } else .25,
    whippedCream = .295,
    mascarponeFrosting = .33,
    NA_real_)
  
  sodium <- \(x) switch(
    x@key, 
    #tortilla = .0006,
    # cheesecake = .001, # 100% Nancy's full fat, low sodium cream cheese
    spam = .001, 
    #tortillaOlive =, tortillaLard = .001,
    thinCrust = .0015, 
    matchaGoatLatteMix = .0017,
    shrimpfill_garlicHerb = .002,
    guacamole = .0024,
    meatmash =, meatball = .0025, # some salt cooks into soup
    shrimpfillCantonese = .003,
    mocaccino = .002,
    drinkmix = if (('_coffee$' %in% x) && ('_syrup$' %in% x)) {
      .0028
    } else NA_real_,
    # fishBall = .003, # obviously too salt
    beeffillLeeKumKee = .0025, # confirmed!
    geng = .0025, # .003 too salty
    matchaLatteMix = .0028,
    porkfill = .003, # yes!
    beefchop = .0035,
    #caffeLatte = .0033,
    meatDip = .011,
    marinade = .011,
    tomyumStew = .02,
    flavoredButter = .015,
    rub = .2,
    NA_real_)
  
  matcha <- \(x) switch(
    x@key,
    snowSkin =, stickyTortilla =, wrapperlinda =, noodlelinda = .022, 
    matchaLatte_ = .025, 
    matchaGoatLatte_ = .025, # retry with tenju
    millecrepe = .025, 
    cheesecake = .025,
    bao = .025, # .027 a little too bitter
    frosting =, ganache =, whippedCream = .035,
    bread = .035, # tested!
    cookie = .037,
    sundae = .04, # cold temperature needs stronger flavor
    matchaGoatLatteMix = .155,
    matchaLatteMix = .25, 
    NA_real_)
  
  matcha2flour <- fn.
  
  matcha2pastryFlr <- \(x) switch(
    x@key,
    bao = .045,
    millecrepe = .1,
    NA_real_)
  
  matcha2breadFlr <- \(x) switch(
    x@key,
    wrapperlinda = .035,
    bread = .07,
    NA_real_)
  
  matcha2gluten0Flr <- fn.
  
  matcha2wheatFlrMix <- fn.
  
  matcha2riceFlr <- \(x) switch(
    x@key,
    snowSkin = .075,
    NA_real_)
  
  beet <- \(x) switch(
    x@key,
    snowSkin = .01, 
    millecrepe = .035,
    bao =, bread = .04,
    NA_real_)
  
  beet2flour <- fn.
  
  beet2pastryFlr <- \(x) switch(
    x@key,
    bao = .068,
    millecrepe = .12,
    NA_real_)
  
  beet2breadFlr <- \(x) switch(
    x@key,
    bread = .075,
    NA_real_)
  
  beet2gluten0Flr <- fn.
  
  beet2wheatFlrMix <- fn.
  
  beet2riceFlr <- \(x) switch(
    x@key,
    snowSkin = .075,
    NA_real_)
  
  cocoa <- \(x) switch(
    x@key, 
    caffeCoconut =, yuenyeungCoconut = .0018,
    tiramisu_ = .004,
    snowSkin = .009, 
    caffeLatte_ = .01,
    mocaccino_ = .04, 
    goatKefir = if ('_coffee$' %in% x) .043 else NA_real_, 
    cheesecake = if ('_cocoa$' %in% x) .043 else NA_real_,
    # cookie = .04, 
    bao = .05, # tested!!
    bread = .05, # retry
    millecrepe = .05, # tested
    whippedCream =, frosting =, ganache = .05,
    gateau = .05, # I think this is not enough..
    cocoa_ = .063,
    caffeLatte = .1,
    mocaccino = .32,
    NA_real_)
  
  coffee <- \(x) switch(
    x@key, 
    caffeCoconut =, yuenyeungCoconut = .0065,
    mocaccino_ = .006, 
    tiramisu_ = .008,
    goatKefir = if ('_cocoa$' %in% x) .009 else NA_real_, # forgot if this is tested or hypothetical
    cheesecake = if ('_liqueur$' %in% x) {
      .0073
    } else if ('_cocoa$' %in% x) {
      .009 
    } else .016, # to try
    pumpkinSpiceLatte_ = .0075,
    sundae = .015, # love!
    bao =, bread = .015, # tested on bread() and love!
    caffeLatte_ = .015, # tested and love!!
    snowSkin = .016, # try
    gateau = if ('_cocoa$' %in% x) .002 else NA_real_,
    mocaccino = .05,
    caffeLatte = .14,
    NA_real_)
  
  coffee2cocoa <- \(x) switch(
    x@key,
    mocaccino =, mocaccino_ = .17, # well tested
    cheesecake = .21, # hypothetical
    caffeLatte =, caffeLatte_ = 1.3,
    NA_real_)
  
  ginger. <- \(x) switch(
    x@key, 
    meatmash =, meatball = .0004, 
    shrimpfillCantonese = .0007,
    snowSkin = .001, # to try
    beeffillLeeKumKee = .0015, # tested!
    porkfill = .002,
    cookie =, crumbcrust = .015,
    NA_real_)
  
  garlic <- \(x) switch(
    x@key,
    shrimpfill_garlicHerb = .008,
    NA_real_)
  
  whitePepper <- \(x) switch(
    x@key,
    shrimpfill_garlicHerb = .00055,
    beeffillLeeKumKee = .0009, # tested!
    meatmash =, meatball =, shrimpfillCantonese = .0016,
    porkfill = .002,
    NA_real_)
  
  pumpkinSpice <- \(x) switch(
    x@key, 
    pumpkinSpiceLatteMix = NA_real_,
    pumpkinSpiceLatte_ = .00075, # confirmed!!
    .002) # all other desserts
  
  coriander <- \(x) switch(
    x@key,
    porkfill = .0006,
    NA_real_)
  
  blackSesame <- \(x) switch(
    x@key, 
    crumbcrust = .13,
    cookie = .135,
    lava = .3,
    NA_real_)
  
  acai <- \(x) switch(
    x@key, 
    snowSkin = .01,
    bao = .05, # tested
    bread = .06, 
    cookie = .08,
    NA_real_)
  
  acai2pastryFlr <- \(x) switch(
    x@key,
    bao = .075,
    NA_real_)
  
  acai2breadFlr <- \(x) switch(
    x@key,
    NA_real_)
  
  acai2riceFlr <- \(x) switch(
    x@key,
    NA_real_)
  
  acai2flour <- acai2gluten0Flr <- acai2wheatFlrMix <- fn.
  
  starch <- \(x) switch(
    x@key, 
    geng = .007, 
    shrimpfillCantonese =, shrimpfill_garlicHerb =, porkfill = .02,
    meatmash = .02,
    meatball = .03,
    cheesecake = .035, 
    beeffillLeeKumKee = .04, 
    custardFilling = if ('_pumpkin$' %in% x) .05 else NA_real_,
    starchjelly = .1, 
    stickyTortilla = .1,
    NA_real_)
  
  water <- \(x) switch(
    x@key,
    mascarponeFrosting = .21,
    mascarponeGanache = if ('_liqueur$' %in% x) {
      .19 # liqueur flavor will also have `x@water`, so this `if` must be ahead of `@water`
    } else if (length(x@water)) {
      .29
    } else if ('_pumpkin$' %in% x) {
      .42
    } else .34, # from other puree such as `pineapple`
    whippedCream = .50,
    lava = if ('_blackSesame$' %in% x) .50 else if ('_coconutFlr$' %in% x) .67 else NA_real_,
    porkfill = .55,
    sundae = if ('_matcha$' %in% x) {
      .6
    } else NA_real_,
    beanPaste = if ('_redkidneybean$' %in% x) .66 else .6,
    shrimpfillCantonese =, shrimpfill_garlicHerb = .6, 
    beeffillLeeKumKee = .6,
    meatmash = if (length(x['shrimp'])) .7 else NA_real_,
    NA_real_)
  
  alcohol <- \(x) switch(
    x@key,
    #cheesecake =, mascarponeGanache = .015, # need to re-try
    cheesecake = .006, # trying. this is low-temp cooking, probably okay
    tiramisu_ = .0065, # any more, I will feel dizzy (for drink)
    tomyumStew = .035,
    NA_real_)
  
  alcohol2cocoa <- \(x) switch(
    x@key,
    NA_real_)
  
  water2flour <- \(x) switch(
    x@key, 
    cookie = if ('_blackSesame$' %in% x) .17 else .22, 
    crumbcrust = if ('_blackSesame$' %in% x) .28 else .23, # try first with \linkS4class{cookie} info
    #pancake =, snowSkin = .35, 
    #tortillaLard =, tortillaOlive = .6,
    NA_real_)
  
  water2pastryFlr <- \(x) switch(
    x@key, 
    bao = .48,
    juntun = .56, # ?? do I really need this?
    millecrepe = 3.7,
    NA_real_)
  
  water2breadFlr <- \(x) switch(
    x@key, 
    wrapperlinda = .57,
    noodlelinda = if (length(x['^KingArthur_breadFlr$'])) .45 else .6,
    bread = .63,
    NA_real_)
  
  water2gluten0Flr <- fn.
  
  water2wheatFlrMix <- \(x) switch(
    x@key,
    NA_real_)
  
  water2riceFlr <- \(x) switch(
    x@key,
    stickyTortilla = 1.6,
    snowSkin = 1.86,
    NA_real_)
  
  water2creamcheese <- \(x) switch(
    x@key,
    cheesecake = if ('_pumpkin$' %in% x) {
      .6 
    } else if (length(x@homemade) && grepl('pineapple', names(x@homemade))) {
      .5
    } else .25,
    NA_real_)
  
  fat2flour <- \(x) switch(
    x@key, 
    #tortillaOlive = .05,
    crumbcrust = .5, 
    cookie = .77,
    NA_real_)
  
  fat2pastryFlr <- \(x) switch(
    x@key, 
    bao = .03,
    millecrepe = .375,
    NA_real_)
  
  fat2breadFlr <- \(x) switch(
    x@key, 
    bao = .03,
    bread = if ('_cocoa$' %in% x) .08 else .075,
    NA_real_)
  
  fat2gluten0Flr <- fn.
  
  fat2wheatFlrMix <- \(x) switch(
    x@key,
    NA_real_)
  
  fat2riceFlr <- \(x) switch(
    x@key,
    stickyTortilla = .035,
    snowSkin = .05,
    NA_real_)
  
  flour2cornmeal <- pastryFlr2cornmeal <- breadFlr2cornmeal <- gluten0Flr2cornmeal <- wheatFlrMix2cornmeal <- riceFlr2cornmeal <- fn.
  
  starch2flour <- starch2pastryFlr <- starch2breadFlr <- starch2gluten0Flr <- starch2wheatFlrMix <- fn.
  
  starch2riceFlr <- \(x) switch(
    x@key,
    stickyTortilla = .16,
    snowSkin = .25,
    NA_real_)
  
  rice2flour <- rice2pastryFlr <- rice2breadFlr <- rice2gluten0Flr <- rice2wheatFlrMix <- fn.
  
  rice2riceFlr <- \(x) switch(
    x@key,
    snowSkin = .5,
    NA_real_)
  
  glutRice2flour <- glutRice2pastryFlr <- glutRice2breadFlr <- glutRice2gluten0Flr <- glutRice2wheatFlrMix <- fn.
  
  glutRice2riceFlr <- \(x) switch(
    x@key,
    snowSkin = .5,
    NA_real_)
  
  salt2flour <- \(x) switch(
    x@key, 
    #tortillaOlive = .005,
    NA_real_)
  
  salt2breadFlr <- \(x) switch(
    x@key,
    bread =, noodlelinda =, wrapperlinda = .003,
    NA_real_)
  
  salt2pastryFlr <- salt2wheatFlrMix <- salt2gluten0Flr <- salt2riceFlr <- fn.
  
  eggYolk2flour <- \(x) switch(
    x@key,
    cookie = if ('_blackSesame$' %in% x) .43 else .52,
    NA_real_)
  
  eggYolk2pastryFlr <- \(x) switch(
    x@key,
    millecrepe = .345,
    NA_real_)
  
  eggYolk2breadFlr <- \(x) switch(
    x@key,
    bread = .035,
    NA_real_)
  
  eggYolk2gluten0Flr <- eggYolk2wheatFlrMix <- eggYolk2riceFlr <- fn.
  
  blackSesame2flour <- \(x) switch(
    x@key,
    crumbcrust = .28,
    cookie = .375,
    NA_real_) 
  
  blackSesame2pastryFlr <- fn.
  
  blackSesame2breadFlr <- fn.
  
  blackSesame2gluten0Flr <- blackSesame2wheatFlrMix <- fn.
  
  blackSesame2riceFlr <- fn.
  
  Na2CO3_2flour <- fn.
  
  Na2CO3_2pastryFlr <- fn.
  
  Na2CO3_2breadFlr <- \(x) switch(
    x@key, 
    noodlelinda =, wrapperlinda = .0015,
    NA_real_)
  
  Na2CO3_2gluten0Flr <- Na2CO3_2wheatFlrMix <- fn.
  
  Na2CO3_2riceFlr <- fn.
  
  bakingPowder <- \(x) switch(
    x@key,
    gateau = .004,
    muffin = .005,
    bao = .006,
    NA_real_)
  
  bakingPowder2flour <- fn.
  
  bakingPowder2pastryFlr <- \(x) switch(
    x@key, 
    bao = .0095,
    NA_real_)
  
  bakingPowder2breadFlr <- \(x) switch(
    x@key,
    bao = .0095,
    gateau = .02,
    NA_real_)
  
  bakingPowder2gluten0Flr <- fn.
  
  bakingPowder2wheatFlrMix <- \(x) switch(
    x@key, 
    NA_real_)
  
  bakingPowder2riceFlr <- fn.
  
  yeast2flour <- fn.
  
  yeast2pastryFlr <- \(x) switch(
    x@key,
    bao = .0095, 
    NA_real_)
  
  yeast2breadFlr <- \(x) switch(
    x@key, 
    bao = .0095, 
    bread = .02,
    NA_real_)
  
  yeast2gluten0Flr <- fn.
  
  yeast2wheatFlrMix <- \(x) switch(
    x@key, 
    NA_real_)
  
  yeast2riceFlr <- fn.
  
  gelatin2water <- \(x) switch(
    x@key, 
    #riceMousse = {
    #if (length(x['_coconutmilk$'])) .01 else .02
    #},
    mousse = .036,
    NA_real_)
  
  sesameOil <- \(x) switch(
    x@key, 
    meatmash =, shrimpfillCantonese =, beeffillLeeKumKee =, porkfill =, meatball = .013,
    NA_real_)
  
  rattanPepperOil <- \(x) switch(
    x@key, 
    beeffillLeeKumKee = .0015, # tested!
    porkfill = .004,
    #marinade = .011,
    NA_real_)
  
  options(devrecipe = mget(c(
    # 'carbohydrate', # replace with `fiber` !!!
    'sugar', 
    'addedSugar', 'addedSugar2cocoa',
    'drymilk', 'drymilk2cocoa',
    'creamcheese',
    'fat', 
    'sodium',
    
    'water',
    'bakingPowder',
    'alcohol', 'alcohol2cocoa',
    'matcha',
    'beet',
    'blackSesame',
    'cocoa',
    'coffee', 'coffee2cocoa',
    'ginger.',
    'garlic',
    'whitePepper',
    'coriander',
    'pumpkinSpice',
    'acai',
    'starch',
    'sesameOil',
    'rattanPepperOil',
    
    c(outer(X = c('fat', 'salt', 'eggYolk', 
                  'matcha', 'beet', 'acai', 'blackSesame', 
                  'starch', 
                  'water',
                  'glutRice', # 'rice', 
                  'yeast', 'bakingPowder', 'Na2CO3_'), 
            Y = c('flour', 'pastryFlr', 'breadFlr', 'gluten0Flr', 'wheatFlrMix', 'riceFlr'), 
            FUN = paste, sep = '2')),
    
    'water2creamcheese',
    
    paste0(c('flour', 'pastryFlr', 'breadFlr', 'gluten0Flr', 'wheatFlrMix', 'riceFlr'), '2cornmeal'),
    
    'gelatin2water',
    NULL
  )))
}

