
expect_no_error(
  object = nutritionlist(
    LeeKumKee_satay(),
    LeeKumKee_coconutCurry(),
    LeeKumKee_chickenBouillon()
  ) |>
    sort_by('sodium') |>
    print()
)
