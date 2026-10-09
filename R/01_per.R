

#' @title \linkS4class{per}
#' 
#' @description
#' \linkS4class{per}: an `S4` class that inherits from \link[equiv4]{equiv-class}.
#' 
#' @slot name \link[base]{character} scalar
#' 
#' @importClassesFrom equiv4 equiv
#' @export
setClass(Class = 'per', contains = 'equiv', slots = c(
  name = 'character'
))




#' @rdname per-class
#' @param object see **Usage**
#' @importFrom charwidth row_fmt_matrix
#' @export
setMethod(f = show, signature = 'per', definition = \(object) {
  
  fmt <- object |>
    format() # equiv4:::format.equiv
  if (!length(fmt)) return(invisible())
  
  object@name |> 
    sprintf(fmt = '\u214c %s\n') |> 
    bg_br_yellow() |> style_bold() |>
    cat()
  
  fmt |>
    .repl_colnames() |>
    row_fmt_matrix() |>
    cat(sep = '\n')
  
  cat('\n')
})








# @param x a \link[base]{list} of \linkS4class{per} objects
#' @importFrom charwidth row_fmt_matrix
#' @export
print.perlist <- \(x, ...) {
  
  x <- x[lengths(x) > 0L]
  if (!length(x)) return(invisible())
  
  y1 <- x |>
    lapply(FUN = \(i) i@current) |>
    do.call(what = rbind_unbalanced, args = _)

  if (!length(y1)) return(invisible())
  
  y2 <- y1[, colMeans(is.na(y1)) != 1L, drop = FALSE]
  #y3 <- y2[rowMeans(is.na(y2)) != 1L, , drop = FALSE]
  y3 <- y2
  if (!length(y3)) return(invisible())
  if (all(is.na(y3))) return(invisible())
  if (all(abs(y3) < .Machine$double.eps, na.rm = TRUE)) return(invisible())
  
  y <- y3 |>
    apply(MARGIN = 2L, FUN = median_binlabel, accuracy = .1, simplify = FALSE) |>
    do.call(what = cbind) # to make sure not getting a 'vector'
  
  x[[1L]]@name |> 
    sprintf(fmt = '\u214c %s\n') |> 
    style_bold() |> bg_br_yellow() |> 
    cat()
  y |>
    .repl_colnames() |> 
    row_fmt_matrix() |>
    cat(sep = '\n')
  cat('\n')
  return(invisible(y))
}





