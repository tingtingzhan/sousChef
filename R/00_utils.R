

# used in methods::setClass

rep_names <- \(x, nm) {
  rep(x, times = length(nm)) |>
    setNames(nm = nm)
}
