
# Pick info sheet for Shakespeare & Cervantes
my.authors <- c("Shakespeare, William (1564-1616)", "Cervantes Saavedra, Miguel De (1547-1616)")

for (my.author in my.authors) {

  df <- df.preprocessed %>%
    dplyr::filter(author %in% my.author) %>%
    dplyr::select(cerl_control_number = original_row, title, publication_year, language, 
                  publication_place, country, publisher) %>%
    dplyr::arrange(cerl_control_number, title, publication_year, language,
                   publication_place, country, publisher)

  write.table(df, file = paste(output.dir, gsub(" ", "_", my.author), "_cerl.csv", sep = ""), quote = F, row.names = F, sep = "|")

}



