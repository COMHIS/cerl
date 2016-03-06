print("Read raw data")
# Reading is slow, so save it as R object once ready
if (reload.data) {
  # List preprocessed data files
  # (for parsers for the original XML, see README)
  fs <- list.files(ddir, full.names = TRUE, pattern = ".csv")
  df.raw <- read_bibliographic_metadata(fs, verbose = TRUE)
  save(df.raw, file = "df.raw.RData", compress = "xz")
} else {
  load("df.raw.RData")
}

df.orig <- df.raw
rm(df.raw)



