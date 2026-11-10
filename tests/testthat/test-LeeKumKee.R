
expect_no_error(
  object = nutritionlist(
    LeeKumKee_satay(),
    LeeKumKee_coconut_curry(),
    LeeKumKee_chickenBouillon()
  ) |>
    sort_by('sodium') |>
    print()
)
