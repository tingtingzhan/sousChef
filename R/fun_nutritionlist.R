


#' @title \link[base]{list} of \linkS4class{nutrition}s
#' 
#' @description
#' ..
#' 
#' @param ... objects convertible to \linkS4class{nutrition}
#' 
#' @export
nutritionlist <- \(...) {
  
  x <- list(...)
  
  z <- x |>
    lapply(FUN = as, Class = 'nutrition')
  
  if (!all(vapply(z, FUN = is, class2 = 'nutrition', FUN.VALUE = NA))) {
    stop('a')
  } 
  
  sumx <- x |>
    lapply(FUN = summary)
  # [summary.nutrition]
  # [summary.raw.]
  # [summary.recipe]
  
  nm <- z |>
    vapply(FUN = labels.nutrition, FUN.VALUE = '')
  names(z) <- names(sumx) <- nm
  attr(z, which = 'sumx') <- sumx # think of a better way to pass this info to downstream functions?
  
  class(z) <- c('nutritionlist', 'listof', 'list') 
  return(z)
  
}



#' @importFrom equiv4 equivlist
#' @export
print.nutritionlist <- \(x, ...) {
  
  'Nutrition' |> 
    bg_br_yellow() |> 
    cat('\n', . = _, '\n', sep = '')
  
  x |>
    as.matrix.nutritionlist(...) |>
    print.nutritionMatrix()

  sumx <- x |>
    attr(which = 'sumx')
  
  pers <- sumx |>
    lapply(FUN = names) |>
    unlist(use.names = FALSE) |>
    unique.default()
    
  for (which in pers) {
    sumx |>
      lapply(FUN = \(i) {
        z <- i[[which]]
        if (!length(z)) return(invisible())
        z |>
          .repl_names()
      }) |>
      do.call(what = 'equivlist', args = _) |>
      print(fmt_caption = '\u214c %s') # equiv4:::print.equivlist
  }
  
  return(invisible())
  
}





#' @method as.matrix nutritionlist
#' @export
as.matrix.nutritionlist <- \(x, ...) {
  
  ret <- x |> 
    lapply(FUN = as, Class = 'nutrition') |> # make double sure
    lapply(FUN = as.double.nutrition, ...) |>
    #lapply(FUN = .repl_names) |> # why error?
    do.call(what = 'rbind', args = _) # matrix
  
  class(ret) <- c('nutritionMatrix', class(ret)) |>
    unique.default()
  return(ret)
  
}




#' @importFrom charwidth row_fmt_matrix
#' @export
print.nutritionMatrix <- \(x, ...) {
  
  z <- x[, colMeans(x == 0) != 1, drop = FALSE] |>
    apply(MARGIN = 2L, FUN = max_binlabel, accuracy = .1, simplify = FALSE) |>
    do.call(what = 'cbind', args = _) # to make sure not getting a 'vector'
  
  colnames(z) <- colnames(z) |>
    .repl()
  
  z |>
    row_fmt_matrix() |>
    cat(sep = '\n')
  
  cat('\n')
  
  return(invisible())
  
}





# nomenclature
# dplyr::recode_values
# dplyr::replace_values
.repl <- \(x) {
  x[x == 'addedWater'] <- '+water'
  x[x == 'addedSugar'] <- '+sugar\n\u6dfb\u52a0\u7cd6'
  x[x == 'starch'] <- '+starch'
  x[x == 'carbohydrate'] <- 'carb' 
  x[x == 'sodium'] <- 'Na\u207a'
  x[x == 'cholesterol'] <- 'cholr'
  x[x == 'Na2CO3'] <- 'Na\u2082CO\u2083'
  x[x == 'NaHCO3'] <- 'NaHCO\u2083\n\u5c0f\u82cf\u6253'
  x[x == 'bakingPowder'] <- 'bkPwd\n\u6ce1\u6253\u7c89'
  x[x == 'pumpkinSpice'] <- '\U0001f383spice'
  x[x == 'breadFlr'] <- '\U0001f35eflr\n\u9ad8\u7b4b\u9762\u7c89'
  x[x == 'pastryFlr'] <- '\U0001f370flr\n\u4f4e\u7b4b\u9762\u7c89'
  x[x == 'eggYolk'] <- paste('\U0001f95ayolk', ansi_strip(eggYolk()@alias), sep = '\n')
  x[x == 'eggWhite'] <- paste('\U0001f95awhite', ansi_strip(eggWhite()@alias), sep = '\n')
  x[x == 'cornmeal'] <- '\U1f33d\n\u7389\u7c73\u9762'
  x[x == 'onion'] <- '\U1f9c5'
  x[x == 'ssmOil'] <- 'ssmOil\n\u829d\u9ebb\u6cb9'
  x[x == 'rattanPpOil'] <- 'rattanPpOil\n\u85e4\u6912\u6cb9'
  return(x)
}


.repl_names <- \(x) {
  names(x) <- names(x) |>
    .repl()
  return(x)
}



