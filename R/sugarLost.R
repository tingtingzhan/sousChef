

sugarLost <- \(x) {
  
  if ('_yeast$' %in% x) {
    z <- if (key(x) %in% c('bao')) {
      # After one hour brew time, ~0.35 grams of sugar per gram of yeast have been consumed, 
      # leaving ~0.65 grams of unfermented sugar per gram of yeast.
      # https://www.lallemand.com/BakerYeastNA/eng/PDFs/LBU%20PDF%20FILES/1_19WATR.PDF
      sum(x['_yeast$']) * .35
    } else {
      # I ferment overnight in fridge, lost 1.15 yeast
      # then ferment in room temperature, lost .35 yeast
      sum(x['_yeast$']) * 1.5
    }
  } else z <- numeric()
  
  return(z)
  
}
