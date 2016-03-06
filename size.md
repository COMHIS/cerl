---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2016-03-06"
output: markdown_document
---


## Page counts

[Page conversions from raw data to final page count estimates](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_conversion_nontrivial.csv)

<!--[Page conversions from raw data to final page count estimates with volume info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/page_conversion_table_full.csv)-->

[Discarded pagecount info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/pagecount_discarded.csv)



## Document size comparisons

[Dimension conversion table](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/conversions_physical_dimension.csv)

<!--[Discarded dimension info](https://raw.githubusercontent.com/rOpenGov/estc/master/inst/examples/output.tables/dimensions_discarded.csv)-->

Document size (area) info in area is available for 1751968 documents (33%). Estimates of document size (area) info in gatherings system are available for 5289665 documents (100%). 

![plot of chunk summarysize](figure/summarysize-1.png)


Compare gatherings and area sizes as a quality check. This includes all data; the area has been estimated from the gatherings when dimension information was not available.

![plot of chunk summarysizecomp](figure/summarysizecomp-1.png)

Document dimension histogram (surface area). Few document sizes dominate publishing.

![plot of chunk summary-surfacearea](figure/summary-surfacearea-1.png)


Compare gatherings and page counts. Page count information is estimated for 0 documents and updated (changed) for 0 documents. 

![plot of chunk summarypagecomp](figure/summarypagecomp-1.png)

Compare original gatherings and original heights where both are available. The point size indicates the number of documents with the corresponding combination. The red dots indicate the estimated height that is used when only gathering information is available. It seems that in most documents, the given height is smaller than the correponding estimate.

![plot of chunk summarysizevalidation](figure/summarysizevalidation-1.png)

### Gatherings timelines

![plot of chunk papercompbyformat](figure/papercompbyformat-1.png)

## Average page counts 

Multi-volume documents average page counts are given per volume.


|doc.dimension | mean.pages.singlevol| median.pages.singlevol| n.singlevol| mean.pages.multivol| median.pages.multivol| n.multivol| mean.pages.issue| median.pages.issue| n.issue|
|:-------------|--------------------:|----------------------:|-----------:|-------------------:|---------------------:|----------:|----------------:|------------------:|-------:|
|1to           |           372.152012|                  116.0|        2584|                  NA|                    NA|         NA|         23.40741|               23.5|      54|
|2long         |           307.473684|                   36.0|          80|                  NA|                    NA|         NA|         27.11111|               32.0|       9|
|2fo           |                 -Inf|                  116.0|      163639|            390.3662|                441.00|        587|         22.86128|               20.0|   14360|
|4long         |           167.046784|                   79.0|         315|             66.5000|                 66.50|          5|         23.04167|               25.0|      48|
|4to           |                 -Inf|                  252.0|      425830|            439.4662|                488.50|       4436|         19.24273|               16.0|   37231|
|6to           |           434.800000|                  320.0|          19|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|8long         |           135.352941|                    4.0|          50|                  NA|                    NA|         NA|         13.00000|               13.0|       1|
|8vo           |                 -Inf|                  118.0|      534128|            373.2755|                372.00|       3076|         21.58982|               16.0|   54868|
|12long        |           297.947368|                   92.0|          31|           1052.5000|               1052.50|          1|         20.50000|               16.0|       6|
|12mo          |                 -Inf|                  104.0|       68735|            414.7272|                366.00|        319|         22.85625|               20.0|    7478|
|16long        |           516.000000|                  516.0|           1|                  NA|                    NA|         NA|               NA|                 NA|      NA|
|16mo          |                 -Inf|                  101.5|        8070|            451.1158|                410.00|         19|         23.05742|               20.0|     836|
|18mo          |                 -Inf|                   48.0|        3899|            643.7500|                674.75|         10|         22.17703|               20.0|     418|
|20to          |           199.333333|                   40.0|           7|                  NA|                    NA|         NA|         40.00000|               40.0|       1|
|24long        |           411.583333|                  257.5|          18|            658.0000|                658.00|          1|         28.00000|               28.0|       1|
|24mo          |           228.129323|                   96.0|        1395|            441.0000|                549.50|          4|         22.87248|               20.0|     149|
|32mo          |           167.071006|                   64.0|         416|                  NA|                    NA|         NA|         23.00000|               21.0|      47|
|48mo          |           212.833333|                   51.0|          20|                  NA|                    NA|         NA|         14.50000|               14.5|       2|
|64mo          |             8.914286|                    3.0|          56|                  NA|                    NA|         NA|          8.00000|                8.0|       1|
|NA            |                 -Inf|                  128.0|     4078446|            365.8008|                351.00|      16766|         23.31769|               20.0|  330961|


![plot of chunk summarypagecountsmulti2](figure/summarypagecountsmulti2-1.png)


## Average document dimensions 

Here we use the original data only:


```
## Error in eval(expr, envir, enclos): object 'mean.height.original' not found
```

![plot of chunk summaryavedimstime](figure/summaryavedimstime-1.png)




Only cases with 2000 documents are listed here:


|gatherings.original | mean.height| median.height| mean.width| median.width|      n|
|:-------------------|-----------:|-------------:|----------:|------------:|------:|
|1to                 |    54.49215|      54.49215|   38.06803|     38.06803|    399|
|2fo                 |    32.74235|      32.74235|   23.66726|     23.66726|  11208|
|4to                 |    22.40609|      22.40609|   19.32065|     19.32065|  22869|
|8vo                 |    19.21365|      19.21365|   14.00903|     14.00903|  28417|
|12mo                |    16.06897|      16.06897|   11.16860|     11.16860|   9571|
|16mo                |    12.73671|      12.73671|    9.78000|      9.78000|    602|
|18mo                |    14.24107|      14.24107|    9.00000|      9.00000|    224|
|NA                  |    23.13182|      23.13182|   27.67702|     27.67702| 542250|

