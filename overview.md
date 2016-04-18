---
title: "Preprocessing overview"
author: "Leo Lahti"
date: "2016-04-15"
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
|volnumber             |        99.9|           0.1|          3133|         37|
|publication_interval  |        99.5|           0.5|         28459|      24550|
|width.original        |        98.9|           1.1|         62605|        860|
|note_dissertation     |        96.5|           3.5|        193886|      77539|
|publication_year_till |        96.3|           3.7|        202719|        543|
|height.original       |        88.4|          11.6|        635976|       1127|
|obl                   |        77.4|          22.6|       1235159|          3|
|latitude              |        72.7|          27.3|       1490447|         20|
|longitude             |        72.7|          27.3|       1490447|         20|
|paper.consumption.km2 |        67.1|          32.9|       1795907|      44409|
|area                  |        67.1|          32.9|       1796036|       5944|
|height                |        67.1|          32.9|       1796041|       1123|
|width                 |        67.1|          32.9|       1796056|        860|
|author_date           |        61.0|          39.0|       2127986|      59252|
|author_death          |        53.3|          46.7|       2550529|       1167|
|author_birth          |        51.5|          48.5|       2647406|       1363|
|author_gender         |        49.3|          50.7|       2771938|          3|
|physical_dimension    |        45.1|          54.9|       3000409|      36256|
|pagecount.orig        |        44.9|          55.1|       3008685|       3954|
|self_published        |        44.0|          56.0|       3060405|          3|
|country               |        31.5|          68.5|       3739249|         62|
|author_name           |        28.7|          71.3|       3892682|     560094|
|author                |        28.7|          71.3|       3892682|     598002|
|publisher             |        25.8|          74.2|       4052552|     930731|
|physical_extent       |        15.7|          84.3|       4602266|    1454489|
|publication_place     |        10.0|          90.0|       4918470|      82802|
|dissertation          |         3.5|          96.5|       5269365|          3|
|synodal               |         3.5|          96.5|       5269365|          2|
|publication_year_from |         0.2|          99.8|       5452929|        372|
|volcount              |         0.1|          99.9|       5459447|        203|
|title                 |         0.0|         100.0|       5460681|    4272826|
|pagecount             |         0.0|         100.0|       5462302|       4069|
|obl.original          |         0.0|         100.0|       5462578|          3|
|language              |         0.0|         100.0|       5462580|          1|
|publication_time      |         0.0|         100.0|       5462580|     167215|
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
|author_pseudonyme     |         0.0|         100.0|       5462580|          2|
|gatherings            |         0.0|         100.0|       5462580|         20|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables


```
## Error in dfs$names: $ operator is invalid for atomic vectors
```

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />



