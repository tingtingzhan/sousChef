expect_no_error(
  object = nutritionlist(
    sousChef:::Daat_soupBao(),
    sousChef:::xiaogaojie_soupBao(),
    sousChef:::PinNuo_soupBao(),
    sousChef:::shangshi_soupBao(),
    sousChef:::amanda_soupBao()
    # whiteSwan_soupBao(), # not correct??
  ) |> print()
)