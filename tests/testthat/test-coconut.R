


expect_no_error(
  object = nutritionlist(
    sousChef:::Edward_coconutShrd(),
    sousChef:::Edward_lite_coconutShrd(),
    sousChef:::Edward_coconutFlr(),
    sousChef:::WegmansOrganic_coconutFlr(),
    sousChef:::AnthonysGoods_coconutFlr(),
    sousChef:::BobsRedMill_coconutFlr()
  ) |> 
    sort_by('fat') |>
    print()
)


expect_no_error(
  object = nutritionlist(
    sousChef:::Kara_coconutcream(),
    sousChef:::ThaiKitchen_coconutcream(),
    sousChef:::ThaiKitchen_coconutmilk(),
    sousChef:::ThaiKitchen_coconutmilkLite(),
    sousChef:::Freenow_coconutBar(),
    sousChef:::Freenow_0sugar_coconutBar(),
    sousChef:::Luckin_coconutmilk(),
    sousChef:::CalifiaFarms_coconutmilk(),
    sousChef:::PacificFoods_coconutBar(),
    sousChef:::CalifiaFarms_coconutBar(),
    sousChef:::Dream_coconutBar(),
    sousChef:::CoconutPalm_coconutmilk(),
    sousChef:::Silk_coconutmilk(),
    sousChef:::SoDelicious_coconutmilk(),
    sousChef:::CalifiaFarms_coconutmilkwater()
  ) |> 
    sort_by('fat') |>
    print()
)


