

waterEvap <- \(x) UseMethod(generic = 'waterEvap')

#' @exportS3Method
waterEvap.default <- \(x) numeric()

#' @exportS3Method
waterEvap.tool <- \(x) x@waterEvap

#' @exportS3Method
waterEvap.recipe <- \(x) {
  x@tool |>
    lapply(FUN = waterEvap.tool) |> 
    unlist(use.names = FALSE) |>
    sum()
}