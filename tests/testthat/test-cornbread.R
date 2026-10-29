
# @references 
# \url{https://en.wikipedia.org/wiki/Batter_bread}



expect_no_error(
  object = nutritionlist(
    sousChef:::TraderJoes_cornbreadMix(),
    sousChef:::WholeFoods365_cornbreadMix(),
    sousChef:::Krusteaz_southern_cornbreadMix(),
    sousChef:::BobsRedMill_cornbreadMix(),
    sousChef:::Stonewall_cornbreadMix(),
    sousChef:::Jiffy_cornMuffinMix(),
    sousChef:::Fleischmanns_cornbreadMix()
  ) |> 
    sort_by('sugar') |>
    print()
)

expect_no_error(
  object = nutritionlist(
    sousChef:::PreppyKitchen_cornbread(),
    sousChef:::BethanyWeathersby_cornbread(),
    sousChef:::bluegirl_cornbread(),
    sousChef:::JoshuaWeissman_cornbread(),
    sousChef:::Jiffy_cornMuffinMix() |>
      as('raw.'),
    sousChef:::Wegmans_recipe_cornbread(),
    sousChef:::Wegmans_cornbread(),
    sousChef:::WholeFoods365_cornbreadMix() |>
      as('raw.'),
    sousChef:::Stonewall_cornbreadMix() |>
      as('raw.'),
    sousChef:::TraderJoes_cornbreadMix() |>
      as('raw.'),
    sousChef:::Krusteaz_southern_cornbreadMix() |>
      as('raw.'),
    sousChef:::BobsRedMill_cornbreadMix() |>
      as('raw.'),
    sousChef:::Fleischmanns_cornbreadMix() |>
      as('raw.'),
    sousChef:::Quaker_cornbread()
  ) |> 
    sort_by('sugar') |>
    print()
)


