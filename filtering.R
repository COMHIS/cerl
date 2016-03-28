# For testing purposes, just take a subset of the data
set.seed(34)
df.orig <- df.orig[sample(nrow(df.orig), 1e5), ]
print(paste("Total documents:", nrow(df.orig)))

