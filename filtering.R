# For testing purposes, just take a subset of the data
set.seed(34)
df.orig <- df.orig[1:1000, ]
print(paste("Total documents:", nrow(df.orig)))

