# Read the final preprocessed ESTC data table
df <- read.csv(file = "cerl.csv", sep = "|")
output.folder <- "output.tables/"
mean.pagecounts <- read.csv(paste(output.folder, "mean_page_counts.csv", sep = ""))
# Order the levels where necessary
mean.pagecounts$doc.dimension <- order_gatherings(mean.pagecounts$doc.dimension)
#df$gatherings.original <- order_gatherings(df$gatherings.original)
df$gatherings <- order_gatherings(df$gatherings)



# To speed up, remove documents that are missing central information
# All documents are required to have data in these entries:
skip <- TRUE
if (!skip) {
  keyvariables <- c("author_name", "title",
	     	  "publication_place", "publication_time",
		  "physical_dimension", "physical_extent",
		  "publisher", "language")
  keep <- rowMeans(is.na(df.raw[, keyvariables])) == 0
  df.orig <- df.raw[keep, ]
}




print("List discarded pages")
source("list.discarded.pages.R")



#print("Print summary tables of page count and volume count conversions")
#source("summarize.page.conversions.R")
)
