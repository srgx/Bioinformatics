
########################################

# Chemistry

########################################

# Iron
d = 7.9; v = 15; m = d * v

# Silver
m = 120; d = 10.5; v = m / d

# Aluminum
v = 12; m = 32.4; d = m / v

########################################

# Lead
v = 2; d = 11.3; m = v * d

# Unknown
m = 50; v = 100; d = m / v

# Gold
d = 19; m = 2000; v = m / d

# Copper
d = 9; v = 1000; m = d * v

# Zinc
d = 7.1; v = 10; m = v * d

########################################

# Aluminum data
aluminum = [13 3 3 27]

# Neutrons and electrons
atom = [119 - 50, 50]

# Electrons in ion
electrons = 26 - 2

# Protons, electrons and neutrons
proEleNeu = [8 8 16 - 8]

# Period and group
pos = [2 16]

# Element with 35 protons
pos = [4 17]

# Symbols of elements satisfying conditions
els = {"As" "Si" "Br"}

# Carbon nucleons
nucleons = 6 + 7

# Sulfur data
sulfur = [16 16 33 - 16 6 3]

# Sodium data
sodium = {"Na" "Sodium" 3 11 11 1}

########################################

# Sulfur protons, electrons and neutrons
sulfur = [16 16 33 - 16]

# Zinc 70 protons and neutrons
zinc = [30 70 - 30]

########################################

# Sulfur (S)
sulfurMass = 64 - 32

# Hydrogen atoms in ammonia
nHydrogen = 17 - 14

# Gallium - Ga2O3
galliumMass = (188 - 3 * 16) / 2

# Stoichiometric index
indx = (182 - 2 * 35) / 16

# Compound masses
masses = [2 + 16 40 + 16 14 * 2]
masses2 = [14 + 3 40 + 35 * 2 23 * 2 + 16]
masses3 = [23 + 14 + 3 * 16 2 * 23 + 32 + 4 * 16]
masses4 = [64 + 32 + 4 * 16 207 + 2 * 35 2 * 27 + 3 * (4 * 16 + 32)]
masses5 = [2 * 27 + 3 * 16 32 + 3 * 16 24 + 2 * (16 + 1)]

# Carbon (C)
carbonMass = 106 - 3 * 16 - 2 * 23

# Iron - Fe2O3
ironMass = (160 - 3 * 16) / 2

# Symbol C
carbonMass = 106 - 3 * 16 - 2 * 23

# Aluminum - Al(OH)3
aluminumMass = 78 - 3 * (16 + 1)

########################################

# Bromine(-)
bromine = [35 36]

# Magnesium(2+)
magnesium = [12 10]

# Taken and donated electrons
electrons = [-2 1 2 -3]

# Electronegativity difference and electrons
mgcl2 = 3.16 - 1.31
electrons = [1 2]

# Ionic bond
na2o = 3.44 - 0.93

# Ions
elements = [-1 -2 3 2]

########################################

# Nitrogen (I) - N2O
# II - Ca, Mg, Be
# SO3 (VI)
siSFe =  [4 6 3]
clSP = [7 4 5]
mgAlN = [2 3 5]
naKCa = [1 1 2]
feZn = [3 2]

########################################

#{

  2Na + Cl2 -> 2NaCl
  N2 + O2 -> 2NO
  S + O2 -> SO2
  2N2O -> 2N2 + O2
  2HgO -> 2Hg + O2
  4Na + O2 -> 2Na2O
  2Ca + O2 -> 2CaO
  4K + O2 -> 2K2O
  2Mg + O2 -> 2MgO
  N2 + 3H2 -> 2NH3
  2Fe + 3Cl2 -> 2FeCl3
  4Al + 3O2 -> 2Al2O3
  2S + 3O2 -> 2SO3
  2N2 + 5O2 -> 2N2O5

#}

########################################

#{

  N2 + O2 -> 2NO
  4Na + O2 -> 2Na2O
  Ca + Cl2 -> CaCl2

  2H2O -> 2H2 + O2
  2Fe + 3Cl2 -> 2FeCl3
  3S + 2Al -> Al2S3

  PbO + H2 -> Pb + H2O
  2K + H2S -> K2S + H2
  2SO2 + O2 -> 2SO3

  CH4 + 2O2 -> CO2 + 2H2O
  2N2O -> 2N2 + O2
  2K + Cl2 -> 2KCl

  P4 + 5O2 -> P4O10
  H2 + Cl2 -> 2HCl
  3H2 + N2 -> 2NH3

  2CO + O2 -> 2CO2
  4Al + 3O2 -> 2Al2O3
  2CuO + C -> 2Cu + CO2

  Exchange
  PbO + C -> CO + Pb
  SnO2 + 2C -> Sn + 2CO

