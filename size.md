---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-18"
output: markdown_document
---


## Page counts

[Page conversions from raw data to final page count estimates](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/page_conversion_table_full.csv)-->

[Discarded pagecount info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_discarded.csv)



## Document size comparisons

[Incomplete dimension info - document surface are could not be estimated](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/physical_dimension_incomplete.csv)

[Dimension conversion table](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/conversions_physical_dimension.csv)


These include estimates that are based on auxiliary information sheets:

  * [Document dimension abbreviations](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/document_size_abbreviations.csv)

  * [Standard sheet size estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/sheetsizes.csv)

  * [Document dimension estimates](https://github.com/rOpenGov/bibliographica/blob/master/inst/extdata/documentdimensions.csv) (used when information is partially missing)


  
<!--[Discarded dimension info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/dimensions_discarded.csv)-->

Document size (area) info in area is available for 149256 documents (33%). Estimates of document size (area) info in gatherings system are available for 454969 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 204623 documents and updated (changed) for 1190 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |                 1.91|                    2.0|          53|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2long         |                44.00|                   22.0|           4|                  NA|                    NA|         NA|            42.00|                 42|       1|
|2fo           |                 -Inf|                  127.5|       14122|              485.23|                490.00|        299|            21.46|                 17|    1714|
|4long         |                80.06|                   34.5|          34|                  NA|                    NA|         NA|            24.12|                 24|      16|
|4to           |                 -Inf|                   24.0|       35914|               82.77|                 24.00|        167|            24.26|                 24|   24853|
|6to           |               734.00|                  734.0|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|8long         |                 2.00|                    2.0|           2|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|8vo           |                 -Inf|                  180.0|       45693|              310.17|                325.00|        542|            26.71|                 27|    6482|
|12long        |               209.00|                  209.0|           3|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|12mo          |                 -Inf|                  262.0|        5904|              257.42|                266.00|        234|            30.25|                 28|     409|
|16mo          |                 -Inf|                  192.0|         689|              305.18|                321.25|         17|            37.29|                 48|     110|
|18mo          |                 -Inf|                  209.0|         308|               36.00|                 36.00|          1|            34.16|                 36|      19|
|24long        |               432.00|                  432.0|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|24mo          |              1983.10|                  276.0|         128|              291.50|                291.50|          4|            27.29|                 24|       7|
|32mo          |               197.64|                  154.0|          33|                  NA|                    NA|         NA|            31.75|                 32|       4|
|48mo          |               244.00|                  244.0|           2|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|64mo          |               175.27|                  128.0|          11|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|NA            |                 -Inf|                   95.0|      351773|              295.81|                310.00|      12299|            24.42|                 23|   49458|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|    n|
|:-------------------|----------:|------------:|-----------:|-------------:|----:|
|2fo                 |      23.68|        23.68|       32.74|         32.74|  945|
|4to                 |      20.40|        20.40|       22.46|         22.46| 1949|
|8vo                 |      13.64|        13.64|       19.32|         19.32| 2458|
|12mo                |      11.50|        11.50|       15.98|         15.98|  850|

