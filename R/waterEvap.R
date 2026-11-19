


#' @export
waterEvap.recipe <- \(x) {
  x@tool |>
    lapply(FUN = waterEvap) |> # sousChef.tool:::waterEvap.tool
    unlist(use.names = FALSE) |>
    sum()
}