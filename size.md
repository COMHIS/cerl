---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-15"
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

Document size (area) info in area is available for 29758 documents (33%). Estimates of document size (area) info in gatherings system are available for 91010 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 40802 documents and updated (changed) for 248 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |                 2.00|                    2.0|          10|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2fo           |                 -Inf|                  130.0|        2843|              534.59|                563.25|         60|            21.18|               17.0|     370|
|4long         |                46.25|                   30.0|           4|                  NA|                    NA|         NA|            30.00|               30.0|       2|
|4to           |                91.22|                   24.0|        7126|              102.55|                 24.00|         32|            24.28|               24.0|    4933|
|6to           |               734.00|                  734.0|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|8vo           |                 -Inf|                  178.0|        9077|              274.46|                292.00|        112|            26.99|               28.0|    1338|
|12long        |                  NaN|                     NA|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|12mo          |               293.70|                  260.5|        1132|              166.10|                170.00|         39|            29.78|               26.5|      82|
|16mo          |               266.81|                  238.5|         146|                  NA|                    NA|         NA|            38.56|               48.0|      16|
|18mo          |              8860.48|                  239.0|          62|               44.50|                 44.50|          1|            44.50|               44.5|       2|
|24long        |               432.00|                  432.0|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|24mo          |               331.52|                  284.0|          21|                  NA|                    NA|         NA|            32.00|               32.0|       1|
|32mo          |               180.80|                  118.0|           5|                  NA|                    NA|         NA|            32.00|               32.0|       1|
|64mo          |               178.00|                  178.0|           2|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|NA            |                 -Inf|                   95.0|       70516|              290.11|                303.42|       2469|            24.27|               23.0|   10014|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|   n|
|:-------------------|----------:|------------:|-----------:|-------------:|---:|
|2fo                 |      25.33|        25.33|       32.38|         32.38| 180|
|4to                 |      18.50|        18.50|       22.30|         22.30| 396|
|8vo                 |      12.25|        12.25|       19.30|         19.30| 498|

