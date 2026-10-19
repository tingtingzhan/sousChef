
# @references 
# \url{https://en.wikipedia.org/wiki/Batter_bread}



expect_no_error(
  object = nutritionlist(
    sousChef:::TraderJoes_cornbreadMix() |>
      subtract(sugar = 9.2*12),
    sousChef:::WholeFoods365_cornbreadMix() |>
      subtract(sugar = 4*12),
    sousChef:::Krusteaz_southern_cornbreadMix() |>
      subtract(sugar = .5*12),
    sousChef:::BobsRedMill_cornbreadMix(),
    sousChef:::Stonewall_cornbreadMix() |>
      subtract(sugar = 8.1*12),
    sousChef:::Jiffy_cornMuffinMix() |>
      subtract(sugar = 5.5*3),
    sousChef:::Fleischmanns_cornbreadMix() |>
      subtract(sugar = 5.1*16)
  ) |> print()
)

expect_no_error(
  object = nutritionlist(
    sousChef:::PreppyKitchen_cornbread() |>
      subtract(sugar = 17),
    sousChef:::BethanyWeathersby_cornbread() |> 
      subtract(sugar = 105),
    sousChef:::bluegirl_cornbread() |>
      subtract(sugar = 108),
    sousChef:::JoshuaWeissman_cornbread() |>
      subtract(sugar = c(23, 64)),
    sousChef:::Jiffy_cornMuffinMix() |>
      as('raw.') |>
      as('nutrition') |>
      subtract(sugar = 32),
    sousChef:::Wegmans_cornbread_recipe() |> 
      subtract(sugar = 88),
    sousChef:::Wegmans_cornbread() |>
      subtract(sugar = 10.5),
    sousChef:::WholeFoods365_cornbreadMix() |>
      as('raw.') |>
      as('nutrition') |>
      subtract(sugar = 64),
    sousChef:::Stonewall_cornbreadMix() |>
      as('raw.') |>
      as('nutrition') |>
      subtract(sugar = 117),
    sousChef:::TraderJoes_cornbreadMix() |>
      as('raw.') |>
      as('nutrition') |>
      subtract(sugar = 108),
    sousChef:::Krusteaz_southern_cornbreadMix() |>
      as('raw.') |>
      as('nutrition') |>
      subtract(sugar = 23),
    sousChef:::BobsRedMill_cornbreadMix() |>
      as('raw.') |>
      as('nutrition') |>
      subtract(sugar = 7),
    sousChef:::Fleischmanns_cornbreadMix() |>
      as('raw.') |>
      as('nutrition') |>
      subtract(sugar = 100),
    sousChef:::Quaker_cornbread()
  ) |> print()
)


