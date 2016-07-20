library(devtools)
load_all("~/Rpackages/sorvi")
load_all("../bibliographica/")


library(lineprof)
#install_github("hadley/lineprof")
#l <- lineprof(polish_author(c("Leo Mikael Lahti 3", "Maisema", "von Magdenburg")))
l <- lineprof(polish_dimensions("40; 34; 42 cm (2\u00b0; 1/2\u00b0; 2\u00b0)"))
shine(l)

