---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-03-06"
output: markdown_document
---

# Summary

Date:


```
## [1] "Sun Mar  6 15:12:26 2016"
```


## Specific fields

  * [Author info](author.md)
  * [Gender info](gender.md)
  * [Publisher info](publisher.md)
  * [Publication geography](publicationplace.md)
  * [Generic document info](documents.md)
  * [Document sizes](size.md)
  * [Document topics](topic.md)


## Field conversions

This documents the conversions from raw data to the final preprocessed version (accepted, discarded, conversions). Only some of the key tables are explicitly linked below. The complete list of all summary tables is [here](output.tables/).

## Annotated documents

Fraction of documents with entries:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Documents with data (number and percentage) and number of unique entries for each field:


|field_name            |    missing|   available|       n| unique_entries|
|:---------------------|----------:|-----------:|-------:|--------------:|
|volnumber             | 99.9635894|   0.0364106|    1926|             34|
|publication_year_till | 99.6168945|   0.3831055|   20265|            458|
|width.original        | 98.8397753|   1.1602247|   61372|            851|
|height.original       | 88.3673919|  11.6326081|  615326|           1114|
|paper.consumption.km2 | 84.4701697|  15.5298303|  821476|          31419|
|obl                   | 77.1296670|  22.8703330| 1209764|              3|
|latitude.1            | 72.8777531|  27.1222469| 1434676|             16|
|longitude.1           | 72.8777531|  27.1222469| 1434676|             16|
|latitude              | 72.8777531|  27.1222469| 1434676|             16|
|longitude             | 72.8777531|  27.1222469| 1434676|             16|
|area                  | 66.8794149|  33.1205851| 1751968|           5868|
|height                | 66.8793203|  33.1206797| 1751973|           1110|
|width                 | 66.8790368|  33.1209632| 1751988|            851|
|pagecount             | 57.7200257|  42.2799743| 2236469|           2666|
|author_death          | 54.4339008|  45.5660992| 2410294|           1164|
|author_birth          | 52.7503538|  47.2496462| 2499348|           1360|
|author_gender         | 50.5341832|  49.4658168| 2616576|              3|
|country               | 41.3549062|  58.6450938| 3102129|             42|
|publication_place     | 41.2073165|  58.7926835| 3109936|            529|
|author                | 40.2329637|  59.7670363| 3161476|         467555|
|author_name           | 37.7871377|  62.2128623| 3290852|         441388|
|publisher             | 25.8360218|  74.1639782| 3923026|         882673|
|dissertation          |  3.6353909|  96.3646091| 5097365|              3|
|synodal               |  3.6353909|  96.3646091| 5097365|              2|
|volcount              |  0.0364106|  99.9635894| 5287739|            146|
|title                 |  0.0356733|  99.9643267| 5287778|        4173989|
|publication_year_from |  0.0196043|  99.9803957| 5288628|            372|
|obl.original          |  0.0000378|  99.9999622| 5289663|              3|
|row.index             |  0.0000000| 100.0000000| 5289665|        5289665|
|language.finnish      |  0.0000000| 100.0000000| 5289665|              2|
|language.swedish      |  0.0000000| 100.0000000| 5289665|              2|
|language.latin        |  0.0000000| 100.0000000| 5289665|              2|
|language.german       |  0.0000000| 100.0000000| 5289665|              2|
|language.english      |  0.0000000| 100.0000000| 5289665|              2|
|language.french       |  0.0000000| 100.0000000| 5289665|              2|
|language.russian      |  0.0000000| 100.0000000| 5289665|              2|
|language.greek        |  0.0000000| 100.0000000| 5289665|              2|
|language.danish       |  0.0000000| 100.0000000| 5289665|              2|
|language.italian      |  0.0000000| 100.0000000| 5289665|              2|
|language.hebrew       |  0.0000000| 100.0000000| 5289665|              2|
|language.dutch        |  0.0000000| 100.0000000| 5289665|              2|
|language.spanish      |  0.0000000| 100.0000000| 5289665|              2|
|language.sami         |  0.0000000| 100.0000000| 5289665|              2|
|language.modern_greek |  0.0000000| 100.0000000| 5289665|              2|
|language.icelandic    |  0.0000000| 100.0000000| 5289665|              2|
|language.arabic       |  0.0000000| 100.0000000| 5289665|              2|
|language.portuguese   |  0.0000000| 100.0000000| 5289665|              2|
|language.finnougrian  |  0.0000000| 100.0000000| 5289665|              2|
|language.multiple     |  0.0000000| 100.0000000| 5289665|              2|
|language.undetermined |  0.0000000| 100.0000000| 5289665|              2|
|original_row          |  0.0000000| 100.0000000| 5289665|         418558|
|gatherings.original   |  0.0000000| 100.0000000| 5289665|             20|
|unity                 |  0.0000000| 100.0000000| 5289665|              1|
|publication_year      |  0.0000000| 100.0000000| 5289665|            371|
|publication_decade    |  0.0000000| 100.0000000| 5289665|             38|
|gatherings            |  0.0000000| 100.0000000| 5289665|             20|


## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-18.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-6.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-7.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />



