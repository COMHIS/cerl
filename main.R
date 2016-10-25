library(devtools)
# load_all("~/Rpackages/bibliographica")

# I/O definitions
output.folder <- "output.tables/"

fs <- list.files("data/cerl", full.names = TRUE, pattern = ".csv")
catalog <- "cerl"

# Languages to consider in cleanup.
# TODO: recognize the necessary languages automatically ?
languages <- c("english")

# Cores
mc.cores <- 1 # Some problems occur with multiple cores

# FIXME: does not work if this is on
# update.fields <- "publication_place"
update.fields <- NULL

# Remove selected fields (almost empty and hence rather uninformative)
ignore.fields <- c("publication_frequency", "publication_interval") # CERL

# ----------------------------------------------------
#            LOAD DATA FOR PREPROCESSING
# ----------------------------------------------------

# Initialize and read raw data
reload.data <- FALSE
source(system.file("extdata/init.R", package = "bibliographica"))
df.orig <- load_initial_datafile(fs, ignore.fields, reload.data)

# Selected subsets of the raw data
check <- "filtering"
# source("filtering.R") 
# df.orig <- df.orig[1:1e5, ]

data.preprocessing <- get_preprocessing_data(df.orig, 
                                             update.fields,
                                             ignore.fields)

# ----------------------------------------------------
#           PREPROCESS DATA
# ----------------------------------------------------

# Preprocess raw data
check <- "preprocess1"
source(system.file("extdata/preprocessing.R", package = "bibliographica"))
data.preprocessed <- preprocess_data(data.preprocessing, 
                                     df.orig,
                                     languages, 
                                     mc.cores = mc.cores)
# rm(data.preprocessing)
# df.preprocessed <- readRDS("df0.Rds")

# ----------------------------------------------------
#           VALIDATE PREPROCESSED DATA
# ----------------------------------------------------

source(system.file("extdata/validation.R", package = "bibliographica"))
data.validated <- validate_preprocessed_data(data.preprocessed)
# rm(data.preprocessed)

# -----------------------------------------------------
#           ENRICH VALIDATED DATA
# ----------------------------------------------------

check <- "enrich"
source(system.file("extdata/enrich.R", package = "bibliographica"))
data.enriched <- enrich_preprocessed_data(data.validated, df.orig)
rm(data.validated)

df.preprocessed <- data.enriched$df.preprocessed

# ----------------------------------------------------

# dim.estimates not visible... copied from df.preprocessed
dim.orig <- df.preprocessed[, c("gatherings.original", "width.original", "height.original", "obl.original")]
names(dim.orig) <- gsub("\\.original$", "", names(dim.orig))

library(dplyr)
# Mean dimensions for each gatherings
dim.estimates <- dim.orig %>%
  group_by(gatherings, obl) %>%
  summarize(
            mean.width = mean(width, na.rm = TRUE),
            mean.height = mean(height, na.rm = TRUE),
            n = n()
            )


# source("enrich.cerl.R") # not found - was there something earlier ? / LL
write.table(dim.estimates, sep = ",", row.names = F, file = paste(output.folder, "sheetsize_means.csv", sep = "/"), quote = FALSE)

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
