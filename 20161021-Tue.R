source("analysis.init.R")

# Pick documents with Cicero match for author field
# Also look at: ‘Marcus' and ‘Tullius.’ Cicero is of course not the
# only author to go under these names, but it was quite common to refer
# to him as Tullius or Tully, and just Marcus might be a reference to
# him as well. So if you could send me a list of the publications
# registered under these author names, I would be very grateful.


inds <- unique(
        c(grep("Cic.ro", df.preprocessed$author), 
     	  grep("Tullius", df.preprocessed$author),
     	  grep("Tully", df.preprocessed$author),
     	  grep("Tulio", df.preprocessed$author)	  
	  ))

df.cicero <- df.preprocessed[inds,]

write.table(df.cicero, sep = "\t", file = paste("CERL-Cicero-", gsub(" ", "-", format(Sys.time(), "%b %d %Y")), ".csv", sep = ""), quote = FALSE, row.names = FALSE)

