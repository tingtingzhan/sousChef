
# @references 
# \url{https://en.wikipedia.org/wiki/Batter_bread}




expect_no_error(
  object = nutritionlist(
    PreppyKitchen_cornbread(),
    BethanyWeathersby_cornbread(),
    bluegirl_cornbread(),
    JoshuaWeissman_cornbread(),
    sousChef.nutrition:::Jiffy_cornMuffinMix() |>
      as('raw.'),
    Wegmans_recipe_cornbread(),
    sousChef.nutrition:::Wegmans_cornbread(),
    sousChef.nutrition:::WholeFoods_cornbreadMix() |>
      as('raw.'),
    sousChef.nutrition:::Stonewall_cornbreadMix() |>
      as('raw.'),
    sousChef.nutrition:::TraderJoes_cornbreadMix() |>
      as('raw.'),
    sousChef.nutrition:::Krusteaz_southern_cornbreadMix() |>
      as('raw.'),
    sousChef.nutrition:::BobsRedMill_cornbreadMix() |>
      as('raw.'),
    sousChef.nutrition:::Fleischmanns_cornbreadMix() |>
      as('raw.'),
    Quaker_cornbread()
  ) |> 
    sort_by('sugar') |>
    print()
)


