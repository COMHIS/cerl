---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-01"
output: markdown_document
---


## Page counts

[Page conversions from raw data to final page count estimates](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/page_conversion_table_full.csv)-->

[Discarded pagecount info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_discarded.csv)



## Document size comparisons

[Incomplete dimension info - document surface are could not be estimated](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/physical_dimension_incomplete.csv)

[Dimension conversion table](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/conversions_physical_dimension.csv)


<!--[Discarded dimension info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/dimensions_discarded.csv)-->

Document size (area) info in area is available for 29758 documents (33%). Estimates of document size (area) info in gatherings system are available for 91010 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is estimated for 0 documents and updated (changed) for 141 documents. 

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |               2.0000|                      2|          16|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2fo           |                 -Inf|                     80|        2835|           494.65000|                 519.5|         82|         22.88204|               24.0|     373|
|4long         |             138.2500|                     18|           4|                  NA|                    NA|         NA|         18.00000|               18.0|       2|
|4to           |                 -Inf|                     24|        7123|            85.51103|                  24.0|        139|         23.94809|               24.0|    4662|
|6to           |                  NaN|                     NA|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|8vo           |                 -Inf|                     88|        9072|           476.98370|                 503.0|        189|         26.04340|               26.0|    1152|
|12long        |             439.0000|                    439|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|12mo          |                 -Inf|                     91|        1127|           497.48000|                 503.0|         30|         24.33333|               24.0|     162|
|16mo          |             207.7801|                    144|         146|                  NA|                    NA|         NA|         21.35294|               16.0|      17|
|18mo          |             202.9180|                    159|          62|                  NA|                    NA|         NA|         29.00000|               32.0|       6|
|24long        |              14.0000|                     14|           1|                  NA|                    NA|         NA|         14.00000|               14.0|       1|
|24mo          |             141.0000|                     92|          21|                  NA|                    NA|         NA|         13.50000|               13.5|       2|
|32mo          |             533.2000|                    510|           5|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|64mo          |             526.0000|                    526|           2|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|NA            |                 -Inf|                     85|       70528|           483.56674|                 503.0|       1972|         22.82731|               22.0|    8715|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|    n|
|:-------------------|-----------:|-------------:|----------:|------------:|----:|
|2fo                 |    32.37778|      32.37778|   25.33333|     25.33333|  180|
|4to                 |    22.30303|      22.30303|   18.50000|     18.50000|  396|
|8vo                 |    19.30221|      19.30221|   12.25000|     12.25000|  498|
|NA                  |    23.24347|      23.24347|   28.13366|     28.13366| 9329|

