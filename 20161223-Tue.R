source("analysis.init.R")

# False Cicero names to remove
not.cicero <- c("m. t.",
	        "m. t. c.",
	        "Cicero, Quintus Tullius",
	        "Cicero, Pietro",
		"Ciceromanus, Antonius",
		"Ciceronius, M T",
		"Victurius, Cicero",
		"Stullius, Johannes",
		"Stullius, Joannes",		
		"Catullius, Andreas",
		"Crispoltus, Tullius",
		"Hieranus, P Tullius and Tullius Hieranus",
		"Tullius, Vincentius",
		"Laurea, Tullius",
		"M’hugh, Tullius",
		"Binus, Tullius",
		"Bertulio, Fabrizio",
		"M")
		
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

# -----------------------------------------------

# From discarded
df.orig <- readRDS("df.raw.Rds")

a <- condense_spaces(tolower(df.orig$author_name))

# Recognize indices to discard
inds3 <- which(a %in% tolower(not.cicero))
# "Tully (All the authors with this as part of their name)",
inds4 <- c(grep("^tully", a), grep(", tully", a))

# Ids to discard
id <- df.orig[c(inds3, inds4), "original_row"]
id <- unlist(id, use.names = F)
inds5 <- which(df.preprocessed$original_row %in% id)
inds6 <- which(condense_spaces(tolower(df.preprocessed$author_name)) %in% tolower(not.cicero))

# -------------------------------------------

inds.cicero <- sort(unique(setdiff(inds, c(inds5, inds6))))

# -------------------------------------------

df.cicero <- df.preprocessed[inds.cicero,]

df.noncicero.authors <- sort(unique(df.preprocessed[-inds.cicero,"author"]))

write.csv(df.noncicero.authors, file = "author_not_cicero.csv", quote = F, row.names = F)

# ------------------------------

# Try to mark duplicates
id <- as.numeric(factor(unname(apply(df.cicero[, c("publication_year", "title")], 1, function (x) {paste(x, collapse = "_")}))))
df.cicero$duplicate_id <- id

# ------------------------------

write.table(df.cicero, sep = "\t", file = paste("CERL-Cicero-", gsub(" ", "-", format(Sys.time(), "%b %d %Y")), ".csv", sep = ""), quote = FALSE, row.names = FALSE)
