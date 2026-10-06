

# functions for methods::setClass

#' @importFrom stats setNames
rep_names <- \(x, nm) {
  rep(x, times = length(nm)) |>
    setNames(nm = nm)
}
