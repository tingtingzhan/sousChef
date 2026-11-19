expect_no_error(
  object = nutritionlist(
    Daat_soupBao(),
    xiaogaojie_soupBao(),
    PinNuo_soupBao(),
    shangshi_soupBao(),
    amanda_soupBao()
    # whiteSwan_soupBao(), # not correct??
  ) |> print()
)