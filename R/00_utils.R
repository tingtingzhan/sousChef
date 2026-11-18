

#' @import cli
#' @import methods
'_PACKAGE'

# functions for methods::setClass

setOldClass(Classes = c('cli_ansi_string', 'ansi_string', 'character'))



.onLoad <- \(libname, pkgname) {
  
  if (.Platform$OS.type != 'unix') {
    pkgname |>
      sQuote() |>
      sprintf(fmt = 'Package %s is tested on Unix-like systems only!') |>
      stop()
  }

}