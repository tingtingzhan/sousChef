

# According to 
# https://www.kingarthurbaking.com/pro/formulas
# Baker's percentage of water is
# added-water : flour
# water in flour is *not* included!!!


if (FALSE) {
  character(0) |> 
    cat(sep = '\n') # an empty line
  character(0) |> 
    sprintf(fmt = '%s\n') |>
    cat(sep = '') # no empty line. preferred!!
}






add_author_url <- \(x, name, ..., text = x[['author']]) {
  v <- x[[name]]
  nv <- length(v)
  if (!nv) return(x)
  if (nv > 1L) stop('only allow len-1 ', sQuote(name))
  if (!length(text)) return(x)
  x$author <- v |>
    fmtURL(text = text, ...)
  x[[name]] <- NULL
  return(x)
}


add_author_url1 <- \(x) {
  n_aut <- length(x$author)
  if (!n_aut) return(x)
  if (n_aut != 1L) stop('@author must be len-1')
  if (ansi_has_any(x$author, link = TRUE)) return(x)
  if (!length(x$url)) return(x)
  x$author <- x$url[1L] |>
    style_hyperlink(url = _, text = x$author)
  x$url <- x$url[-1L]
  return(x)
}


add_youtube <- \(x, name, ...) {
  v <- x[[name]]
  nv <- length(v)
  if (!nv) return(x)
  if (nv > 1L) stop('only allow len-1 ', sQuote(name))
  if (length(x[['author']])) return(x)
  x$author <- v |>
    fmtURL(fmt = 'https://youtu.be/%s', ...)
  x[[name]] <- NULL
  return(x)
}



add_youtube_recipe <- \(x, name, text1, text2, ...) {
  v <- x[[name]]
  nv <- length(v)
  if (!nv) return(x)
  if (nv > 1L) stop('only allow len-1 ', sQuote(name))
  if (length(x$author)) {
    print(x$author)
    print(v)
    stop('`@author` already exists!')
  }
  x$author <- paste(
    v |>
      names() |> # len0-name compatible!!
      fmtURL(fmt = 'https://youtu.be/%s', text = text1),
    v |>
      fmtURL(text = text2, ...)
  ) |>
    ansi_string()
  x[[name]] <- NULL
  return(x)
}



