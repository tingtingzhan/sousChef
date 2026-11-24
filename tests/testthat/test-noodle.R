

system.file('extR', 'noodle.R', package = 'sousChef') |>
  source()



expect_no_error(
  object = nutritionlist(
    PinNuo_noodleSliced(),
    PinNuo_noodleShouGan1(),
    PinNuo_noodleShouGan2(),
    PinNuo_noodleBelt(),
    PinNuo_noodleDrawn(),
    laofangu_noodle2(),
    laofangu_noodle1()
  ) |> print()
)


