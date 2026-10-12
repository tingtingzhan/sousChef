
# not sure if I really want to do deep fry




  sacima = '\u8428\u5176\u9a6c'
  #instruction (legacy) = c(
  #  'Manually knead pastry flour, egg and yeast',
  #  # 'Pastalinda; Thickness 7, 3 cm long, 2.5 mm cut',
  #  'Pastalinda; Thickness 6, 2 cm long. Manually cut to 3mm',
  #  'Butter rice cooker bowl',
  #  # 'In rice cooker bowl, layer noodle, syrup (and nuts, dried fruit, etc)',
  #  'Coat noodle pieces with sugar syrup, in rice cooker bowl',
  #  'Ferment for 30min',
  #  'Choose Bread program (90min)'
  #)


# air fryer does not work for this dough ..
# rice cooker not perfect but much better, however my dough is too glutinous, probably too much kneading


shangshi_sacima <- \() recipe(
  flavor = 'sacima', 
  shangshikitchen = 'dV6phomugvA',
  flour = c(KingArthur_allPurposeFlr = 240),
  egg_pc = c(eggYolk = 3, eggWhite = 3))


xiaogaojie_sacima <- \() recipe(
  flavor = 'sacima', 
  xiaogaojie = 'VkgWeCxZfi4',
  flour = c(KingArthur_allPurposeFlr = 200),
  NaHCO3_tsp = c(ArmHammer_NaHCO3 = 1/8),
  water = 15,
  egg_pc = c(eggYolk = 2, eggWhite = 2))


Dad_sacima <- \() recipe(
  flavor = 'sacima', 
  dad1966 = 'ZK4ZoCewr0E',
  flour = c(KingArthur_allPurposeFlr = 270),
  egg_pc = c(eggYolk = 3, eggWhite = 3),
  NaHCO3 = c(ArmHammer_NaHCO3 = 1))

