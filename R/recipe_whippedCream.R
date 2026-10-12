


tiramisu_nytimes <- \() recipe(
  flavor = 'Tiramisu', 
  egg_pc = c(eggYolk = 4),
  sugar = 100, 
  dairy = c(Wegmans_heavyCream = 180),
  dairy_cup = c(BelGioioso_mascarpone = 1),
  nytimes = '1018684')





foodandjourneys_mascarponeFrosting <- \() recipe(
  author = 'Food & Journeys',
  dairy_cup = c(
    BelGioioso_mascarpone = 1, 
    Lucerne_lightCream = 1
  ),
  sugar_cup = c(Domino_10x = 1/3),
  # ▢ 1 vanilla bean, seeded
  url = 'https://foodandjourneys.net/how-to-make-mascarpone-cream/')


lifeloveandsugar_mascarponeFrosting <- \() recipe(
  author = 'Life Love & Sugar',
  dairy_cup = c(Wegmans_heavyCream = 1.25),
  sugar_cup = c(Domino_10x = 3/4),
  vanilla_tsp = c(NielsenMassey_Madagascar = 1),
  dairy_brick = c(BelGioioso_mascarpone = 1),
  url = 'https://www.lifeloveandsugar.com/stabilized-mascarpone-whipped-cream/')


lifeloveandsugar_cocoa_mascarponeFrosting <- \() recipe(
  author = 'Life Love & Sugar, Cocoa',
  dairy_cup = c(Wegmans_heavyCream = 1.25),
  sugar_cup = c(Domino_10x = 1/2),
  cocoa_cup = c(KingArthur_Bensdorp = 1/4),
  vanilla_tsp = c(NielsenMassey_Madagascar = 1),
  dairy_brick = c(BelGioioso_mascarpone = 1),
  url = 'https://www.lifeloveandsugar.com/stabilized-mascarpone-whipped-cream/')


Marcellina_mascarponeFrosting <- \() recipe(
  author = 'Marcellina in Cucina',
  dairy_cup = c(
    Wegmans_heavyCream = 1,
    BelGioioso_mascarpone = 1
  ),
  sugar_cup = c(Domino_10x = 1/4),
  vanilla_tsp = c(NielsenMassey_Madagascar = 2),
  url = 'https://www.marcellinaincucina.com/mascarpone-cream/')



