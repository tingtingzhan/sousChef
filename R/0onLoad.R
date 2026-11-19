

#' @import cli
#' @import methods
#' @import sousChef.utils
#' @import sousChef.tool
# tons of kitchen tools
#' @import sousChef.spice
#' @import sousChef.nutrition
#' @import sousChef.ingredient
'_PACKAGE'



.onLoad <- \(libname, pkgname) {
  
  if (.Platform$OS.type != 'unix') {
    pkgname |>
      sQuote() |>
      sprintf(fmt = 'Package %s is tested on Unix-like systems only!') |>
      stop()
  }

}