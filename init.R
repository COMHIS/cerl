# Load packages
library(devtools)
library(dplyr)
library(bibliographica)
library(sorvi)

# I/O definitions
output.folder <- "output.tables/"
# Create the output directory if not yet exists
dir.create(output.folder)

fs <- list.files("data/unified/", full.names = TRUE, pattern = ".csv.gz")
catalog <- "cerl"

# Summary info
author <- "Leo Lahti"
ntop <- 20

# Languages to consider in cleanup.
# TODO: recognize the necessary languages automatically ?
languages <- c("english")

# FIXME: does not work if this is on
# update.fields <- "publication_place"
update.fields <- NULL

# Remove selected fields (almost empty and hence rather uninformative)
ignore.fields <- c("publication_frequency", "publication_interval") # CERL
