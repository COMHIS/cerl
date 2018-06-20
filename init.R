# Load packages
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
library(devtools)

# I/O definitions
output.folder <- "output.tables/"
# Create the output directory if not yet exists
dir.create(output.folder)

fs <- list.files("data/unified/", full.names = TRUE, pattern = ".csv.gz")
catalog <- "cerl"
datafile      <- "data/unified/polished/df.Rds"
datafile.orig <- "data/unified/polished/df.raw.Rds"

# Summary info
author <- "Leo Lahti"
ntop <- 20

# Set global parameters
# timespan <- c(1460, 1830)

# Languages to consider in cleanup.
# TODO: recognize the necessary languages automatically ?
languages <- c("english")

# FIXME: does not work if this is on
# update.fields <- "publication_place"
update.fields <- NULL

# Remove selected fields (almost empty and hence rather uninformative)
ignore.fields <- c("publication_frequency", "publication_interval") # CERL

# ---------------------------------


