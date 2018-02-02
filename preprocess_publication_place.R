# Preprocess publication_place field
field <- "publication_place"
place <- polish_place(df.orig[[field]], remove.unknown = FALSE)
df.preprocessed <- enrich_geo(place)

# Summarize the data and discarded entries
# This generates all summary tables that are linked at
# https://github.com/COMHIS/cerl/blob/master/publicationplace.md
tmp <- generate_summary_tables_geo(df.preprocessed, df.orig, output.folder)

# This can be modified at:
# bibliographica::inst/extdata/publicationplace.Rmd
# Sometimes we like to restricted the evaluated time period (see analysis.init.R)
# but for now, let's just do all
author <- "Leo Lahti"
ntop <- 20
sf <- generate_summaryfiles(df.preprocessed, df.orig, author = author, output.folder = output.folder, ntop = ntop, summaries = "publicationplace")

