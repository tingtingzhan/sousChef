

#' @title Create `.run` \link[cli]{cli_text}
#' 
#' @param text \link[base]{character} scalar
#' 
#' @param pkg \link[base]{character} scalar
#' 
#' @param fun \link[base]{character} scalar
#' 
#' @param ... additional parameters, currently of no use
#' 
#' @references
#' \url{https://cli.r-lib.org/reference/links.html?q=.run#click-to-run-code}
#' 
#' \url{https://cli.r-lib.org/reference/links.html?q=.run#security-considerations}
#' 
#' @examples
#' .cli_run(text = 'cocoa', pkg = 'sousChef', 
#'   fun = 'KingArthur_Bensdorp_cocoa') |> cat()
#' 
#' foo = \() print('hello world')
#' .cli_run(text = 'foo', pkg = 'sousChef', fun = 'foo') |> cat()
#'   
#' @export
.cli_run <- \(text, pkg, fun, ...) {
  
  ns <- pkg |>
    asNamespace()
  
  is_exported <- fun %in% getNamespaceExports(ns)
  is_unexported <- !is_exported && exists(fun, where = ns, inherits = FALSE)
  in_GlobalEnv <- !is_unexported && exists(fun, where = .GlobalEnv)
  
  if (in_GlobalEnv) {
    z <- sprintf(fmt = '{.run [%s](%s())}', text, fun) |>
      format_inline()
    # why does not work??
    return(z)
  }
  
  if (is_exported) {
    fmt <- '{.run [%s](%s::%s())}'
  } else if (is_unexported) {
    #fmt <- '{.run [%s](utils::getFromNamespace(ns = \'%s\', x = \'%s\')())}' # Gemini
    # but does not work..
    # AND breaks my [.findCall()]
    fmt <- '{.run [%s](%s:::%s())}' # for now
    # Positron will display code for user to copy
  }

  sprintf(fmt = fmt, text, pkg, fun) |>
    format_inline() # must!
  
}

