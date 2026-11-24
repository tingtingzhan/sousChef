


system.file('extR', 'whippedCream.R', package = 'sousChef') |>
  source()



expect_no_error(
  object = nutritionlist(
    foodandjourneys_mascarponeFrosting(),
    lifeloveandsugar_mascarponeFrosting(),
    lifeloveandsugar_cocoa_mascarponeFrosting(),
    Marcellina_mascarponeFrosting()
  ) |> print()
)