#}

########################################

# CuO
cm = 64; om = 16; tot = cm + om;
cuPer = cm / tot * 100
oPer = 100 - cuPer

# Al2O3
om = 3 * om; alm = 2 * 27; tot = om + alm;
alPer = alm / tot * 100
oPer = 100 - alPer

# Higher oxygen percentage
# K2O < Na2O
om = 16;
p1 = om / (2 * 39 + om) * 100
p2 = om / (2 * 23 + om) * 100
higher = p2 > p1

# H2O
mRatio = 2 / 16

# Al2S3
alm = 2 * 27; sm = 3 * 32; tot = alm + sm;
alPer = alm / tot * 100, sPer = 100 - alPer
mRatio = alm / sm

# NO2 (70% oxygen)
om = 2 * om; oxygen = om / (om + 14) * 100

# H2S
sm = 32; hm = 2; mratio = hm / sm
tot = sm + hm;
hPer = 2 / tot * 100
sPer = 100 - hPer

########################################

# 2Al + 3S -> Al2S3
mal2s3 = 10.8 + 19.2

# 2C + O2 -> 2CO
mc = 8.75 - 5

# 2PbO + C(12) -> 2Pb(414) + O2
mc = 12 * 10 / 414

# H2 + Cl2 -> 2HCl
mcl = 360 - 10

# 2HgO(434) -> 2Hg(402) + O2
mhgo = 5 * 434 / 402

# 3C(36) + 2Fe2O3(320) -> 4Fe + 3CO2
# Not enough carbon
cmass = 7 - 80 * 36 / 320

# 2Ca(80) + O2 -> 2CaO(112)
mcao = 10 * 112 / 80

########################################

# Salt
tm = 75; sm = 25; wm = tm - sm;
sol = sm / wm * 100

# CuSO4
tsm = 20 / 100 * 200; smass = tsm - 30

# Salt & Water
smass = 70; wmass = 250 - smass;
sol = smass / wmass * 100

# NaNO3
# All substance will dissolve
dff = 92 / 100 * 50 - 40

# CuSO4
left = 400 - 50 / 100 * 500

# Substance X
sol = 2.5 / 40 * 100

# Substance and Water
smass = 25; wmass = 75 - smass;
sol = smass / wmass * 100

# Solution
wmass = 250; smass = 30;
sol = smass / wmass * 100

# KCl
smass = 102; wmass = 402 - smass;
skcl = smass / wmass * 100

# KCl & Water
# Unsaturated solution
mkcl = 45 / 100 * 250

# CuSO4
smass = 20 / 100 * 300

# Salt
ssol = 25 / 250 * 100

# KI
smass = 30; wmass = 50 - smass;
ksol = smass / wmass * 100

# Sugar
smass = 200 / 100 * 500

# Water & Salt
wmass = 100 / 40 * 90

# Sodium acetate
smass = 153 - 124

# KCl
# Not all substance dissolved
dff = 110 - 34 / 100 * 300

########################################

# Salt mass
smass = 0.1 * 100 + 0.2 * 100

# Percentage
per = 20 / 140 * 100

# Nitric acid
per = 20 / 500 * 100

# Salt
per = 100 / 2100 * 100

# Sodium hydroxide
smass = 0.1 * 200

# Water & sodium hydroxide
smass = 0.25 * 50
wmass = 50 - smass

# Sugar
wmass = 5 / 10 * 90

# Salt percentage
per = 40 / 500 * 100

# Water
wmass = 0.8 * 2000

# Substance & Water
tmass = 5 / 20 * 100;
wmass = tmass - 5

# Substance percentage
per = 20 / 320 * 100

# Sea water
smass = 0.03 * 20

# Cucumbers
tmass = 3000;
smass = 0.04 * tmass
wmass = tmass - smass

# Sodium hydroxide solution
smass = 0.1 * 200

# Sodium chloride
smass = 0.05 * 400

########################################

#{

  Hydrogen cations Ca(2+) and hydroxide anions OH(-)

  Hydroxyl group (I)

  Metals (II) (III) (I)

  Magnesium hydroxide
  Copper h.e (II)
  Iron h.e (III)

  Aluminum/Calcium/Sodium hydroxide

  NaOH
  Fe(OH)3
  Cu(OH)2

  Ca(OH)2
  Mg(OH)2
  Al(OH)3

  Ba(OH)2
  LiOH
  Pb(OH)2

#}

