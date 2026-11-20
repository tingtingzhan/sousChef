
#' @importFrom generics prune
#' @exportS3Method generics::prune
prune.recipe <- \(tree, ...) {
  x <- tree; rm(tree)
  new(
    Class = 'recipe',
    call = x@call,
    misc = x@misc,
    water = x@water,
    tool = x@tool |>
      lapply(FUN = prune) # sousChef.tool:::prune.tool
  )
}

