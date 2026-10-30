
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
  misc = c(
    KingArthur_allPurposeFlr = 240
  ),
  misc_pc = c(egg = 3))


xiaogaojie_sacima <- \() recipe(
  flavor = 'sacima', 
  xiaogaojie = 'VkgWeCxZfi4',
  misc = c(
    KingArthur_allPurposeFlr = 200
  ),
  misc_tsp = c(
    ArmHammer_NaHCO3 = 1/8
  ),
  water = 15,
  misc_pc = c(egg = 2))


Dad_sacima <- \() recipe(
  flavor = 'sacima', 
  dad1966 = 'ZK4ZoCewr0E',
  misc = c(
    KingArthur_allPurposeFlr = 270,
    ArmHammer_NaHCO3 = 1
  ),
  misc_pc = c(egg = 3))