########################################

#{

  Na2O + H2O -> 2NaOH
  2Na + 2H2O -> 2NaOH + H2

  Ca + 2H2O -> Ca(OH)2 + H2

  CaO MgO Na2O

  NaOH - pipes
  Ca(OH)2 - construction
  KOH - soap

  Hygroscopic and corrosive

  CaO + H2O -> Ca(OH)2
  Calcium hydroxide
  Limewater & Carbon dioxide

  Blue Raspberry Yellow

  2Na + 2H2O -> 2NaOH + H2
  Low density
  Raspberry Alkaline

  Heat in exothermic process

  4Na + O2 -> 2Na2O
  Na2O + H2O -> 2NaOH

  2K + 2H2O -> 2KOH + H2

  2Na + 2H2O -> 2NaOH + H2
  Na2O + H2O -> 2NaOH
  Ca + 2H2O -> Ca(OH)2 + H2

  CaO + H2O -> Ca(OH)2
  Phenolphthalein

  CuCl2
  2NaOH + CuCl2 -> Cu(OH)2 + 2NaCl

  3KOH + AlCl3 -> 3KCl + Al(OH)3

  Blue
  Methyl orange

  Ca + 2H2O -> Ca(OH)2 + H2
  CaO + H2O -> Ca(OH)2

  2Li + 2H2O -> 2LiOH + H2
  Sr + 2H2O -> Sr(OH)2 + H2

  MgO + H2O -> Mg(OH)2

  2Na + 2H2O -> 2NaOH + H2
  Na2O + H2O -> 2NaOH

#}

########################################

#{

  NaOH -> Na(+) + OH(-)
  Ca(OH)2 -> Ca(2+) + 2OH(-)
  Ba(OH)2 -> Ba(2+) + 2OH(-)

  Hydroxide anion
  Calcium cation
  Potassium c.

  KOH & Ca(OH)2

  LiOH -> Li(+) + OH(-)
  Ca(OH)2 -> Ca(2+) + 2OH(-)

  Monopositive cation
  Mononegative anion

  Aqueous solution conducts electricity

  Barium Ba(2+) Hydroxide 2OH(-)

  Alkaline solution with excess of OH- ions and pH greater than 7

#}

########################################

# Potassium hydroxide mass
phmass = 0.25 * 300

# Calcium oxide mass
# CaO (56) + H2O -> Ca(OH)2 (74)
comass = 56 * 150 / 74

# Percentage of magnesium in magnesium hydroxide - Mg(OH)2
mmass = 24; tmass = mmass + 2 * (16 + 1);
pmass = mmass / tmass * 100

########################################

#{

  H2CO3 (II)

  HNO3 (I) (V) (II)

  H2SO3 (II)

  H3PO4 (III)

  H2SO4 (II)

  Sulfuric acid (IV) (Sulfurous acid)

  ^ line 2

  Hydrochloric acid - HCl

  H2S

#}

########################################

#{

  SO3 + H2O -> H2SO4
  P4O10 + 6H2O -> 4H3PO4

  C + O2 -> CO2
  CO2 + H2O -> H2CO3

  H2CO3 -> CO2 + H2O

  Hygroscopic

  P4O10 + 6H2O -> 4H3PO4

  ^ line 2.2

  SO3 + H2O -> H2SO4

  1B - Mass increased (hygroscopic)

  N2O5 + H2O -> 2HNO3

  2HCl + FeS -> H2S + FeCl2

  Synthesis reaction
  H2 + Cl2 -> 2HCl

  Hydrosulfuric acid

#}

########################################

#{

  Xanthoprotein reaction - yellow tint

  H2SO3 -> SO2 + H2O

  FeS + 2HCl-> FeCl2 + H2S

#}

# Mass percentage - H2S
pmass = 32 / 34 * 100

#{

  Mass ratio in H2S - mH:mS = 1:16

  Sulfur & Hydrogen
  S + H2 -> H2S

  2N2 + 5O2 -> 2N2O5
  N2O5 + H2O -> 2HNO3

  H2 + Cl2 -> 2HCl

#}

# Mass H3PO4
mass = 3 + 31 + 4 * 16

#{

  CO2 + H2O -> H2CO3

  SO2 + H2O -> H2SO3

  S + O2 -> SO2
  2SO2 + O2 -> 2SO3
  SO3 + H2O -> H2SO4
  A - S
  B - SO2
  C - SO3
  D - H2O

#}

########################################

#{

  Hydrochloric acid

  S + O2 -> SO2
  SO2 + H2O -> H2SO3

  ^ line 2.1
  2SO2 + O2 -> 2SO3
  SO3 + H2O -> H2SO4

