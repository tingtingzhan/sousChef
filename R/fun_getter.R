

waterEvap <- \(x) UseMethod(generic = 'waterEvap')

#' @exportS3Method
waterEvap.tool <- \(x) x@waterEvap

#' @exportS3Method
waterEvap.recipe <- \(x) {
  x@tool |> # \link[base]{list} of \linkS4class{tool}s
    lapply(FUN = waterEvap.tool) |> 
    unlist(use.names = FALSE) |>
    sum()
}