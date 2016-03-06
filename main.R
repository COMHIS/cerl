# I/O definitions
# Data dir
ddir <- "~/data/CERL/preprocessed"
output.folder <- "output.tables/"

# —--------------------------------------------

# Initialize and read raw data
source("init.R")

reload.data <- FALSE
source("read.rawdata.R")

# ---------------------------------------------

# Selected subsets of the raw data
source("filtering.R") # -> df.orig

# -----------------------------------------------

# Preprocess raw data
source("preprocessing.R") # -> df.preprocessed
load("df.preprocessed.RData")

# Validating and fixing fields
source("validation.R")

# Enrich the data
# (add missing information and augment with external data)
source("enrich.R") # df.preprocessed.RData

# Save the preprocessed data
print("Saving updates on preprocessed data")
saveRDS(df.preprocessed, file = "cerl.Rds", compress = TRUE)
# df.preprocessed <- readRDS("cerl.Rds")

# Summarize the data and discarded entries
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# Analyze the preprocessed data
source("analysis.R")

# Test map visualizations
# source("map.R")