#}

# H2 + Cl2(70) -> 2HCl (72)
mass = 72 / 70 * 5

#{

  Unstable acid decomposes into water and carbon dioxide

  ^ line 3.2

  H2SO3 -> SO2 + H2O

  6H2O + P4O10 -> 4H3PO4

  ^ line 2.2

  N2O5 + H2O -> 2HNO3

  ^ line 2.1
  ^ line 2.2

  Colorless & 2 * Red

#}

########################################

#{

  Hydrogen cation and sulfate anion (IV)
  H2SO3 -> 2H(+) + SO3(2-)

  H. c. and nitrate a. (V)
  HNO3 -> H(+) + NO3(-)

  H. c. and sulfide a.
  H2S -> 2H(+) + S(2-)

  H. c. and phosphate a. (V)
  H3PO4 -> 3H(+) + PO4(3-)

  H. c. and sulfate a. (VI)
  H2SO4 -> 2H(+) + SO4(2-)

  H. c. and carbonate a.
  H2CO3 -> 2H(+) + CO3(2-)

#}

########################################

#{

  HCl -> H(+) + Cl(-)

  H2SO4 & HNO3

  H2S -> 2H(+) + S(2-)

  H3PO4 -> 3H(+) + PO4(3-)

  H2SO3 -> 2H(+) + SO3(2-)

  H(+) & SO4(2-) & Cl(-)

  Cations & Anions

  Unstable & Carbon Dioxide

  HNO3 -> H(+) + NO3(-)

#}

########################################

#{

  CaO + H2SO4 -> CaSO4 + H2O

  MgO + 2HNO3 -> Mg(NO3)2 + H2O

  2Mg + O2 -> 2MgO
  ^ line 2

  H2S + K2O -> K2S + H2O

#}

########################################

#{

  Fe + 2HNO3 -> Fe(NO3)2 + H2

  Sn + 2HCl -> SnCl2 + H2

  Fe + H2SO4 -> FeSO4 + H2

  3Ca + 2H3PO4 -> Ca3(PO4)2 + 3H2

  2Na + H2SO4 -> Na2SO4 + H2

  2Na + 2HNO3 -> 2NaNO3 + H2

  2Al + 6HCl -> 2AlCl3 + 3H2

  Mg + 2HCl -> MgCl2 + H2

  2Na + 2HCl -> 2NaCl + H2

#}

########################################

#{

  2HCl + Ca(OH)2 -> CaCl2 + 2H2O
  2H(+) + 2Cl(-) + Ca(2+) + 2OH(-) -> Ca(2+) + 2Cl(-) + 2H2O
  H(+) + OH(-) -> H2O

  H2SO3 + 2KOH -> K2SO3 + 2H2O
  2H(+) + SO3(2-) + 2K(+) + 2OH(-) -> 2K(+) + SO3(2-) + 2H2O
  ^ line 1.3

  H2S + 2KOH -> K2S + 2H2O
  2H(+) + S(2-) + 2K(+) + 2OH(-) -> 2K(+) + S(2-) + 2H2O
  ^

  H3PO4 + 3NaOH -> Na3PO4 + 3H2O
  3H(+) + PO4(3-) + 3Na(+) + 3OH(-) -> 3Na(+) + PO4(3-) + 3H2O
  ^

  H2CO3 + 2KOH -> K2CO3 + 2H2O
  2H(+) + CO3(2-) + 2K(+) + 2OH(-) -> 2K(+) + CO3(2-) + 2H2O
  ^

  H2SO4 + 2KOH -> K2SO4 + 2H2O
  2H(+) + SO4(2-) + 2K(+) + 2OH(-) -> 2K(+) + SO4(2-) + 2H2O
  ^

  HCl + KOH -> KCl + H2O
  H(+) + Cl(-) + K(+) + OH(-) -> K(+) + Cl(-) + H2O
  ^

  HNO3 + LiOH -> LiNO3 + H2O
  H(+) + NO3(-) + Li(+) + OH(-) -> Li(+) + NO3(-) + H2O
  ^

  2NaOH + H2SO4 -> Na2SO4 + 2H2O
  2Na(+) + 2OH(-) + 2H(+) + SO4(2-) -> 2Na(+) + SO4(2-) + 2H2O

#}

########################################

# C4H8

# C2H6
mass = 2 * 12 + 6
# C : H = 24 : 6 = 4 : 1

# C6H12 & C4H8 & C5H10

# C4H10
cmass = 4 * 12; tmass = cmass + 10;
pmass = cmass / tmass * 100

