

#' @title \linkS4class{nutrition}
#' 
#' @description 
#' Nutrition information.
#' 
#' @slot brand \link[base]{character} scalar, manufacture brand
#' 
#' @slot name \link[base]{character} scalar, product name
#' @slot alias \link[base]{character} scalar with Unicode symbols, product alias
#' @slot call \link[base]{name}, the function name to create this \linkS4class{nutrition}
#' 
#' @slot suggestion \link[base]{list}
#' 
#' @slot url \link[base]{character} scalar, link to manufacturer webpage
#' 
# @slot machine (legacy) \link[base]{function}
#' 
#' @slot review \link[base]{character} scalar or \link[base]{vector}, additional note to chef
#' @slot superior \link[base]{character} scalar
#' @slot contain \link[base]{character} scalar or vector, names of additives
#' 
#' @slot servingGram \link[base]{numeric} scalars, serving size in grams
#' @slot servingTsp \link[base]{numeric} scalars, serving volume in teaspoons
#' 
#' @slot pieceGram \link[base]{numeric} scalar, weight in grams per piece
#' @slot piece_fmt \link[base]{character} scalar
#' 
#' @slot usd \link[base]{numeric} scalar, price (in USD) \strong{per serving}
#' @slot jpy \link[base]{numeric} scalar, price (in Japanese Yen) \strong{per serving}
#' @slot date `'Date'`
#' @slot cost_ \link[base]{character} scalar, price (in USD) \strong{per serving}, converted from all currencies
#' @slot calorie \link[base]{numeric} scalar, calories per serving
#' @slot water \link[base]{numeric} scalar, water (in grams) per serving
#' @slot carbohydrate \link[base]{numeric} scalar, total carbohydrate (in grams) per serving
#' @slot fiber \link[base]{numeric} scalar, dietary fiber (in grams) per serving
#' @slot sugar \link[base]{numeric} scalar, sugar (in grams) per serving
#' @slot addedSugar \link[base]{numeric} scalar, added sugar (in grams) per serving
#' @slot fat \link[base]{numeric} scalar, fat (in grams) per serving
#' @slot cholesterol \link[base]{numeric} scalar, cholesterol (in grams) per serving
#' @slot sodium \link[base]{numeric} scalar, sodium (in grams) per serving
#' @slot protein \link[base]{numeric} scalar, protein (in grams) per serving
#' @slot alcohol \link[base]{numeric} scalar, alcohol (in grams) per serving
# @slot portion see \linkS4class{recipe}
#' 
#' @slot tool \link[base]{list} of \linkS4class{tool}s
#' 
#' @export
setClass(Class = 'nutrition', slots = c(
  
  call = 'name',
  
  rep_names('character', nm = c(
    'brand',
    'alias',
    'name',
    'review',
    'superior',
    'contain',
    'piece_fmt',
    'url'
  )),
  
  suggestion = 'list',
  
  # machine = 'function', # legacy
  
  tool = 'list',
  
  date = 'Date',
  cost_ = 'character',
  
  rep_names('numeric', nm = c(
    'servingGram', 'servingTsp',
    'pieceGram',
    'usd', 'jpy',
    'calorie',
    'water',
    'fat', 'cholesterol', 'sodium',
    'carbohydrate', 'fiber', 'sugar', 'addedSugar',
    'protein', 'alcohol'
  ))
), prototype = prototype(
  piece_fmt = '%.1fpcs',
  # machine = \(x) NULL, # legacy
  calorie = 0,
  date = as.Date(NA_character_)
))



