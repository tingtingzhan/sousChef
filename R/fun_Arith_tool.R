

#' @title \link[methods]{Arith} Methods of \linkS4class{tool}
#' 
#' @description
#' \link[methods]{Arith} methods involving \linkS4class{tool} class.
#' 
#' @param e1,e2 see **Usage**
#' 
#' @name Arith_tool
#' @aliases *,tool,numeric-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'tool', e2 = 'numeric'), definition = \(e1, e2) {
  if (length(e2) != 1L || anyNA(e2)) {
    stop('illegal `e2`')
  }
  tool(
    name = e1@name, name2 = e1@name2, 
    alias = e1@alias,
    # other slots: all suppressed
    waterLost = e1@waterLost * e2 # !length(e1@waterLost) compatible!!
  )
})


#' @rdname Arith_tool
#' @aliases *,numeric,tool-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'numeric', e2 = 'tool'), definition = \(e1, e2) {
  e2 * e1
})



#' @rdname Arith_tool
#' @aliases /,tool,numeric-method
#' @export
setMethod(f = '/', signature = signature(e1 = 'tool', e2 = 'numeric'), definition = \(e1, e2) e1 * (1/e2))


