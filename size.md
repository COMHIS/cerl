---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-17"
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

Document size (area) info in area is available for 5928 documents (33%). Estimates of document size (area) info in gatherings system are available for 18212 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 8144 documents and updated (changed) for 45 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |                 2.00|                    2.0|          11|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2fo           |               304.55|                  136.0|         571|             1124.42|               1124.42|         14|            23.72|               22.0|      72|
|4long         |                  NaN|                     NA|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|4to           |                96.41|                   24.0|        1420|               82.08|                 24.00|          6|            24.41|               24.0|     998|
|8vo           |               224.48|                  161.5|        1807|              259.46|                264.25|         27|            25.95|               24.5|     294|
|12mo          |               302.82|                  274.0|         219|              153.25|                170.00|          8|            35.11|               36.0|       9|
|16mo          |               334.69|                  289.5|          29|                  NA|                    NA|         NA|            30.00|               30.0|       2|
|18mo          |               211.00|                  191.0|           9|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|24mo          |               371.00|                  371.0|           3|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|32mo          |                32.00|                   32.0|           1|                  NA|                    NA|         NA|            32.00|               32.0|       1|
|64mo          |               128.00|                  128.0|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|NA            |                 -Inf|                   96.0|       14129|              382.35|                404.00|        512|            24.49|               23.0|    2022|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original |mean.width |median.width |mean.height |median.height |  n|
|:-------------------|:----------|:------------|:-----------|:-------------|--:|

