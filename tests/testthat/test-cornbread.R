
# @references 
# \url{https://en.wikipedia.org/wiki/Batter_bread}



expect_no_error(
  object = nutritionlist(
    sousChef:::TraderJoes_cornbreadMix() - 
      list(sugar = 9.2*12),
    sousChef:::WholeFoods365_cornbreadMix() - 
      list(sugar = 4*12),
    sousChef:::Krusteaz_southern_cornbreadMix() - 
      list(sugar = .5*12),
    sousChef:::BobsRedMill_cornbreadMix(),
    sousChef:::Stonewall_cornbreadMix() - 
      list(sugar = 8.1*12),
    sousChef:::Jiffy_cornMuffinMix() - 
      list(sugar = 5.5*3),
    sousChef:::Fleischmanns_cornbreadMix() - 
      list(sugar = 5.1*16)
  ) |> print()
)

expect_no_error(
  object = nutritionlist(
    sousChef:::PreppyKitchen_cornbread() -
      list(misc = c(Domino_granulated = 17)),
    sousChef:::BethanyWeathersby_cornbread() -
      list(misc = c(Domino_granulated = 105)),
    sousChef:::bluegirl_cornbread() -
      list(misc = c(Domino_granulated = 108)),
    sousChef:::JoshuaWeissman_cornbread() -
      list(misc = c(
        Domino_granulated = 64,
        Domino_lightBrown = 15 
      )),
    sousChef:::Jiffy_cornMuffinMix() |>
      as('raw.') |>
      as('nutrition') - 
      list(sugar = 32),
    sousChef:::Wegmans_cornbread_recipe() -
      list(misc = c(Domino_granulated = 88)),
    sousChef:::Wegmans_cornbread() - 
      list(sugar = 10.5),
    sousChef:::WholeFoods365_cornbreadMix() |>
      as('raw.') |>
      as('nutrition') - 
      list(sugar = 64),
    sousChef:::Stonewall_cornbreadMix() |>
      as('raw.') |>
      as('nutrition') - 
      list(sugar = 117),
    sousChef:::TraderJoes_cornbreadMix() |>
      as('raw.') |>
      as('nutrition') - 
      list(sugar = 108),
    sousChef:::Krusteaz_southern_cornbreadMix() |>
      as('raw.') |>
      as('nutrition') - 
      list(sugar = 23),
    sousChef:::BobsRedMill_cornbreadMix() |>
      as('raw.') |>
      as('nutrition') - 
      list(sugar = 7),
    sousChef:::Fleischmanns_cornbreadMix() |>
      as('raw.') |>
      as('nutrition') - 
      list(sugar = 100),
    sousChef:::Quaker_cornbread()
  ) |> print()
)