# Butane - C4H10

# 2C4H10 + 13O2 -> 8CO2 + 10H2O
# 2C4H10 + 9O2 -> 8CO + 10H2O
# 2C4H10 + 5O2 -> 8C + 10H2O

# Saturated - C2H6 & CH4
# Unsaturated - C2H4 & C2H2

# Ethane Methane Ethene Ethyne

# C2H4 + Br2 -> CH2Br-CH2Br

# C2H4 + 3O2 -> 2CO2 + 2H2O

########################################

#{

  CH2=CH2 + HCl -> CH3-CH2Cl
  Chloroethane

  2C4H10 + 13O2 -> 8CO2 + 10H2O
  CO2 & CO & C

  CH|||C-CH3 + H2 -> CH2=CH-CH3
  CH2=CH-CH3 + Br2 -> CH3-CHBr-CH2Br

  C4H8
  CH2=CH-CH2-CH3
  Butene
  Unsaturated & Double Bond

  CH3-CH2-CH2-CH2-CH3
  Pentane

#}

########################################

#{

  C3H5(OH)3
  Propane-1,2,3-triol

  2CH3OH + 3O2 -> 2CO2 + 4H2O
  CH3OH + O2 -> CO + 2H2O
  2CH3OH + O2 -> 2C + 4H2O

  CH3-CH2-CH2-CH2-CH2-OH (pentanol)
  CH3-CH2-CH2-CH2-OH (butanol)

  CH3-CH2-OH (ethanol)

  C5H11OH
  ^ line 3.1

  2C3H7OH + 9O2 -> 6CO2 + 8H2O
  C3H7OH + 3O2 -> 3CO + 4H2O
  2C3H7OH + 3O2 -> 6C + 8H2O

  C3H5(OH)3
  C : H : O = 36 : 8 : 48 = 9 : 2 : 12

#}

########################################

cm = 6 * 12; tm = cm + 12 + 2 * 16;
pm = cm / tm * 100

#{

  2CH3COOH + CuO -> (CH3COO)2Cu + H2O
  Copper ethanoate (II)

  CH3COOH + NaOH -> CH3COONa + H2O
  H(+) + CH3COO(-) + Na(+) + OH(-) -> CH3COO(-) + Na(+) + H2O
  H(+) + OH(-) -> H2O

  CH3COOH -> H(+) + CH3COO(-)
  Ethanoate anion

  6HCOOH + Al2O3 -> 2(HCOO)3Al + 3H2O
  Methanoic acid

  CH3COOH
  C : H : O = 24 : 4 : 32 = 6 : 1 : 8

  2Na(46) + 2CH3COOH -> 2CH3COONa(164) + H2
  46 - 164

  CH3COOH -> H(+) + CH3COO(-)

  2HCOOH + 2Na -> 2HCOONa + H2

  Magnesium butanoate + Hydrogen

  C3H7COOH + O2 -> 4C + 4H2O

#}

# C3H7COOH
cmass = 4 * 12;
tmass = 2 * 16 + cmass + 8
pmass = cmass / tmass * 100

#{

  Acid, dissociation and H(+) ions
  HCOOH -> H(+) + HCOO(-)

  Colorless liquid doesn't dissolve in water
  No dissociation or red color

  CH3COOH -> CH3COO(-) + H(+)

  C8H17COOH
  C9H19COOH

  116 - 15(CH3) - 45(COOH) = 56
  56 / 14(CH2) = 4 (* CH2)
  CH3CH2CH2CH2CH2COOH = C5H11COOH

  Solution discoloration
  KOH + CH3COOH -> CH3COOK + H2O
  Acetic acid

  2CH3COOH + 2Na -> 2CH3COONa + H2
  Sodium ethanoate

#}

# CHOOH(46) + O2 -> CO2(44) + H2O
mass = 44 * 10 / 46

#{

  2CH3COOH + Mg -> (CH3COO)2Mg + H2
  (CH3COO)2Mg -> 2CH3COO(-) + Mg(2+)

  2C2H5COOH + 7O2 -> 6CO2 + 6H2O

#}

########################################

#{

  Ethyl acetate
  CH3COOH + C2H5OH -> CH3COOC2H5 + H2O

  Methyl formate
  HCOOH + CH3OH -> HCOOCH3 + H2O

  Ethanol & Water

  Acetic acid & ethanol

#}

########################################

#{

  Starch & Cellulose

  Glucose

  Dark blue color - starch

  (C6H10O5)n + nH2O (enzymes + HCl)-> C6H12O6

#}

########################################

