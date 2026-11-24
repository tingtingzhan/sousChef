
# @references 
# \url{https://en.wikipedia.org/wiki/Batter_bread}

system.file('extR', 'cornbread.R', package = 'sousChef') |>
  source()

system.file('extR', 'cornbread.R', package = 'sousChef.nutrition') |>
  source()


expect_no_error(
  object = nutritionlist(
    PreppyKitchen_cornbread(),
    BethanyWeathersby_cornbread(),
    bluegirl_cornbread(),
    JoshuaWeissman_cornbread(),
    sousChef.nutrition:::Jiffy_cornMuffinMix() |>
      as('ingredient'),
    Wegmans_recipe_cornbread(),
    Wegmans_cornbread(),
    sousChef.nutrition:::WholeFoods_cornbreadMix() |>
      as('ingredient'),
    sousChef.nutrition:::Stonewall_cornbreadMix() |>
      as('ingredient'),
    sousChef.nutrition:::TraderJoes_cornbreadMix() |>
      as('ingredient'),
    sousChef.nutrition:::Krusteaz_southern_cornbreadMix() |>
      as('ingredient'),
    sousChef.nutrition:::BobsRedMill_cornbreadMix() |>
      as('ingredient'),
    sousChef.nutrition:::Fleischmanns_cornbreadMix() |>
      as('ingredient'),
    Quaker_cornbread()
  ) |> 
    sort_by('sugar') |>
    print()
)


