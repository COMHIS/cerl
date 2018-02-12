source("init.R")

# ---------------------------------

print("Read the preprocessed data")
df <- readRDS(datafile)
df.orig <- readRDS(datafile.orig)

print("Year limits")
df.preprocessed <- filter(df, publication_year >=  min(timespan) & publication_year <= max(timespan))
rm(df)

