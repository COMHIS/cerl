library(devtools)
#load_all("~/proj/2014-Aatelouhinta/bibliographica")

# I/O definitions
fs <- list.files("~/data/CERL/preprocessed", full.names = TRUE, pattern = ".csv")
output.folder <- "output.tables/"
catalog <- "cerl"

# Languages to consider in cleanup.
# TODO: recognize the necessary languages automatically ?
languages <- c("english")

# Remove selected fields (almost empty and hence rather uninformative)
ignore.fields <- c("publication_frequency", "publication_interval") # CERL
update.fields = "publication_place"

# —--------------------------------------------

# Initialize and read raw data
reload.data <- FALSE
mc.cores <- 1 # Try 3 next time
source(system.file("extdata/init.R", package = "bibliographica"))

# ---------------------------------------------

# Selected subsets of the raw data
check <- "filtering"
source("filtering.R") 

# -----------------------------------------------

# Preprocess raw data
check <- "preprocess1"
source(system.file("extdata/preprocessing.R", package = "bibliographica"))
#df.preprocessed <- readRDS("df0.Rds")

# -------------------------------------------------

# Validating and fixing fields
check <- "validation"
source(system.file("extdata/validation.R", package = "bibliographica"))

# -------------------------------------------------

check <- "enrich"
source(system.file("extdata/enrich.R", package = "bibliographica"))
<<<<<<< HEAD
source("enrich.cerl.R")

write.table(dim.estimates, sep = ",", row.names = F, file = paste(output.folder, "sheetsize_means.csv", sep = "/"), quote = FALSE)
=======
# write.table(dim.estimates, sep = ",", row.names = F, file = paste(output.folder, "sheetsize_means.csv", sep = "/"), quote = FALSE)
>>>>>>> 8959e8fb60df5bb53013b31c2cbee69c4462f2e7

# -------------------------------------------------

check <- "save"
print("Saving preprocessed data")
gc()
saveRDS(df.preprocessed, file = "df.Rds", compress = TRUE)
# df.preprocessed <- readRDS("df.Rds")

# --------------------------------------------------

# Analyze the preprocessed data
check <- "analysis"
source("analysis.R")

date()

# Test map visualizations
# source("map.R")
