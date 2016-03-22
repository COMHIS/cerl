dfs <- df %>% group_by(author) %>% tally() %>% arrange(desc(n)) %>% filter(!is.na(author))

# ------------------------

write_xtable(df$author, file = "~/tmp/topauthors.csv")

# ------------------------


top.authors <- dfs$author[1:2]

dfs <- df %>% filter(author %in% top.authors) %>% group_by(country) %>% tally() %>% arrange(desc(n)) %>% filter(!is.na(country))
top.countries <- dfs$country[1:6]

dfs <- df %>% filter(author %in% top.authors & country %in% top.countries) %>% group_by(country, author, publication_decade) %>% tally() %>% arrange(publication_decade)

# -------------------------------

# Top-2 authors in their top-6 countries

theme_set(theme_bw(20))
pics <- list()
countries <- unique(dfs$country)
for (id in countries) {
  dfss <- dfs %>% filter(country == id) %>% group_by(author)

  dfss$author <- factor(dfss$author, levels = levels(dfs$author))

  pics[[id]] <- ggplot(dfss, aes(x = publication_decade, y = n, fill = author)) +
       geom_bar(stat = "identity", position = "stack", color = "black") +
       xlab("Publication Decade") +
       ylab("Title Count") +
       scale_fill_grey() +
       guides(fill = "none") +
       #guides(fill = guide_legend("Author")) 
       ggtitle(id) +
       xlim(c(range(dfs$publication_decade)))
}

library(gridExtra)
grid.arrange(pics[[1]], pics[[2]], pics[[3]],
	     pics[[4]], pics[[5]], pics[[6]], nrow = 2)


# ------------------------------


