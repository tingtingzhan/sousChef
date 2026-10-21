


tiramisu_nytimes <- \() recipe(
  flavor = 'Tiramisu', 
  egg_pc = c(eggYolk = 4),
  sugar = 100, 
  dairy = c(Wegmans_heavyCream = 180),
  misc_cup = c(
    BelGioioso_mascarpone = 1
  ),
  nytimes = '1018684')





foodandjourneys_mascarponeFrosting <- \() recipe(
  author = 'Food & Journeys',
  misc_cup = c(
    BelGioioso_mascarpone = 1, 
    Lucerne_lightCream = 1,
    Domino_10x = 1/3
  ),
  # ▢ 1 vanilla bean, seeded
  url = 'https://foodandjourneys.net/how-to-make-mascarpone-cream/')


lifeloveandsugar_mascarponeFrosting <- \() recipe(
  author = 'Life Love & Sugar',
  misc_cup = c(
    Domino_10x = 3/4,
    Wegmans_heavyCream = 1.25
  ),
  vanilla_tsp = c(NielsenMassey_Madagascar = 1),
  misc_brick = c(BelGioioso_mascarpone = 1),
  url = 'https://www.lifeloveandsugar.com/stabilized-mascarpone-whipped-cream/')


lifeloveandsugar_cocoa_mascarponeFrosting <- \() recipe(
  author = 'Life Love & Sugar, Cocoa',
  misc_cup = c(
    Wegmans_heavyCream = 1.25,
    Domino_10x = 1/2,
    KingArthur_Bensdorp_cocoa = 1/4
  ),
  vanilla_tsp = c(NielsenMassey_Madagascar = 1),
  misc_brick = c(BelGioioso_mascarpone = 1),
  url = 'https://www.lifeloveandsugar.com/stabilized-mascarpone-whipped-cream/')


Marcellina_mascarponeFrosting <- \() recipe(
  author = 'Marcellina in Cucina',
  misc_cup = c(
    Wegmans_heavyCream = 1,
    BelGioioso_mascarpone = 1,
    Domino_10x = 1/4
  ),
  vanilla_tsp = c(NielsenMassey_Madagascar = 2),
  url = 'https://www.marcellinaincucina.com/mascarpone-cream/')



