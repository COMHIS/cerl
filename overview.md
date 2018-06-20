---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2018-06-20"
output: markdown_document
---

# Preprocessing summary

The data spanning years 4-1987 has been included and contains 100000 documents (also other filter may apply depending on the data collection, see the source code for details.



## Specific fields

  * [Author info](author.md)
  * [Gender info](gender.md)
  * [Publisher info](publisher.md)
  * [Publication geography](publicationplace.md)
  * [Publication year info](publicationyear.md)
  * [Titles](title.md)  
  * [Page counts](pagecount.md)
  * [Physical dimension](dimension.md)    
  * [Document and subject topics](topic.md)
  * [Languages](language.md)


## Annotated documents

  * 6004893 documents in the original raw data
  * 100000 documents in the final preprocessed data (1.67%)

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name              | available (%)| available (n)| missing (%)| unique (n)|
|:-----------------------|-------------:|-------------:|-----------:|----------:|
|volnumber               |           0.0|             0|       100.0|          1|
|parts                   |           0.4|           378|        99.6|         21|
|publication_year_till   |           3.1|          3088|        96.9|        387|
|width.original          |           4.7|          4725|        95.3|        227|
|first_edition           |          13.2|         13190|        86.8|          3|
|author_age              |          33.2|         33219|        66.8|        156|
|obl                     |          35.0|         34995|        65.0|          3|
|height.original         |          43.9|         43892|        56.1|        294|
|author_gender           |          48.7|         48683|        51.3|          5|
|author_birth            |          54.1|         54091|        45.9|        691|
|author_death            |          54.9|         54928|        45.1|        700|
|paper                   |          59.8|         59804|        40.2|      13360|
|height                  |          60.1|         60063|        39.9|        296|
|area                    |          60.1|         60063|        39.9|        879|
|width                   |          60.1|         60077|        39.9|        235|
|self_published          |          76.7|         76653|        23.3|          2|
|author_name             |          76.9|         76859|        23.1|      29615|
|author                  |          76.9|         76859|        23.1|      30499|
|publication_country     |          79.3|         79319|        20.7|         42|
|pagecount.orig          |          83.3|         83273|        16.7|       1691|
|publisher               |          90.0|         90013|        10.0|      55722|
|publication_place       |          90.6|         90569|         9.4|       3550|
|publication_year_from   |          95.0|         95045|         5.0|        448|
|publication_year        |          95.4|         95378|         4.6|        453|
|publication_decade      |          95.4|         95378|         4.6|         71|
|volcount                |          99.3|         99279|         0.7|         68|
|dissertation            |          99.5|         99479|         0.5|          2|
|synodal                 |          99.5|         99479|         0.5|          2|
|pagecount               |          99.5|         99540|         0.5|       1720|
|pagecount.sheet         |         100.0|         99986|         0.0|        808|
|title                   |         100.0|         99999|         0.0|      89855|
|original_row            |         100.0|        100000|         0.0|     100000|
|language_count          |         100.0|        100000|         0.0|          9|
|multilingual            |         100.0|        100000|         0.0|          2|
|languages               |         100.0|        100000|         0.0|        630|
|language_primary        |         100.0|        100000|         0.0|         80|
|pagecount.multiplier    |         100.0|        100000|         0.0|          2|
|pagecount.squarebracket |         100.0|        100000|         0.0|        577|
|pagecount.plate         |         100.0|        100000|         0.0|        319|
|pagecount.arabic        |         100.0|        100000|         0.0|       1649|
|pagecount.roman         |         100.0|        100000|         0.0|        392|
|gatherings.original     |         100.0|        100000|         0.0|         12|
|obl.original            |         100.0|        100000|         0.0|          2|
|pagecount_from          |         100.0|        100000|         0.0|          4|
|author_pseudonyme       |         100.0|        100000|         0.0|          2|
|gatherings              |         100.0|        100000|         0.0|         16|
|singlevol               |         100.0|        100000|         0.0|          2|
|multivol                |         100.0|        100000|         0.0|          2|
|issue                   |         100.0|        100000|         0.0|          2|

```
##             used   (Mb) gc trigger   (Mb)  max used   (Mb)
## Ncells   9711635  518.7   19336444 1032.7  19336444 1032.7
## Vcells 206418634 1574.9  324168804 2473.3 408275449 3114.9
```


## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

Brief description of the fields:

 * [Description of the original MARC fields](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/fieldnames.csv)

 * [Description of the preprocessed fields](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/fieldnames_polished.csv)


## Histograms of all entries for numeric variables


```
## Error in freq && !equidist: invalid 'x' type in 'x && y'
```


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.




