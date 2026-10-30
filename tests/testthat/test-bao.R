

expect_no_error(
  object = {
    nutritionlist(
      sousChef:::Daat1_bao(), 
      sousChef:::Daat2_bao(), 
      sousChef:::Daat3_bao(), 
      sousChef:::Daat4_bao(),
      sousChef:::Daat_lotusBun()
    ) |> print()
  }
)

expect_no_error(
  object = {
    nutritionlist(      
      sousChef:::PinNuo1_bao(), 
      sousChef:::PinNuo2_bao(), 
      sousChef:::PinNuo3_bao()
    ) |> print()
  }
)

#      sousChef:::KingArthur_bao(),
      
#      sousChef:::shangshi_bao(),
      
#      sousChef:::laofangu1_bao(),
      
#      sousChef:::xiaogaojie_bao(),
      
expect_no_error(
  object = {
    nutritionlist(      
      sousChef:::Dad1_bao(), 
      sousChef:::Dad2_bao(), 
      sousChef:::Dad3_bao(), 
      sousChef:::Dad4_bao(), 
      sousChef:::Dad5_bao(), 
      sousChef:::Dad6_bao(), 
      sousChef:::Dad7_bao()
    ) |> print()
  }
)
 
 
