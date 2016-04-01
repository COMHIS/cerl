# I/O definitions
fs <- list.files("~/data/CERL/preprocessed", full.names = TRUE, pattern = ".csv")
output.folder <- "output.tables/"

# Remove selected fields (almost empty and hence rather uninformative)
ignore.fields <- c("publication_frequency", "publication_interval") # CERL

# —--------------------------------------------

# Initialize and read raw data
reload.data <- TRUE
source(system.file("extdata/init.R", package = "bibliographica"))

# ---------------------------------------------

# Selected subsets of the raw data
source("filtering.R") 

# -----------------------------------------------

# Preprocess raw data
source(system.file("extdata/preprocessing.R", package = "bibliographica"))
df.preprocessed <- readRDS("df0.Rds")

# -------------------------------------------------

# Validating and fixing fields
source(system.file("extdata/validation.R", package = "bibliographica"))

# -------------------------------------------------

source(system.file("extdata/enrich.R", package = "bibliographica"))
write.table(dim.estimates, sep = ",", row.names = F, file = paste(output.folder, "sheetsize_means.csv", sep = "/"), quote = FALSE)

# -------------------------------------------------

print("Saving preprocessed data")
saveRDS(df.preprocessed, file = "df.Rds", compress = TRUE)
# df.preprocessed <- readRDS("cerl.Rds")

# --------------------------------------------------

# Summarize the data and discarded entries
tmp <- generate_summary_tables(df.preprocessed, df.orig, output.folder)

# Analyze the preprocessed data
source("analysis.R")

# Test map visualizations
# source("map.R")




