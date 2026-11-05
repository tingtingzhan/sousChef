

#' @title [.cli_run]
#' 
#' @param text \link[base]{character} scalar
#' 
#' @param pkg \link[base]{character} scalar
#' 
#' @param fun \link[base]{character} scalar
#' 
#' @param ... additional parameters, currently of no use
#' 
#' @examples
#' .cli_run(text = 'cocoa', pkg = 'sousChef', 
#'   fun = 'KingArthur_Bensdorp_cocoa') |> cat()
#' 
#' 
#' @export
.cli_run <- \(text, pkg, fun, ...) {
  
  ns <- pkg |>
    asNamespace()
  
  is_exported <- fun %in% getNamespaceExports(ns)
  is_unexported <- !is_exported && exists(fun, where = ns)
  notin_pkg <- !is_unexported
  
  if (is_exported) {
    fmt <- '{.run [%s](%s::%s())}'
  } else if (is_unexported) {
    fmt <- '{.run [%s](utils::getFromNamespace(ns = \'%s\', x = \'%s\')())}' # Gemini
    # but does not work..
    #fmt <- '{.run [%s](%s::%s())}' # for now
  }

  sprintf(fmt = fmt, text, pkg, fun) |>
    format_inline()
  
}


if (FALSE) {
  # Google Gemini:
  cli::cli_text(
    "Click here to run the unexported function: ",
    "{.run utils::getFromNamespace('function_name', 'package_name')()}"
  )
}