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
ntop <- 20
author <- "Leo Lahti"

# Files
datafile <- "data/unified/polished/df.Rds"
datafile.orig <- "data/unified/polished/df.raw.Rds"
output.folder <- "output.tables/"

# ---------------------------------

print("Read the preprocessed data")
df <- readRDS(datafile)
df.orig <- readRDS(datafile.orig)

print("Year limits")
df.preprocessed <- filter(df, publication_year >=  min(timespan) & publication_year <= max(timespan))
rm(df)

