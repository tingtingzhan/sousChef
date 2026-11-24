

system.file('extR', 'millecrepe.R', package = 'sousChef') |>
  source()

expect_no_error(
  object = nutritionlist(
    xiaogaojie_millecrepe(),
    iwen_mango_millecrepe(),
    lisa_mango_millecrepe()
  ) |> print()
)

expect_no_error(object = nutritionlist(
  iwen_cocoa_millecrepe(),
  qiong_cocoa_millecrepe(),
  qiong_tiramisu_millecrepe()
) |> print()
)

expect_no_error(object = nutritionlist(
  amanda_matcha_millecrepe(),
  oreomachi_matcha_millecrepe(), 
  JustOne_matcha_millecrepe(),
  sweetTaste_matcha_millecrepe(),
  lisa_matcha_millecrepe()
) |> print()
)


