source("analysis.init.R")

# Pick documents with Cicero match for author field
# Also look at: ‘Marcus' and ‘Tullius.’ Cicero is of course not the
# only author to go under these names, but it was quite common to refer
# to him as Tullius or Tully, and just Marcus might be a reference to
# him as well. So if you could send me a list of the publications
# registered under these author names, I would be very grateful.

# Read identified variants of the Cicero name
nams <- tolower(as.vector(unlist(read.csv("cicero_variants.csv", header = F, sep = "\t"), use.names = F)))

# Pick the corresponding entry indices
inds <- c()
a <- condense_spaces(tolower(df.preprocessed$author))
for (nam in nams) {
  inds <- c(inds, grep(nam, a))
}
inds <- unique(inds)


# From discarded
df.orig <- readRDS("df.raw.Rds")
a <- condense_spaces(tolower(df.orig$author_name))
inds2 <- which(a %in% c("m. t.", "m. t. c."))
id <- df.orig[inds2, "original_row"]
id <- unlist(id, use.names = F)
inds3 <- which(df.preprocessed$original_row %in% id)

# -------------------------------------------

df.cicero <- df.preprocessed[c(inds, inds3),]

df.noncicero.authors <- sort(unique(df.preprocessed[-c(inds, inds3),"author"]))

write.csv(df.noncicero.authors, file = "author_not_cicero.csv", quote = F, row.names = F)

# ------------------------------

# Try to mark duplicates
id <- as.numeric(factor(unname(apply(df.cicero[, c("publication_year", "title")], 1, function (x) {paste(x, collapse = "_")}))))
df.cicero$duplicate_id <- id

# ------------------------------

write.table(df.cicero, sep = "\t", file = paste("CERL-Cicero-", gsub(" ", "-", format(Sys.time(), "%b %d %Y")), ".csv", sep = ""), quote = FALSE, row.names = FALSE)
