# For testing purposes, just take a subset of the data

#set.seed(34)
#df.orig <- df.orig[1:1000, ]
#print(paste("Total documents:", nrow(df.orig)))

df.orig <- df.orig %>% filter(!is.na(publication_time)) %>%
                  filter(!is.na(language)) %>%
                  filter(!is.na(publication_place)) %>%
                  filter(!is.na(physical_extent)) %>%
                  filter(!is.na(physical_dimension)) 		  

