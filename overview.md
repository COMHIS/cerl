---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-04-04"
output: markdown_document
---

# Preprocessing summary

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

Fraction of documents with data:

![plot of chunk summaryannotations](figure/summaryannotations-1.png)

Same in exact numbers: documents with available/missing entries, and number of unique entries for each field. Sorted by missing data:


|field name            | missing (%)| available (%)| available (n)| unique (n)|
|:---------------------|-----------:|-------------:|-------------:|----------:|
|publication_frequency |       100.0|           0.0|             0|          1|
|volnumber             |       100.0|           0.0|          1977|         34|
|publication_interval  |        99.5|           0.5|         28459|      24550|
|width.original        |        98.9|           1.1|         62605|        860|
|publication_year_till |        96.3|           3.7|        202719|        543|
|height.original       |        88.4|          11.6|        635976|       1127|
|paper.consumption.km2 |        84.8|          15.2|        829679|      31789|
|obl                   |        77.4|          22.6|       1235159|          3|
|latitude              |        72.9|          27.1|       1481934|         16|
|longitude             |        72.9|          27.1|       1481934|         16|
|area                  |        67.1|          32.9|       1796036|       5944|
|height                |        67.1|          32.9|       1796041|       1123|
|width                 |        67.1|          32.9|       1796056|        860|
|pagecount.orig        |        58.3|          41.7|       2276767|       2673|
|author_death          |        54.4|          45.6|       2493473|       1166|
|self_published        |        52.8|          47.2|       2580344|          3|
|author_birth          |        52.8|          47.2|       2580593|       1360|
|author_gender         |        50.7|          49.3|       2694674|          3|
|country               |        41.0|          59.0|       3222159|         42|
|author                |        40.4|          59.6|       3257206|     471312|
|author_name           |        37.9|          62.1|       3389714|     445505|
|publisher             |        25.9|          74.1|       4050379|     908100|
|publication_place     |         8.7|          91.3|       4989000|      88538|
|dissertation          |         3.5|          96.5|       5269365|          3|
|synodal               |         3.5|          96.5|       5269365|          2|
|pagecount             |         0.8|          99.2|       5420042|       2748|
|publication_year_from |         0.2|          99.8|       5452929|        372|
|volcount              |         0.0|         100.0|       5460603|        146|
|title                 |         0.0|         100.0|       5460681|    4272826|
|obl.original          |         0.0|         100.0|       5462578|          3|
|language.finnish      |         0.0|         100.0|       5462580|          2|
|language.swedish      |         0.0|         100.0|       5462580|          2|
|language.latin        |         0.0|         100.0|       5462580|          2|
|language.german       |         0.0|         100.0|       5462580|          2|
|language.english      |         0.0|         100.0|       5462580|          2|
|language.french       |         0.0|         100.0|       5462580|          2|
|language.russian      |         0.0|         100.0|       5462580|          2|
|language.greek        |         0.0|         100.0|       5462580|          2|
|language.danish       |         0.0|         100.0|       5462580|          2|
|language.italian      |         0.0|         100.0|       5462580|          2|
|language.hebrew       |         0.0|         100.0|       5462580|          2|
|language.dutch        |         0.0|         100.0|       5462580|          2|
|language.spanish      |         0.0|         100.0|       5462580|          2|
|language.sami         |         0.0|         100.0|       5462580|          2|
|language.modern_greek |         0.0|         100.0|       5462580|          2|
|language.icelandic    |         0.0|         100.0|       5462580|          2|
|language.arabic       |         0.0|         100.0|       5462580|          2|
|language.portuguese   |         0.0|         100.0|       5462580|          2|
|language.finnougrian  |         0.0|         100.0|       5462580|          2|
|language.multiple     |         0.0|         100.0|       5462580|          2|
|language.undetermined |         0.0|         100.0|       5462580|          2|
|gatherings.original   |         0.0|         100.0|       5462580|         20|
|original_row          |         0.0|         100.0|       5462580|    5462580|
|publication_year      |         0.0|         100.0|       5462580|        371|
|publication_decade    |         0.0|         100.0|       5462580|         38|
|gatherings            |         0.0|         100.0|       5462580|         20|
|author_pseudonyme     |         0.0|         100.0|       5462580|          2|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables


```
## Error in dfs$names: $ operator is invalid for atomic vectors
```

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />



