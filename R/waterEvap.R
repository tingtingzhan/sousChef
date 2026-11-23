


#' @exportS3Method sousChef.utils::waterEvap
waterEvap.recipe <- \(x) {
  x@tool |>
    lapply(FUN = waterEvap) |> # sousChef.tool:::waterEvap.tool
    unlist(use.names = FALSE) |>
    sum()
}