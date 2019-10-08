---
title: "Document dimension preprocessing summary"
author: "Leo Lahti"
date: "2018-06-20"
output: markdown_document
---



## Document size comparisons

  * Some dimension info is provided in the original raw data for altogether 2680627 documents (100%) but could not be interpreted for 1470678 documents (ie. dimension info was successfully estimated for 45.1 % of the documents where this field was not empty).

  * Document size (area) info was obtained in the final preprocessed data for altogether 1564515 documents (58%). For the remaining documents, critical dimension information was not available or could not be interpreted: [List of entries where document surface could not be estimated](output.tables/physical_dimension_incomplete.csv)

  * Document gatherings info is originally available for 991904 documents (37%), and further estimated up to 1209949 documents (45%) in the final preprocessed data.

  * Document height info is originally available for 648600 documents (24%), and further estimated up to 1564520 documents (58%) in the final preprocessed data.

  * Document width info is originally available for 59323 documents (2%), and further estimated up to 1564538 documents (58%) in the final preprocessed data.


These tables can be used to verify the accuracy of the conversions from the raw data to final estimates:

  * [Dimension conversions from raw data to final estimates](output.tables/conversions_physical_dimension.csv)

  * [Automated tests for dimension conversions](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/tests_dimension_polish.csv)



The estimated dimensions are based on the following auxiliary information sheets:

  * [Document dimension abbreviations](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/document_size_abbreviations.csv)

  * [Standard sheet size estimates](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/sheetsizes.csv)

  * [Document dimension estimates](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/documentdimensions.csv) (used when information is partially missing)


  
<!--[Discarded dimension info](output.tables/dimensions_discarded.csv)-->

Left: final gatherings vs. final document dimension (width x height). Right: original gatherings versus original heights where both are available. The point size indicates the number of documents for each case. The red dots indicate the estimated height that is used when only gathering information is available. 


<img src="figure/dimension-summary-1.png" title="plot of chunk summary" alt="plot of chunk summary" width="280px" /><img src="figure/dimension-summary-2.png" title="plot of chunk summary" alt="plot of chunk summary" width="280px" /><img src="figure/dimension-summary-3.png" title="plot of chunk summary" alt="plot of chunk summary" width="280px" />


Left: Document dimension histogram (surface area);
Middle: Paper consumption histogram;
Right: title count per gatherings.

<img src="figure/dimension-sizes-1.png" title="plot of chunk sizes" alt="plot of chunk sizes" width="280px" /><img src="figure/dimension-sizes-2.png" title="plot of chunk sizes" alt="plot of chunk sizes" width="280px" /><img src="figure/dimension-sizes-3.png" title="plot of chunk sizes" alt="plot of chunk sizes" width="280px" />

### Gatherings timelines




Popularity of different document sizes over time. Left: absolute title counts. Right: relative title counts. Gatherings with less than 15 documents at every decade are excluded:



```
## NULL
```

```
## NULL
```


### Title count versus paper consumption



![plot of chunk title_vs_paper](figure/dimension-title_vs_paper-1.png)

<!--


## Average document dimensions 

Here we use the original data only:

![plot of chunk avedimstime](figure/dimension-avedimstime-1.png)




Only the most frequently occurring gatherings are listed here:


|gatherings.original | mean.width| median.width| mean.height| median.height|     n|
|:-------------------|----------:|------------:|-----------:|-------------:|-----:|
|1to                 |      40.42|        40.42|       57.87|         57.87|   376|
|2fo                 |      23.90|        23.90|       32.89|         32.89| 11874|
|4to                 |      19.43|        19.43|       22.44|         22.44| 23607|
|8vo                 |      14.01|        14.01|       19.22|         19.22| 29455|
|12mo                |      11.19|        11.19|       16.07|         16.07|  9956|
|16mo                |       9.57|         9.57|       12.76|         12.76|   630|
|18mo                |       9.00|         9.00|       14.23|         14.23|   227|

-->
