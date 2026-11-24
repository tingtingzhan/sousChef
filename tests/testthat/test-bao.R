

system.file('extR', 'bao.R', package = 'sousChef') |>
  source()

expect_no_error(
  object = {
    nutritionlist(
      Daat1_bao(), 
      Daat2_bao(), 
      Daat3_bao(), 
      Daat4_bao(),
      Daat_lotusBun()
    ) |> print()
  }
)

expect_no_error(
  object = {
    nutritionlist(      
      PinNuo1_bao(), 
      PinNuo2_bao(), 
      PinNuo3_bao()
    ) |> print()
  }
)

#      KingArthur_bao(),
      
#      shangshi_bao(),
      
#      laofangu1_bao(),
      
#      xiaogaojie_bao(),
      
expect_no_error(
  object = {
    nutritionlist(      
      Dad1_bao(), 
      Dad2_bao(), 
      Dad3_bao(), 
      Dad4_bao(), 
      Dad5_bao(), 
      Dad6_bao(), 
      Dad7_bao()
    ) |> print()
  }
)
 
 
