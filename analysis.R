library(ggplot2)
library(tidyr)
library(dplyr)
library(stringr)
library(bibliographica)
library(estc)
library(magrittr)
library(sorvi)
library(reshape2)
library(gridExtra)
library(knitr)

# ---------------------------------

# Set global parameters
timespan <- c(1460, 1830)
datafile <- "cerl.Rds"
output.folder <- "output.tables/"

# ---------------------------------

print("Prepare the final data set")

# Read the preprocessed data
df <- readRDS(datafile)

# Year limits
df <- filter(df, publication_year >=  min(timespan) & publication_year <= max(timespan))
df.preprocessed.orig <- df

# ----------------------------------------

print("Generic summaries") # Markdown
df <- df.preprocessed <- df.preprocessed.orig
author <- "Leo Lahti"
sf <- generate_summaryfiles()

# ---------------------------------

system("git add -f figure/*.png")
# system("git add -f output.tables/*.csv")
system("git add output.tables/*.csv")
system("git commit -a -m'Rmd update'")
system("git push")
