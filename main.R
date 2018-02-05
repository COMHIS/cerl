# TODO: move the script in the Gitlab repos so all in one place..
source("init.R")

# ----------------------------------------------------
#            LOAD DATA FOR PREPROCESSING
# ----------------------------------------------------

reload.data <- FALSE
if (!"df.raw.Rds" %in% dir("data/unified/polished")) {
  reload.data <- TRUE
}
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

preprocessed <- list()

# PREPROCESS GEODATA
source("preprocess_publication_place.R")

# Ideally, we would then rewrite the updates into the
# final data file. Have to think what's the best way..
# Update preprocessed data in the datafile
# FIXME: this step could be sped up with the
# rio/feather/data.table packages/tools
# update.mode <- "overwrite"
# f <- update_preprocessed_data_file(datafile, df.preprocessed, mode = update.mode)

# Remove these fields from further processing
data.preprocessing$update.fields <- setdiff(data.preprocessing$update.fields, c("publication_place"))

# ----------------------------------------------------
#           PREPROCESS DATA
# ----------------------------------------------------

# Preprocess raw data
check <- "preprocess1"
source(system.file("extdata/preprocessing.R", package = "bibliographica"))
data.preprocessed <- preprocess_data(data.preprocessing, 
                                     df.orig,
                                     languages)
rm(data.preprocessing)

# ----------------------------------------------------
#           VALIDATE PREPROCESSED DATA
# ----------------------------------------------------

check <- "validate"
library(bibliographica)
# data.preprocessed <- readRDS("data/unified/polished/df0.Rds")
data.validated <- validate_preprocessed_data(data.preprocessed)
rm(data.preprocessed)

# -----------------------------------------------------
#           ENRICH VALIDATED DATA
# ----------------------------------------------------

check <- "enrich"
# source("init.R")
data.enriched <- enrich_preprocessed_data(data.validated, df.orig)
rm(data.validated)

# Validate enriched data one more time
check <- "validate2"
data.validated2 <- validate_preprocessed_data(data.enriched)
df.preprocessed <- data.validated2$df.preprocessed
rm(data.validated2)

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

write.table(dim.estimates, sep = ",", row.names = F, file = paste(output.folder, "sheetsize_means.csv", sep = "/"), quote = FALSE)

# -------------------------------------------------

# Combine separately processed fields
df.preprocessed <- bind_cols(df.preprocessed, preprocessed$publication_place)

# --------------------------------------------------

check <- "save"
print("Saving preprocessed data")
gc()
saveRDS(df.preprocessed, file = "data/unified/polished/df.Rds", compress = TRUE)
rm(df.preprocessed)
# df.preprocessed <- readRDS("data/unified/polished/df.Rds")

# --------------------------------------------------

# Analyze the preprocessed data
check <- "analysis"
source("analysis.R")

date()

# Test map visualizations
# source("map.R")
