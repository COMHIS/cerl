# source("analysis.init.R")

# Pick selected documents
selected.authors <- c("Shakespeare, William (1564-1616)",
		      "Cervantes Saavedra, Miguel De (1547-1616)")

# Output file paths		      
author.outputs <- c()
for (selected.author in selected.authors) {

  # Generate markdown summaries
  f <- system.file("extdata/selected_author.Rmd", package = "bibliographica")  
  author.outputs[[selected.author]] <- knit(input = f,
       output = paste(gsub(" ", "_", selected.author), ".md", sep = ""),
       envir = globalenv())
}

# -------------------------------------------

knit("20160423-WorldBookDay.Rmd")