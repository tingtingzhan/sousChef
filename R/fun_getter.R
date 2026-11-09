

waterEvap <- \(x) UseMethod(generic = 'waterEvap')

#' @export
waterEvap.default <- \(x) numeric()

#' @export
waterEvap.tool <- \(x) x@waterEvap

#' @export
waterEvap.recipe <- \(x) {
  x@tool |>
    lapply(FUN = waterEvap.tool) |> 
    unlist(use.names = FALSE) |>
    sum()
}