#' @rdname nutrition-class
#' @param ... ..
#' @export
nutrition <- \(...) {
  
  x <- list(...) |>
    .findCall_NEW() # must stop the pipeline :)))
  
  x <- x |>
    add_brand_url(name = 'bachans', fmt = 'https://bachans.com/products/%s', text = 'Bachan\'s\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'baileys', fmt = 'https://www.baileys.com/en/products/baileys-%s', text = 'Baileys\U1f1ee\U1f1ea') |>
    add_brand_url(name = 'bassetts', fmt = 'https://www.bassettsicecream.com/_files/ugd/%s.pdf', text = 'Bassetts\U1f368\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'belgioioso', fmt = 'https://www.belgioioso.com/products/%s', text = 'BelGioioso\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'bobsredmill', fmt = 'https://www.bobsredmill.com/%s.html', text = 'Bob\'s Red Mill\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'bouchard', fmt = 'https://bouchardchocolate.com/products/%s', text = 'Bouchard\U1f1e7\U1f1ea') |>
    add_brand_url(name = 'carnationbaking', fmt = 'https://www.verybestbaking.com/carnation/products/%s', text = 'Nestl\u00e9 Carnation\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'clearwater', fmt = 'https://www.clearwater.ca/en/seafood-industry/%s', text = 'Clearwater\U1f1e8\U1f1e6') |> 
    add_brand_url(name = 'countrytime', fmt = 'https://www.kraftheinz.com/country-time/products/%s', text = 'Country Time\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'daisybrand', fmt = 'https://www.daisybrand.com/%s', text = 'Daisy\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'delmonte', fmt = 'https://www.delmonte.com/products/%s', text = 'Del Monte\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'dolesunshine', fmt = 'https://www.dolesunshine.com/us/en/products/%s', text = 'Dole\U1f33a') |> 
    add_brand_url(name = 'domino', fmt = 'https://www.dominosugar.com/products/%s', text = 'Domino\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'edwardandsons', fmt = 'https://store.edwardandsons.com/collections/%s', text = 'Edward & Sons\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'epicprovisions', fmt = 'https://epicprovisions.com/products/%s', text = 'Epic\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'fleischmannsyeast', fmt = 'https://www.fleischmannsyeast.com/product-page/#%s', text = 'Fleischmann\'s\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'fourC', fmt = 'https://www.4c.com/4c-product/%s', text = '4C\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'frontiercoop', fmt = 'https://www.frontiercoop.com/products/frontier-co-op-%s', text = 'Frontier Co-op\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'ghirardelli', fmt = 'https://www.ghirardelli.com/%s', text = 'Ghirardelli\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'greypoupon', fmt = 'https://www.kraftheinz.com/grey-poupon/products/%s', text = 'Grey Poupon\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'godiva', fmt = 'https://www.godiva.com/%s.html', text = 'Godiva\U1f1e7\U1f1ea') |>
    add_brand_url(name = 'haagendazs', fmt = 'https://www.icecream.com/us/en/brands/haagen-dazs/products/%s-ice-cream', text = 'Ha\u0308agen-Dazs\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'haitaiusa', fmt = 'https://www.haitaiusa.com/product-page/%s', text = 'HaiTai\U1f1fa\U1f1f8') |> # not sure if same company # https://en.wikipedia.org/wiki/Haitai
    add_brand_url(name = 'harney', fmt = 'https://www.harney.com/products/%s', text = 'Harney & Sons\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'heinz', fmt = 'https://www.heinz.com/products/%s', text = 'Heinz\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'hellmanns', fmt = 'https://www.hellmanns.com/us/en/p/%s', text = 'Hellmann\'s\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'horizon', fmt = 'https://horizon.com/organic-dairy-products/%s', text = 'Horizon\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'itoen', fmt = 'https://itoen.com/products/%s', text = 'Ito-En\u4f0a\u85e4\u5712\U1f1ef\U1f1f5') |> 
    add_brand_url(name = 'jayone', fmt = 'https://www.jayonefoods.com/product/%s', text = 'JayOne\U1f1f0\U1f1f7') |> 
    add_brand_url(name = 'juniorscheesecake', fmt = 'https://www.juniorscheesecake.com/all-items/%s', text = 'Junior\'s\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'justtea', fmt = 'https://shop.wegmans.com/product/%s', text = 'Just Tea\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'kahlua', fmt = 'https://www.kahlua.com/en-us/products/%s', text = 'Kahlu\u0301a\U1f1f2\U1f1fd') |> 
    add_brand_url(name = 'kikkomanusa', fmt = 'https://kikkomanusa.com/foodservice/products/%s', text = 'Kikkoman\u4e80\u7532\u842c\U1f1ef\U1f1f5') |> 
    add_brand_url(name = 'kingarthur', fmt = 'https://www.kingarthurbaking.com/search?query=%s', text = 'King Arthur\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'kingarthurpro', fmt = 'https://www.kingarthurbaking.com/pro/products/%s', text = 'King Arthur\U1f1fa\U1f1f8') |> 
    # url: https://www.kingarthurbaking.com/pro/products
    add_brand_url(name = 'philadelphia', fmt = 'https://www.kraftheinz.com/philadelphia/products/%s', text = 'Philadelphia\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'krusteaz', fmt = 'https://www.krusteaz.com/products/%s', text = 'Krusteaz\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'landolakes', fmt = 'https://www.landolakes.com/products/%s', text = 'Land O Lakes\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'leaperrins', fmt = 'https://www.kraftheinz.com/lea-perrins/products/%s', text = 'Lea & Perrins\U1f1ec\U1f1e7') |> 
    add_brand_url(name = 'lkkhk', fmt = 'https://hk.lkk.com/zh-hk/foodservices/products/%s', text = 'LeeKumKee\u674e\u9326\u8a18\U1f1ed\U1f1f0') |> 
    add_brand_url(name = 'lkkusa', fmt = 'https://usa.lkk.com/zh-hk/products/%s', text = 'LeeKumKee\u674e\u9326\u8a18\U1f1ed\U1f1f0') |> 
    add_brand_url(name = 'nanak', fmt = 'https://nanakfoods.com/products/%s', text = 'Nanak\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'maeda', fmt = 'https://maeda-en.com/products/%s', text = 'maeda-en\u524d\u7530\u5712\U1f1ef\U1f1f5') |>
    add_brand_url(name = 'mccormick', fmt = 'https://www.mccormick.com/%s', text = 'McCormick\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'mccormickculinary', fmt = 'https://www.mccormickforchefs.com/en-us/products/mccormick-culinary/%s', text = 'McCormick\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'mortonsalt', fmt = 'https://www.mortonsalt.com/shop/%s', text = 'Morton\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'oldbay', fmt = 'https://www.mccormickforchefs.com/en-us/products/old-bay/%s', text = 'McCormick\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'grillmates', fmt = 'https://www.mccormickforchefs.com/en-us/products/grill-mates/%s', text = 'McCormick\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'meyenberg', fmt = 'https://www.meyenberg.com/usa/en/products/%s', text = 'Meyenberg\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'mizkanjpn', fmt = 'https://www.mizkan.co.jp/product/group/?gid=%s', text = 'mizkan\u30df\u30c4\u30ab\u30f3\U1f1ef\U1f1f5') |>
    add_brand_url(name = 'nancysyogurt', fmt = 'https://nancysyogurt.com/products/%s', text = 'Nancy\'s\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'navitas', fmt = 'https://navitasorganics.com/products/%s', text = 'Navitas\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'nescafeGold', fmt = 'https://www.nescafe.com/us/products/%s', text = 'Nescaf\u00e9 Gold Espresso\U1f1e8\U1f1ed') |>
    add_brand_url(name = 'nestle', fmt = 'https://www.nestleprofessional.us/search?search=%s', text = 'Nestl\u00e9\U1f1e8\U1f1ed') |>
    add_brand_url(name = 'nido', fmt = 'https://www.goodnes.com/nido/products/nido-%s', text = 'Nestl\u00e9 Nido\U1f1e8\U1f1ed') |>
    add_brand_url(name = 'nielsenmassey', fmt = 'https://nielsenmassey.com/products/%s', text = 'Nielsen-Massey\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'nishiki', fmt = 'https://www.jfc.com/product/item/%s', text = 'Nishiki\u9326\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'oreo', fmt = 'https://www.oreo.com/products/%s', text = 'Nabisco\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'organicvalley', fmt = 'https://www.organicvalley.coop/products/%s', text = 'Organic Valley\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'paromi', fmt = 'https://paromi.com/products/%s', text = 'Paromi\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'quakeroats', fmt = 'https://www.quakeroats.com/products/%s', text = 'Quaker\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'raos', fmt = 'https://www.raos.com/products/%s', text = 'Rao\'s\U1f1fa\U1f1f8') |>
    add_brand_url(name = 'sanford', fmt = 'https://www.sanford.co.nz/our-seafood/our-products/%s', text = 'Sanford\U1f1f3\U1f1ff') |> 
    add_brand_url(name = 'siggis', fmt = 'https://siggis.com/product/%s', text = 'Siggi\'s\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'simplyorganic', fmt = 'https://www.simplyorganic.com/products/simply-organic-%s', text = 'Simply Organic\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'sodastream', fmt = 'https://sodastream.com/products/%s', text = 'SodaStream\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'starbucks', fmt = 'https://athome.starbucks.com/products/%s', text = 'Starbucks\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'starbucks_hot', fmt = 'https://www.starbucks.com/menu/product/%s/hot/nutrition', text = 'Starbucks\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'starbucks_iced', fmt = 'https://www.starbucks.com/menu/product/%s/iced/nutrition', text = 'Starbucks\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'stassentea', fmt = 'https://www.stassentea.com/shop-now/%s', text = 'Stassen\U1f1f1\U1f1f0') |> 
    add_brand_url(name = 'stonewall', fmt = 'https://www.stonewallkitchen.com/%s.html', text = 'Stonewall Kitchen\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'stonyfield', fmt = 'https://www.stonyfield.com/products/%s', text = 'Stonyfield\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'swiftmeats', fmt = 'https://swiftmeats.com/products/%s', text = 'Swift\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'swissmiss', fmt = 'https://www.swissmiss.com/%s', text = 'Swiss Miss\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'thaikitchen', fmt = 'https://www.mccormick.com/collections/thai-kitchen/products/%s', text = 'Thai Kitchen\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'traderjoes', fmt = 'https://www.traderjoes.com/home/products/pdp/%s', text = 'Trader Joe\'s\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'tsemporium', fmt = 'https://www.tsemporium.com/en_us/xproduct/index/index/s/%s', text = 'Tak Shing Hong\u5fb7\u6210\u884c\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'twinings', fmt = 'https://twiningsusa.com/products/%s', text = 'Twinings\U1f1ec\U1f1e7') |> 
    add_brand_url(name = 'wesson', fmt = 'https://www.purewesson.com/products/%s', text = 'Wesson\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'yaomazi', fmt = 'https://www.yaomazi.com/%s', text = '\u5e7a\u9ebb\u5b50\U1f1e8\U1f1f3') |> 
    add_brand_url(name = 'yogi', fmt = 'https://www.yogi-life.com/en-US/product/%s', text = 'Yogi\U1f1fa\U1f1f8') |> 
    add_brand_url(name = 'youjia', fmt = 'https://youjiaflavors.com/products/%s', text = '\u53cb\u52a0\U1f1e8\U1f1f3') 
  
  # non-standard brands
  if (!length(x[['brand']])) {
    if (length(x[['cheesecakefactoryfreezer']])) {
      x$brand <- paste(
        x$cheesecakefactoryfreezer |>
          fmtURL(fmt = 'https://www.thecheesecakefactoryathome.com/whole-cheesecakes-freezer/%s', text = 'Cheesecake'),
        (x$cheesecakefactorybakery %||% x$cheesecakefactoryfreezer) |>
          fmtURL(fmt = 'https://www.thecheesecakefactoryathome.com/whole-cheesecakes-bakery/%s', text = 'Factory\U1f1fa\U1f1f8')
      )
      x$cheesecakefactorybakery <- x$cheesecakefactoryfreezer <- NULL
    } else if (length(x[['ippodoglobal']]) & length(x[['ippodousa']])) {
      x$url <- c(
        x[['url']], 
        x$ippodousa |>
          fmtURL(fmt = 'https://ippodotea.com/products/%s', text = '\U1f6d2 US Shop')
      )
      jpn_ <- x$ippodojpn |>
        fmtURL(fmt = 'https://www.ippodo-tea.co.jp/products/%s', text = '\u4e00\u4fdd\u5802\u8336\u8216\U1f1ef\U1f1f5')
      global_ <- x$ippodoglobal |>
        fmtURL(fmt = 'https://global.ippodo-tea.co.jp/products/%s', text = 'Ippodo\U1f375')
      x$brand <- paste(global_, jpn_)
      x$ippodoglobal <- x$ippodousa <- x$ippodojpn <- NULL
    } else if (length(x[['kerrygold']])) {
      kg_ <- x$kerrygold |>
        fmtURL(fmt = 'https://kerrygold.com/products/%s', text = 'Kerrygold\U1f1ee\U1f1ea')
      x$brand <- if (length(x[['kerrygoldusa']])) {
        paste0(
          kg_, 
          x$kerrygoldusa |> 
            fmtURL(fmt = 'https://www.kerrygoldusa.com/products/%s', text = '\U1f1fa\U1f1f8')
        )
      } else kg_
      x$kerrygold <- x$kerrygoldusa <- NULL
    } else if (length(x[['marukyu']])) {
      x$url <- c(x[['url']], style_hyperlink(url = 'https://www.marukyu-koyamaen.co.jp/english/catalog/Temporary_Simple_English_Catalog_for_Eng_HP_20240304.pdf', text = '2024 Catalog'))
      x$brand <- paste(
        x$marukyu |>
          fmtURL(fmt = 'https://www.marukyu-koyamaen.co.jp/english/shop/products/%s', text = 'Marukyu Koyamaen\U1f375'),
        x$marukyu |>
          fmtURL(fmt = 'https://www.marukyu-koyamaen.co.jp/motoan-shop/products/%s', text = '\u4e38\u4e45\u5c0f\u5c71\u5712\U1f1ef\U1f1f5')
      )
      x$marukyu <- NULL
    } else if (length(x[['runamok']])) {
      runamok_ <- x$runamok |>
        fmtURL(fmt = 'https://runamokmaple.com/shop/product/%s', text = 'Runamok\U1f1fa\U1f1f8')
      x$brand <- if (length(x[['whistlepigwhiskey']])) {
        x$whistlepigwhiskey |>
          fmtURL(fmt = 'https://shop.whistlepigwhiskey.com/products/%s', text = 'Whistlepig\U1f1fa\U1f1f8') |>
          paste(runamok_, . = _, sep = '-')
      } else runamok_
      x$runamok <- x$whistlepigwhiskey <- NULL
    } #else do nothing
  } 
  # non-standard brands, end of
  
  # process user-input `@url` first
  if (length(x[['url']])) {
    x$url <- x$url |>
      gsub('^https://|^http://', replacement = '', x = _) |> 
      style_hyperlink(url = x$url, text = _) |> 
      c()
  }
  
  x <- x |>
    add_store_url(name = 'acme', fmt = 'https://www.acmemarkets.com/shop/product-details.%s.html', store_brand = 'Albertsons\U1f1fa\U1f1f8', store_name = 'Acme Market') |>
    add_store_url(name = 'amazon', fmt = 'https://www.amazon.com/gp/product/%s', store_brand = 'Amazon Basic', store_name = 'Amazon') |>
    add_store_url(name = 'bjs', fmt = 'https://www.bjs.com/product/%s', store_brand = 'BJ\'s', store_name = 'BJ\'s') |> # Wellsley Farms and Berkley Jensen
    add_store_url(name = 'costco', fmt = 'https://www.costco.com/.product.%s.html', store_brand = 'Kirkland\U1f1fa\U1f1f8', store_name = 'Costco') |>
    add_store_url(name = 'costcoBiz', fmt = 'https://www.costcobusinessdelivery.com/.product.%s.html', store_brand = 'Kirkland\U1f1fa\U1f1f8', store_name = 'Costco Business Delivery') |>
    # add_store_url(name = 'giantfood', fmt = '???', store_brand = 'Giant Food\U1f1fa\U1f1f8') |>
    add_store_url(name = 'jfc', fmt = 'https://www.jfc.com/product/item/%s', store_brand = NA_character_, store_name = 'JFC International Inc.') |>
    add_store_url(name = 'kraftheinzawayfromhome', fmt = 'https://www.kraftheinzawayfromhome.com/products/%s', store_brand = NA_character_, store_name = 'Kraft Heinz Away From Home\U1f1fa\U1f1f8') |>
    add_store_url(name = 'lucerne', fmt = 'https://www.acmemarkets.com/shop/product-details.%s.html', store_brand = 'Lucerne\U1f1fa\U1f1f8') |>
    add_store_url(name = 'sams', fmt = 'https://www.samsclub.com/p/%s', store_brand = 'Member\'s Mark\U1f1fa\U1f1f8', store_name = 'Sam\'s Club') |>
    add_store_url(name = 'target', fmt = 'https://www.target.com/p/-/%s', store_brand = NA_character_, store_name = 'Target') |>
    add_store_url(name = 'totalwine', fmt = 'https://www.totalwine.com/p/%s', store_brand = NA_character_, store_name = 'Total Wine') |>
    add_store_url(name = 'walmart', fmt = 'https://www.walmart.com/ip/%s', store_brand = 'Great Value\U1f1fa\U1f1f8', store_name = 'Walmart') |>
    add_store_url(name = 'wawa', fmt = 'https://order.wawa.com/web/product/%s', store_brand = 'Wawa\U1f1fa\U1f1f8') |>
    add_store_url(name = 'webstaurant', fmt = 'https://www.webstaurantstore.com/product/%s.html', store_brand = NA_character_, store_name = 'Webstaurant') |>
    add_store_url(name = 'weee', fmt = 'https://www.sayweee.com/zh/product/weee/%s', store_brand = NA_character_, store_name = 'Weee!') |>
    add_store_url(name = 'wegmans', fmt = 'https://www.wegmans.com/shop/product/%s/', store_brand = 'Wegmans\U1f1fa\U1f1f8', store_name = 'Wegmans') |>
    add_store_url(name = 'wholefoods', fmt = 'https://www.wholefoodsmarket.com/product/%s', store_brand = '365 by Whole Foods\U1f1fa\U1f1f8', store_name = 'Whole Foods\U1f1fa\U1f1f8') |>
    add_store_url(name = 'yamibuy', fmt = 'https://u.yamibuy.com/%s', store_brand = 'Yami\u4e9a\u7c73\U1f1fa\U1f1f8')
  
  # serving weight
  if (length(x[['serving_oz']])) {
    if (length(x[['servingGram']])) warning('`@servingGram` over written by `serving_oz`')
    x$servingGram <- x[['serving_oz']] * 28.3495
    x$serving_oz <- NULL
  } else if (length(x[['serving_lb']])) {
    if (length(x[['servingGram']])) warning('`@servingGram` over written by `serving_lb`')
    x$servingGram <- x[['serving_lb']] * 453.6
    x$serving_lb <- NULL
  }
  if (!length(x[['servingGram']])) stop('must have `@servingGram` for nutrition object')
  
  # serving volumn
  vol <- c(length(x[['servingCup']]), length(x[['servingTbsp']]), length(x[['servingTsp']]), length(x[['serving_floz']]), length(x[['serving_ml']]))
  if (sum(vol) > 1L) stop('cannot have more than one of `servingCup`, `servingTbsp`, `@servingTsp`, `serving_floz`, and `serving_ml`')
  if (vol[1L]) {
    x$servingTsp <- 48 * x[['servingCup']]
    x$servingCup <- NULL
  } else if (vol[2L]) {
    x$servingTsp <- 3 * x[['servingTbsp']]
    x$servingTbsp <- NULL
  } else if (vol[4L]) {
    x$servingTsp <- 6 * x[['serving_floz']]
    x$serving_floz <- NULL
  } else if (vol[5L]) {
    x$servingTsp <- x[['serving_ml']] / 4.92892
    x$serving_ml <- NULL
  }
  
  # process AbV (needs `@servingGram`)
  if (length(x[['AbV']])) {
    if (!length(x[['alcohol']])) {
      x$alcohol <- x[['servingGram']] * x[['AbV']] * .78927 # google abv to alcohol by weight
    }
    x$name <- sprintf(fmt = '%s %.3g%%\U1f943', x[['name']], 1e2*x[['AbV']])
    x$AbV <- NULL
  }
  
  if (length(x[['fdc']])) {
    x$url <- c(x$url, style_hyperlink(
      url = x$fdc |>
        sprintf(fmt = 'https://fdc.nal.usda.gov/fdc-app.html#/food-details/%s/nutrients'), 
      text = '\U1f4dd FoodData Central'))
    x$fdc <- NULL
  }
  
  if (length(x[['pubchem']])) {
    x$url <- c(x$url, style_hyperlink(
      url = x$pubchem |> 
        sprintf(fmt = 'https://pubchem.ncbi.nlm.nih.gov/compound/%s'), 
      text = '\U1f4dd PubChem'))
    x$pubchem <- NULL
  }
  
  c(list(Class = 'nutrition'), x) |> 
    do.call(what = 'new', args = _)

}


# @importFrom quantmod getQuote
setMethod(f = initialize, signature = 'nutrition', definition = \(.Object, ...) {
  
  x <- callNextMethod(.Object, ...)
  
  if (length(x@alias)) {
    x@alias <- x@alias |>
      sprintf(fmt = '{.run [%s](cooking::%s())}', . = _, as.character(x@call)) |> 
      col_orchid4() |>
      c()
  }
  
  if (length(x@brand)) {
    x@brand <- x@brand |> 
      make_ansi_style('sienna')() |> 
      style_bold() |> 
      c()
  }
  
  for (i in names(which(getSlots('nutrition') == 'numeric'))) {
    slot(x, name = i) <- slot(x, name = i) |>
      zero.omit()
  }
  
  if (!length(x@sugar) && length(x@addedSugar)) {
    x@sugar <- x@addedSugar
  }
  
  cost_ <- c(
    'usd' = if (length(x@usd)) x@usd else NA_real_,
    'JP\U1f4b4' = if (length(x@jpy)) {
      #x@jpy / quantmod::getQuote('USDJPY=X')$Last # may cause devtools::check() error
      x@jpy / 153.507
    } else NA_real_
  )
  cost_ <- cost_[!is.na(cost_)]
  if (length(setdiff(names(cost_), 'usd'))) {
    cost_source <- cost_ |> names() |> sprintf(fmt = '\u21a4%s') 
    cost_source[names(cost_) == 'usd'] <- ''
  } else cost_source <- ''
  cost_txt0 <- sprintf(
    fmt = 'US %s %s',
    cost_ |> sprintf(fmt = '\U1f4b5%.2f') |> col_green() |> style_bold(), 
    cost_source |> col_cyan() |> style_bold()
  )
  n_cost_ <- length(cost_)
  if (!n_cost_) {
    x@cost_ <- character()
  } else if (n_cost_ == 1L) {
    x@cost_ <- cost_txt0
    x@usd <- unname(cost_)
  } else {
    cost_min <- which.min(cost_)
    cost_txt0[cost_min] <- (cost_txt0[cost_min]) |> bg_br_yellow()
    x@cost_ <- cost_txt0
    x@usd <- unname(cost_[cost_min]) # to calculate price in 'recipe'
  }
  
  return(x)
  
})










#' @rdname nutrition-class
#' @param object see **Usage**
#' @importFrom consec cmod
#' @export
setMethod(f = show, signature = 'nutrition', definition = \(object) print.nutrition(object))


#' @export
print.nutrition <- \(x, prt_label = TRUE, ...) {
  
  cat('\n')
  if (prt_label) x |>
    labels.nutrition() |>
    style_bold() |> 
    cat('\n\n')
  
  #cat('Nutrition Facts\n\n')
  
  sprintf(
    fmt = 'Serving Size %s %s %s\n', 
    x@servingGram |> 
      sprintf(fmt = '%.4g grams') |> 
      make_ansi_style('purple')() |> 
      style_bold(), 
    (x@servingGram/28.3495) |> 
      sprintf(fmt = '%.1f oz') |> 
      make_ansi_style('seagreen')() |> 
      style_bold(),
    if (as.character(x@call) %in% c('asMethod', '<UNDEFINED>')) {
      # from as(., Class = 'nutrition)
      # do not have volume info
      ''
    } else {
      fmt_vol(x = x@servingGram, nm = as.character(x@call))
    }
  ) |> cat()
  
  if (length(x@water) && length(x@servingGram) && (x@water / x@servingGram > .9)) {
    x@servingGram |>
      cmod(e2 = consec::floz, n = 2L, tol = 1e-6) |>
      make_ansi_style('seagreen')() |> 
      style_bold() |>
      sprintf(fmt = 'Water Equivalency %s\n') |> 
      cat()
  }
  
  cat('\n')
  
  if (length(x@cost_)) {
    if (is.na(x@date)) {
      x@cost_ |>
        cat(sep = '\n')
    } else {
      x@date |>
        #as.character() |> # no need
        make_ansi_style('grey70')() |>
        sprintf(fmt = '%s  \U0001f5d3\ufe0f%s', x@cost_, . = _) |> 
        cat(sep = '\n')
    }
  }         
  
  if (length(x@calorie)) {
    cat('Calories', x@calorie |> sprintf(fmt = '\U1f525%.0f') |> col_br_red() |> style_bold(), '\n')
  }
  
  cat('\n')
  
  sprintf(fmt = 'Water: %.1f grams %s\n', x@water, fmt_perc(x, 'water')) |> 
    cat()
  
  sprintf(fmt = 'Fat: %.1f grams %s\n', x@fat, fmt_perc(x, 'fat')) |> 
    cat()
  
  if (length(x@cholesterol)) {
    if (x@cholesterol > 1) {
      sprintf(fmt = 'Cholesterol: %.1f grams %s\n', x@cholesterol, fmt_perc(x, 'cholesterol')) |> cat()
    } else sprintf(fmt = 'Cholesterol: %.0f milligrams %s\n', 1e3 * x@cholesterol, fmt_perc(x, 'cholesterol')) |> cat()
  }
  
  if (length(x@sodium)) {
    if (x@sodium > 1) {
      sprintf(fmt = 'Sodium: %.1f grams %s\n', x@sodium, fmt_perc(x, 'sodium')) |> cat()
    } else sprintf(fmt = 'Sodium: %.0f milligrams %s\n', 1e3 * x@sodium, fmt_perc(x, 'sodium')) |> cat()
  }
  sprintf(fmt = 'Total Carbohydrate: %.1f grams %s\n', x@carbohydrate, fmt_perc(x, 'carbohydrate')) |> cat()
  sprintf(fmt = ' \u21ac Dietary Fiber: %.1f grams %s\n', x@fiber, fmt_perc(x, 'fiber')) |> cat()
  sprintf(fmt = ' \u21ac Sugar: %.1f grams %s\n', x@sugar, fmt_perc(x, 'sugar')) |> cat()
  sprintf(fmt = ' \u21ac Added Sugar: %.1f grams %s\n', x@addedSugar, fmt_perc(x, 'addedSugar')) |> cat()
  sprintf(fmt = 'Alcohol: %.1f grams %s\n', x@alcohol, fmt_perc(x, 'alcohol')) |> cat()
  sprintf(fmt = 'Protein: %.1f grams %s\n', x@protein, fmt_perc(x, 'protein')) |> cat()
  
  # cat(c(rep('\u058e', times = 25), '\n\n'), sep = '')
  cat('\n')
  
  
  
  #if (length(x@machine)) {
  #  cat('\nMachine:\n')
  #  sprintf(fmt = '%s: %s\n', names(x@machine), x@machine) |> cat(sep = '')
  #}
  
  if (length(x@superior)) {
    c('\u274c I prefer ', sprintf(
      fmt = '{.run [%s](cooking::%s())}', 
      x@superior |> make_ansi_style('sienna')() |> style_bold(),
      x@superior
    ) |> paste(collapse = ', ')) |>
      format_inline() |>
      cat()
    cat('\n')
  } 
  
  if (nrv <- length(x@review)) {
    x@review |> sprintf(fmt = '\U1f4dd %s\n') |> cat(sep = '')
    cat('\n')
  }
  
  if (length(x@contain)) {
    x@contain |>
      tolower() |>
      vapply(FUN = \(i) {
        call(name = i) |>
          eval() |>
          format() # [format.spice], etc.
      }, FUN.VALUE = '') |>
      paste(collapse = ' ') |> 
      sprintf(fmt = 'Contains %s\n\n') |> 
      cat()
  }
  
  
  if (length(x@url)) cat(x@url, sep = '\n')
  
  suggested_ <- x |> 
    as(Class = 'recipe')
  if (length(suggested_)) show(suggested_) # I have not defined a NULL \linkS4class{recipe}
  
  cat('\n')
  
  x@tool |>
    lapply(FUN = show)
  
}



#' @export
labels.nutrition <- \(object, ...) {
  c(object@alias, object@name, object@brand) |> # len-0 compatible!!
    paste(collapse = ' ') |>
    format_inline()
}


#' @method as.double nutrition
#' @export
as.double.nutrition <- \(
  x, 
  incl_calorie = FALSE, 
  incl_usd = FALSE,
  incl_water = TRUE,
  incl_carbohydrate = TRUE,
  rel = TRUE,
  ...
) {
  z <- c(
    # sum(numeric()) returns 0
    calorie = if (incl_calorie) x@calorie |> sum(),
    usd = if (incl_usd) x@usd |> sum(),
    water = if (incl_water) x@water |> sum(),
    carbohydrate = if (incl_carbohydrate) x@carbohydrate |> sum(), # `fiber` and `sugar` matters more
    fiber = x@fiber |> sum(),
    sugar = x@sugar |> sum(), 
    addedSugar = x@addedSugar |> sum(), 
    fat = x@fat |> sum(), 
    cholesterol = x@cholesterol |> sum(),
    sodium = x@sodium |> sum(),
    protein = x@protein |> sum(),
    alcohol = x@alcohol |> sum()
  )
  if (!rel) return(z)
  return(z / x@servingGram)
}


