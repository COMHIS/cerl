# Remove selected fields (almost empty and hence rather uninformative)
keep <- setdiff(names(df.orig), c("publication_frequency", "publication_interval"))
df.orig <- df.orig[, keep]

# Remove duplicated documents if any
df.orig <- df.orig[!duplicated(df.orig),] 

# For testing purposes, just take a subset of the data
set.seed(34)
#df.orig <- df.orig[sample(nrow(df.orig), 1e5), ]

print(paste("Total documents:", nrow(df.orig)))

