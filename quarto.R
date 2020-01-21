nmin <- 2000
top.gatherings <- setdiff(names(which(table(df$gatherings.original) > nmin)), "NA")

df2 <- filter(df, !is.na(gatherings.original) & (!is.na(height.original) | !is.na(width.original))) %>%
       filter(gatherings.original %in% top.gatherings) %>%
       select(publication_decade, gatherings.original, height.original, width.original, publication_country)
       
df3 <- df2 %>% group_by(gatherings.original, publication_decade, publication_country) %>% 
       summarize(mean.height.original = mean(height.original, na.rm = T),
    	         mean.width.original  = mean(width.original, na.rm = T),
		 n = n())

# Select specific gatherings
sel.gatherings <- "4to"
  # .. and countries that have enough docs ..

# Pick top countries for this gathering
top.countries <- as.character(unname(unlist(df3 %>% filter(gatherings.original == "4to" & !is.na(publication_country)) %>% group_by(publication_country) %>% summarize(N = sum(n)) %>% arrange(desc(N)) %>% head(5)  %>% select(publication_country))))
#top.countries <- names(which(sort(sapply(split(df3$n, df3$publication_country), sum)) > 100))

#library(devtools)
#load_all("~/Rpackages/comhis")
# library(comhis)

mydf <- df3 %>% filter(gatherings.original == sel.gatherings & publication_country %in% top.countries)
p <- ggplot() + geom_point(data = mydf,
             aes(x = publication_decade,
	         y = mean.height.original,
		 size = n,
		 group = publication_country,
		 color = publication_country,
		 fill = publication_country		 
		 )) +
	   geom_smooth(data = mydf, method = "loess",
              aes(x = publication_decade,
	          y = mean.height.original,
		  color = publication_country,
		  fill = publication_country,		  
		  )) +
	   labs(x = "Decade",
	        y = "Mean height (cm)", 
	        title = paste0(map_gatherings(sel.gatherings), ": height")) +
           geom_hline(aes(yintercept = gatherings_size(sel.gatherings)$height), linetype = 2, size = 1) +
	   guides(fill = guide_legend(title = "Country"),
	          color = guide_legend(title = "Country")
	          ) + 
	   theme_comhis("discrete", base_size = 20)
print(p)

