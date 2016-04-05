---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-04-04"
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

Document size (area) info in area is available for 1796036 documents (33%). Estimates of document size (area) info in gatherings system are available for 5462580 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is originally missing but subsequently estimated for 3143275 documents and updated (changed) for 7608 documents. 


![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|2fo           |               429.00|                 441.00|         104|              421.34|                441.00|       4427|            22.15|               22.0|   93467|
|4to           |                19.61|                  16.00|         132|              129.99|                 16.00|      16646|            16.52|               16.0|  235411|
|8vo           |               371.10|                 372.00|         211|              358.93|                372.00|      16808|            21.59|               16.0|   55244|
|12mo          |               366.00|                 366.00|          24|              355.11|                366.00|       2176|            22.84|               20.0|    7539|
|16mo          |               410.00|                 410.00|           5|              381.79|                410.00|        240|            23.09|               20.0|     852|
|18mo          |               613.50|                 613.50|           1|              599.44|                613.50|         84|            21.99|               19.0|     429|
|NA            |               335.61|                 345.67|        1500|              331.92|                345.67|     138348|            19.53|               19.0| 2760693|
|2long         |                   NA|                     NA|          NA|               19.50|                 19.50|          1|            20.52|               19.5|      56|
|4long         |                   NA|                     NA|          NA|               35.22|                 21.00|         16|            21.41|               21.0|     199|
|12long        |                   NA|                     NA|          NA|             1052.50|               1052.50|          2|            20.50|               16.0|       6|
|24long        |                   NA|                     NA|          NA|              658.00|                658.00|          1|            28.00|               28.0|       1|
|24mo          |                   NA|                     NA|          NA|              490.01|                549.50|         34|            22.77|               20.0|     150|
|8long         |                   NA|                     NA|          NA|                  NA|                    NA|         NA|            13.00|               13.0|       1|
|20to          |                   NA|                     NA|          NA|                  NA|                    NA|         NA|            34.50|               34.5|       2|
|32mo          |                   NA|                     NA|          NA|                  NA|                    NA|         NA|            23.35|               21.5|      48|
|48mo          |                   NA|                     NA|          NA|                  NA|                    NA|         NA|            14.50|               14.5|       2|
|64mo          |                   NA|                     NA|          NA|                  NA|                    NA|         NA|             8.00|                8.0|       1|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|     n|
|:-------------------|-----------:|-------------:|----------:|------------:|-----:|
|1to                 |    54.80779|      54.80779|  38.442857|    38.442857|   402|
|2fo                 |    32.86899|      32.86899|  23.824736|    23.824736| 11562|
|4to                 |    22.43735|      22.43735|  19.362162|    19.362162| 23343|
|8vo                 |    19.22826|      19.22826|  14.029825|    14.029825| 29211|
|12mo                |    16.07322|      16.07322|  11.166667|    11.166667|  9899|
|16mo                |    12.77661|      12.77661|   9.833333|     9.833333|   620|
|18mo                |    14.24000|      14.24000|   9.000000|     9.000000|   225|

