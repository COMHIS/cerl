---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2018-02-10"
output: markdown_document
---

# Preprocessing summary

The data spanning years 1462-1830 has been included and contains 89423 documents (also other filter may apply depending on the data collection, see the source code for details.



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
  * 89423 documents in the final preprocessed data (1.49%)

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name              | available (%)| available (n)| missing (%)| unique (n)|
|:-----------------------|-------------:|-------------:|-----------:|----------:|
|volnumber               |           0.1|            85|        99.9|         15|
|parts                   |           0.3|           239|        99.7|         19|
|width.original          |           0.8|           716|        99.2|        187|
|publication_year_till   |           3.2|          2864|        96.8|        373|
|first_edition           |           9.3|          8330|        90.7|          3|
|obl                     |          20.0|         17852|        80.0|          3|
|author_age              |          24.7|         22107|        75.3|        138|
|height.original         |          30.9|         27598|        69.1|        225|
|paper                   |          38.4|         34299|        61.6|      10988|
|width                   |          38.5|         34427|        61.5|        195|
|height                  |          38.5|         34427|        61.5|        227|
|area                    |          38.5|         34427|        61.5|        482|
|author_death            |          41.1|         36718|        58.9|        657|
|author_birth            |          41.3|         36896|        58.7|        636|
|author_gender           |          41.5|         37110|        58.5|          5|
|self_published          |          61.6|         55071|        38.4|          2|
|author_name             |          63.7|         56977|        36.3|      26635|
|author                  |          63.7|         56977|        36.3|      27356|
|pagecount.orig          |          66.4|         59355|        33.6|       1579|
|publication_country     |          73.7|         65871|        26.3|         38|
|publisher               |          83.0|         74230|        17.0|      46632|
|publication_place       |          87.0|         77777|        13.0|       3407|
|dissertation            |          99.6|         89073|         0.4|          2|
|synodal                 |          99.6|         89073|         0.4|          2|
|pagecount               |          99.7|         89129|         0.3|       1588|
|volcount                |          99.8|         89225|         0.2|         53|
|publication_year_from   |          99.8|         89263|         0.2|        368|
|title                   |         100.0|         89386|         0.0|      83761|
|pagecount.sheet         |         100.0|         89411|         0.0|        709|
|language_count          |         100.0|         89423|         0.0|          8|
|multilingual            |         100.0|         89423|         0.0|          2|
|languages               |         100.0|         89423|         0.0|        444|
|language_primary        |         100.0|         89423|         0.0|         71|
|pagecount.multiplier    |         100.0|         89423|         0.0|          2|
|pagecount.squarebracket |         100.0|         89423|         0.0|        480|
|pagecount.plate         |         100.0|         89423|         0.0|        221|
|pagecount.arabic        |         100.0|         89423|         0.0|       1510|
|pagecount.roman         |         100.0|         89423|         0.0|        356|
|gatherings.original     |         100.0|         89423|         0.0|         12|
|obl.original            |         100.0|         89423|         0.0|          2|
|original_row            |         100.0|         89423|         0.0|      89423|
|pagecount_from          |         100.0|         89423|         0.0|          4|
|author_pseudonyme       |         100.0|         89423|         0.0|          2|
|publication_year        |         100.0|         89423|         0.0|        367|
|publication_decade      |         100.0|         89423|         0.0|         38|
|gatherings              |         100.0|         89423|         0.0|         16|
|singlevol               |         100.0|         89423|         0.0|          2|
|multivol                |         100.0|         89423|         0.0|          2|
|issue                   |         100.0|         89423|         0.0|          2|
|original_row1           |         100.0|         89423|         0.0|      89423|

```
##             used   (Mb) gc trigger   (Mb)  max used   (Mb)
## Ncells   9641860  515.0   14609022  780.3  14609022  780.3
## Vcells 206258810 1573.7  321966814 2456.5 263688517 2011.8
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




