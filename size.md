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

Document size (area) info in area is available for 1796036 documents (33%). Estimates of document size (area) info in gatherings system are available for 5462580 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 2453617 documents and updated (changed) for 14128 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |                 -Inf|                    2.0|         465|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|2long         |                80.43|                   41.0|          90|               39.92|                 36.00|         12|            34.49|               36.0|      47|
|2fo           |                 -Inf|                  128.0|      169519|              446.98|                460.00|       3833|            21.64|               17.0|   20967|
|4long         |                85.99|                   35.0|         340|               20.50|                 20.50|          9|            22.25|               20.5|     162|
|4to           |                 -Inf|                   24.0|      432835|               70.22|                 24.00|       2144|            24.26|               24.0|  298998|
|6to           |               181.36|                  120.5|          22|                  NA|                    NA|         NA|            38.00|               34.0|       3|
|8long         |               128.75|                   88.5|          57|                  NA|                    NA|         NA|            17.00|               17.5|       4|
|8vo           |                 -Inf|                  178.0|      547635|              338.93|                353.00|       6045|            26.55|               26.0|   77774|
|12long        |               259.71|                  202.0|          31|               24.50|                 24.50|          1|            38.00|               36.0|       3|
|12mo          |                 -Inf|                  260.0|       69972|              262.85|                270.25|       2839|            29.76|               28.0|    4653|
|16long        |               328.00|                  328.0|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|16mo          |                 -Inf|                  204.0|        8263|              270.97|                276.50|        219|            37.09|               48.0|    1396|
|18mo          |                 -Inf|                  219.0|        3978|               90.14|                 93.75|        205|            34.79|               36.0|     219|
|20to          |               355.86|                   36.0|           8|                  NA|                    NA|         NA|            22.50|               23.0|       4|
|24long        |               314.83|                  295.0|          18|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|24mo          |                 -Inf|                  264.0|        1424|              240.81|                257.25|         53|            31.40|               26.0|     102|
|32mo          |               198.34|                  160.0|         423|              190.88|                192.00|         13|            30.86|               32.0|      50|
|48mo          |               138.55|                   96.0|          20|                  NA|                    NA|         NA|            31.67|               32.0|       3|
|64mo          |               161.32|                  128.0|          56|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|NA            |                 -Inf|                   95.0|     4224290|              281.92|                292.00|     145647|            24.47|               23.0|  594017|


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

