

waterEvap <- \(x) UseMethod(generic = 'waterEvap')

#' @export
waterEvap.default <- \(x) 0

#' @export
waterEvap.tool <- \(x) x@waterEvap |> sum()

#' @export
waterEvap.raw. <- \(x) 0

#' @export
waterEvap.recipe <- \(x) {
  x@tool |>
    lapply(FUN = waterEvap.tool) |> 
    unlist(use.names = FALSE) |>
    sum()
}