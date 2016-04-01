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

Document size (area) info in area is available for 2967 documents (32%). Estimates of document size (area) info in gatherings system are available for 9223 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is estimated for 0 documents and updated (changed) for 15 documents. 

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|2fo           |            109.49301|                   51.0|         295|                  NA|                    NA|         NA|         21.17778|                 22|      45|
|4long         |                  NaN|                     NA|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|4to           |             95.16997|                   23.0|         706|             53.0000|                    23|         18|         23.17410|                 23|     471|
|8vo           |            183.02426|                   92.0|         915|            503.0000|                   503|         21|         25.85000|                 25|     120|
|12mo          |                 -Inf|                  110.0|         124|                  NA|                    NA|         NA|         20.69231|                 15|      13|
|16mo          |            226.94444|                  238.0|          18|                  NA|                    NA|         NA|         16.75000|                 14|       4|
|18mo          |            255.50000|                  255.5|           2|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|24mo          |            146.00000|                  146.0|           2|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|64mo          |            526.00000|                  526.0|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|NA            |                 -Inf|                   84.0|        7150|            481.6147|                   503|        206|         23.37908|                 22|     889|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|   n|
|:-------------------|-----------:|-------------:|----------:|------------:|---:|
|NA                  |    23.44573|      23.44573|   28.10385|     28.10385| 901|

