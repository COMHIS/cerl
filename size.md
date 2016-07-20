---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-21"
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

Document size (area) info in area is available for 1796036 documents (33%). Estimates of document size (area) info in gatherings system are available for 5462580 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 2466767 documents and updated (changed) for 9224 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |                   NA|                     NA|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2long         |               122.00|                 122.00|          13|               61.00|                 61.00|          1|               NA|                 NA|      NA|
|2fo           |              1326.41|                 941.00|        4875|              457.00|                467.67|       3845|               18|                 18|       1|
|4long         |                  NaN|                     NA|           9|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|4to           |               215.91|                  68.00|        2611|               77.95|                 34.00|       2144|               34|                 34|     411|
|6to           |                  NaN|                     NA|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|8long         |                  NaN|                     NA|           6|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|8vo           |                 -Inf|                 709.67|        6639|              340.37|                354.83|       6049|               15|                 15|       1|
|12long        |                98.00|                  98.00|           1|               24.50|                 24.50|          1|               NA|                 NA|      NA|
|12mo          |               842.37|                 550.50|        2906|              270.82|                271.25|       2765|               NA|                 NA|      NA|
|16mo          |              1006.70|                 819.75|         225|              267.92|                273.25|        219|               45|                 45|       1|
|18mo          |               343.52|                 281.25|         205|               94.15|                 93.75|        191|               NA|                 NA|      NA|
|20to          |                  NaN|                     NA|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|24mo          |               807.05|                 765.75|          55|              266.07|                255.25|         47|               NA|                 NA|      NA|
|32mo          |               443.11|                 384.00|          19|              190.88|                192.00|         13|               NA|                 NA|      NA|
|NA            |                 -Inf|                 586.00|      199455|              283.81|                293.00|     142845|                8|                  8|   56322|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|     n|
|:-------------------|----------:|------------:|-----------:|-------------:|-----:|
|1to                 |      38.44|        38.44|       54.81|         54.81|   402|
|2fo                 |      23.82|        23.82|       32.87|         32.87| 11562|
|4to                 |      19.36|        19.36|       22.44|         22.44| 23343|
|8vo                 |      14.03|        14.03|       19.23|         19.23| 29211|
|12mo                |      11.17|        11.17|       16.07|         16.07|  9899|
|16mo                |       9.83|         9.83|       12.78|         12.78|   620|
|18mo                |       9.00|         9.00|       14.24|         14.24|   225|

