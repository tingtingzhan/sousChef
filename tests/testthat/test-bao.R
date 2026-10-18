

expect_no_error(
  object = {
    nutritionlist(
      sousChef:::Daat_bao1(), 
      sousChef:::Daat_bao2(), 
      sousChef:::Daat_bao3(), 
      sousChef:::Daat_bao4(),
      sousChef:::Daat_lotusBun()
    ) |> print()
  }
)

expect_no_error(
  object = {
    nutritionlist(      
      sousChef:::PinNuo_bao1(), 
      sousChef:::PinNuo_bao2(), 
      sousChef:::PinNuo_bao3()
    ) |> print()
  }
)

#      sousChef:::KingArthur_bao(),
      
#      sousChef:::shangshi_bao(),
      
#      sousChef:::laofangu_bao1(),
      
#      sousChef:::xiaogaojie_bao(),
      
expect_no_error(
  object = {
    nutritionlist(      
      sousChef:::Dad_bao1(), 
      sousChef:::Dad_bao2(), 
      sousChef:::Dad_bao3(), 
      sousChef:::Dad_bao4(), 
      sousChef:::Dad_bao5(), 
      sousChef:::Dad_bao6(), 
      sousChef:::Dad_bao7()
    ) |> print()
  }
)
 
 
