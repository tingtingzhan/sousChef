
# @references 
# \url{https://en.wikipedia.org/wiki/Batter_bread}



expect_silent(nutritionlist(
  subtract(sousChef:::TraderJoes_cornbreadMix(), sugar = 10.2),
  subtract(sousChef:::WholeFoods365_cornbreadMix(), sugar = 4),
  subtract(sousChef:::Krusteaz_southern_cornbreadMix(), sugar = .5),
  sousChef:::BobsRedMill_cornbreadMix(),
  subtract(sousChef:::Stonewall_cornbreadMix(), sugar = 8.1),
  subtract(sousChef:::Jiffy_cornMuffinMix(), sugar = 5.5),
  subtract(sousChef:::Fleischmanns_cornbreadMix(), sugar = 5.1)
))

expect_silent(nutritionlist(
  subtract(sousChef:::PreppyKitchen_cornbread(), sugar = 17),
  subtract(sousChef:::BethanyWeathersby_cornbread(), sugar = 105),
  subtract(sousChef:::bluegirl_cornbread(), sugar = 108),
  subtract(sousChef:::JoshuaWeissman_cornbread(), sugar = c(23, 64)),
  sousChef:::Jiffy_cornMuffin() |>
    as('nutrition') |>
    subtract(sugar = 32),
  subtract(sousChef:::Wegmans_cornbread_recipe(), sugar = 88),
  subtract(sousChef:::Wegmans_cornbread(), sugar = 10.5),
  sousChef:::WholeFoods365_cornbread() |>
    as('nutrition') |>
    subtract(sugar = 64),
  sousChef:::Stonewall_cornbread() |>
    as('nutrition') |>
    subtract(sugar = 117),
  sousChef:::TraderJoes_cornbread() |>
    as('nutrition') |>
    subtract(sugar = 108),
  sousChef:::Krusteaz_southern_cornbread() |>
    as('nutrition') |>
    subtract(sugar = 23),
  sousChef:::BobsRedMill_cornbread() |>
    as('nutrition') |>
    subtract(sugar = 7),
  sousChef:::Fleischmanns_cornbread() |>
    as('nutrition') |>
    subtract(sugar = 100),
  sousChef:::Quaker_cornbread()
))


