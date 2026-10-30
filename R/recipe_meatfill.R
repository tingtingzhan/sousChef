
# shrimp ~880g, drained from 2lb package (Feb 2024)





meatfill_portion <- \() c(
  '\u9984\u9968 wonton' = 15,
  '\u997a\u5b50 gyoza' = 15,
  # '35g bao wrapper \u5305\u5b5035g\u76ae' = 20, # I can do nicely
  # '\u5927\u5305\u5b50 50g bao wrapper\U1f389' = 52 # too big
  '\u5305\u5b50 40g bao wrapper\U1f389' = 40 # too big
)

meatfill_note <- \() c(
  'Extra can be made into meatmash()'
)






juntun_filling <- \() recipe(
  flavor = '\u519b\u5c6f\u9505\u76d4\u9985',
  misc = c(
    pork_belly = 250, # 550, # too fat!!
    pork_tenderloin = 300
  ),
  misc_tsp = c(
    McCormick_whitePepper = .5,
    SimplyOrganic_ginger = .5,
    SimplyOrganic_coriander = 1/4,
    Morton_salt = .5
  ),
  misc_Tbsp = c(
    YaoMaZi_rattanPepper_oil = 1 # perfect numbness!!
  ),
  #instruction (legacy) = c(
  #  'Use KitchenAid meat grinder, not meat chopper!'
  #),
  review = 'try again!!',
  youtube = 'cohQ56AqXkg'
)









porkfill <- \() recipe(
  misc = c(
    pork_tenderloin = 500, 
    pork_belly = 500, # tiny too fat
    LeeKumKee_5spiceMarinade = 70 # really nice already!!
    #LeeKumKee_5spiceMarinade = 60,
    #LeaPerrins_Worcestershire = 30
  ),
  misc_tsp = c(
    YaoMaZi_rattanPepper_oil = 1,
    McCormick_whitePepper = 1,  
    SimplyOrganic_ginger = 1,
    SimplyOrganic_coriander = 1/4 # 1/2 a tiny tiny too strong
  ), 
  misc_Tbsp = c(
    Wegmans_corn_starch = 2.5,
    Kadoya_sesame_oil = 1
  ),
  water = 100,
  review = 'perfect!!')




Jenny_chickenfill <- \() recipe(
  author = 'Jenny', flavor = '\u9e21\u817f\u8089\u9985',
  misc = c(
    chicken_thigh = 500,
    Kirkland_shrimp_c31 = 300
  ),
  #Rice wine 2Tbsp  / Vin de riz 2Tbsp
  misc_Tbsp = c(
    Wegmans_corn_starch = 1,
    Kikkoman_soy = 2,
    LeeKumKee_premium_oyster = 2,
    Kadoya_sesame_oil = 2
  ),
  misc_tsp = c(
    LeeKumKee_chickenBouillon = 1/2,
    Morton_salt = 1/2
  ),
  #Chicken broth 3Tbsp / Bouillon de poulet 3Tbsp
  misc_pc = c(egg = 1)
)






xiaogaojie_lambfill <- \() recipe(
  flavor = '\u867e\u7f8a\u8089\u9985', 
  xiaogaojie = 'M6DD504lDac',
  portion = c(Baozi = 30),
  misc = c(
    lamb_leg = 250,
    Kirkland_shrimp_c31 = 400
  ),
  misc_Tbsp = c(
    Kikkoman_soy = 1
  ), 
  misc_tsp = c(
    SimplyOrganic_ginger = 1.5,
    Kadoya_sesame_oil = 1,
    McCormick_whitePepper = 1/4,
    SimplyOrganic_5spice = 1/8,
    Morton_salt = 1
  ),
  #葱白 50克
  #花椒粉_tsp = 1/8,
  misc_pc = c(eggWhite = 1)
)



# below: no-so-successful experiments

salmonfill <- \() recipe(
  misc = c(
    salmonAtlantic = 1000,
    mizkan_brownRiceVinegar = 40,
    Kikkoman_soyLite = 40
  ),
  misc_tsp = c(
    McCormick_whitePepper = 1/2,
    SimplyOrganic_ginger = 1/4,
    YaoMaZi_rattanPepper_oil = 1/2
  ),
  misc_Tbsp = c(
    Wegmans_corn_starch = 2,
    FrontierCoop_harissa = 1, # 2Tbsp too much
    Kadoya_sesame_oil = 1
  ),
  review = c(
    'Not enough gelatin. Texture not right',
    'Effie loves though!'
  ))
