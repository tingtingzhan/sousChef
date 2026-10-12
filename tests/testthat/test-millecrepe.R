

expect_no_error(
  object = nutritionlist(
    sousChef:::xiaogaojie_millecrepe(),
    sousChef:::iwen_mango_millecrepe(),
    sousChef:::lisa_mango_millecrepe()
  ) |> print()
)

expect_no_error(object = nutritionlist(
  sousChef:::iwen_cocoa_millecrepe(),
  sousChef:::qiong_cocoa_millecrepe(),
  sousChef:::qiong_tiramisu_millecrepe()
) |> print()
)

expect_no_error(object = nutritionlist(
  sousChef:::amanda_matcha_millecrepe(),
  sousChef:::oreomachi_matcha_millecrepe(), 
  sousChef:::JustOne_matcha_millecrepe(),
  sousChef:::sweetTaste_matcha_millecrepe(),
  sousChef:::lisa_matcha_millecrepe()
) |> print()
)


