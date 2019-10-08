# Creating initial Shakespeare/Cervantes data for manual checking
source("Shakespeare_data.R")
# source("analysis.init.R")

# -----------------------------------------

# Read the manually polished data
# source("Shakespeare.init.R")
#(my.authors, tabc, tabs, df.preprocessed, file =
load("Shakespeare400.RData")

# ------------------------------------------

# Summary documentk
knit("Shakespeare.Rmd")

# Cervantes: Don Quixote, erityisesti CERL:
#- miten teosta julkaistiin eri maissa eri aikoina?
#- Don Quixoten julkaisemisen vertaaminen koko Euroopassa Shakespeareen

# Shakespeare
#- CERL: yhdistetään kaikki muualla kuin englanninkielisellä
#  julkaistut teokset alkuperäisiin ja katsoa sitä kartalla.

