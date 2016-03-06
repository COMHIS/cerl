library(estc)
#source("../estc/R/mean_pagecounts_multivol.R")
#source("../estc/R/mean_pagecounts_issue.R")
#source("../estc/R/pagecount.R")

print("Average pagecounts")
mean.pagecounts.multivol <- mean_pagecounts_multivol(df.preprocessed) 
mean.pagecounts.univol <- mean_pagecounts_univol(df.preprocessed) 
mean.pagecounts.issue <- mean_pagecounts_issue(df.preprocessed) 
mean.pagecounts <- full_join(mean.pagecounts.univol, mean.pagecounts.multivol, by = "doc.dimension")
mean.pagecounts <- full_join(mean.pagecounts, mean.pagecounts.issue, by = "doc.dimension")
mean.pagecounts$doc.dimension <- factor(mean.pagecounts$doc.dimension, levels = levels(mean.pagecounts.univol$doc.dimension))



