

# functions for methods::setClass

setOldClass(Classes = c('cli_ansi_string', 'ansi_string', 'character'))



#' @importFrom stats setNames
rep_names <- \(x, nm) {
  rep(x, times = length(nm)) |>
    setNames(nm = nm)
}
