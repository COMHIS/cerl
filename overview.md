---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2019-10-09"
output: markdown_document
---

# Preprocessing summary

The data spanning years 1460-1830 has been included and contains 5406372 documents (also other filter may apply depending on the data collection, see the source code for details.



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
  * 5406372 documents in the final preprocessed data (90.03%)

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name              | available (%)| available (n)| missing (%)| unique (n)|
|:-----------------------|-------------:|-------------:|-----------:|----------:|
|volnumber               |           0.1|          3140|        99.9|         38|
|parts                   |           0.1|          6417|        99.9|         58|
|width.original          |           1.1|         61515|        98.9|        859|
|publication_year_till   |           3.9|        213246|        96.1|        551|
|height.original         |          11.6|        626943|        88.4|       1121|
|first_edition           |          26.2|       1416575|        73.8|          3|
|obl                     |          26.4|       1426290|        73.6|          3|
|author_age              |          31.5|       1704965|        68.5|        454|
|paper                   |          32.5|       1755493|        67.5|      45166|
|area                    |          32.7|       1768271|        67.3|       5870|
|height                  |          32.7|       1768276|        67.3|       1116|
|width                   |          32.7|       1768294|        67.3|        859|
|author_death            |          45.7|       2468155|        54.3|       1039|
|author_birth            |          46.2|       2496886|        53.8|       1198|
|author_gender           |          46.9|       2536196|        53.1|          5|
|pagecount.orig          |          62.7|       3387611|        37.3|       3915|
|self_published          |          68.2|       3685276|        31.8|          3|
|author_name             |          71.1|       3841475|        28.9|     547391|
|author                  |          71.1|       3841478|        28.9|     583071|
|publisher               |          74.7|       4040779|        25.3|    1152580|
|publication_country     |          75.3|       4069349|        24.7|         61|
|publication_place       |          89.2|       4821275|        10.8|      52326|
|dissertation            |          96.6|       5221289|         3.4|          3|
|synodal                 |          96.6|       5221289|         3.4|          2|
|publication_year_from   |          99.4|       5376531|         0.6|        372|
|pagecount               |          99.6|       5385362|         0.4|       3926|
|volcount                |          99.7|       5389871|         0.3|        226|
|title                   |         100.0|       5404479|         0.0|    4233855|
|pagecount.sheet         |         100.0|       5405234|         0.0|       2318|
|obl.original            |         100.0|       5406370|         0.0|          3|
|original_row            |         100.0|       5406372|         0.0|    5406372|
|language_count          |         100.0|       5406372|         0.0|         13|
|multilingual            |         100.0|       5406372|         0.0|          2|
|languages               |         100.0|       5406372|         0.0|       3793|
|language_primary        |         100.0|       5406372|         0.0|        226|
|pagecount.multiplier    |         100.0|       5406372|         0.0|          2|
|pagecount.squarebracket |         100.0|       5406372|         0.0|       1497|
|pagecount.plate         |         100.0|       5406372|         0.0|        784|
|pagecount.arabic        |         100.0|       5406372|         0.0|       5583|
|pagecount.roman         |         100.0|       5406372|         0.0|       1085|
|gatherings.original     |         100.0|       5406372|         0.0|         20|
|pagecount_from          |         100.0|       5406372|         0.0|          4|
|author_pseudonyme       |         100.0|       5406372|         0.0|          2|
|publication_year        |         100.0|       5406372|         0.0|        371|
|publication_decade      |         100.0|       5406372|         0.0|         38|
|gatherings              |         100.0|       5406372|         0.0|         23|
|singlevol               |         100.0|       5406372|         0.0|          2|
|multivol                |         100.0|       5406372|         0.0|          2|
|issue                   |         100.0|       5406372|         0.0|          2|

```
##             used   (Mb) gc trigger    (Mb)   max used    (Mb)
## Ncells  13192979  704.6   38298658  2045.4   38298658  2045.4
## Vcells 487657016 3720.6 1523366972 11622.4 1521358742 11607.1
```


## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

Brief description of the fields:

 * [Description of the original MARC fields](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/fieldnames.csv)

 * [Description of the preprocessed fields](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/fieldname_table.csv)


## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-19.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-20.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-21.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-22.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-23.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-24.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-25.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />


## Histograms of the top entries for factor variables

Non-trivial factors with at least 2 levels are shown.




