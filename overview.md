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
|volnumber             |        99.9|           0.1|            63|         12|
|publication_interval  |        99.5|           0.5|           450|        448|
|width.original        |        98.9|           1.1|          1027|        134|
|note_dissertation     |        96.4|           3.6|          3310|       2853|
|publication_year_till |        96.3|           3.7|          3388|        402|
|height.original       |        88.4|          11.6|         10571|        206|
|obl                   |        77.6|          22.4|         20431|          3|
|latitude              |        72.6|          27.4|         24921|         17|
|longitude             |        72.6|          27.4|         24921|         17|
|paper.consumption.km2 |        67.3|          32.7|         29750|       6869|
|height                |        67.3|          32.7|         29758|        207|
|area                  |        67.3|          32.7|         29758|        618|
|width                 |        67.3|          32.7|         29759|        144|
|author_date           |        61.0|          39.0|         35508|      12965|
|author_death          |        58.6|          41.4|         37641|        676|
|author_birth          |        56.6|          43.4|         39526|        766|
|author_gender         |        49.2|          50.8|         46253|          3|
|physical_dimension    |        45.2|          54.8|         49871|       2515|
|pagecount.orig        |        44.8|          55.2|         50198|       1428|
|self_published        |        43.8|          56.2|         51169|          3|
|country               |        31.6|          68.4|         62289|         43|
|author_name           |        28.7|          71.3|         64919|      39032|
|author                |        28.7|          71.3|         64919|      40172|
|publisher             |        25.7|          74.3|         67619|      41064|
|physical_extent       |        15.8|          84.2|         76596|      40554|
|publication_place     |         9.9|          90.1|         81970|       6068|
|dissertation          |         3.6|          96.4|         87712|          3|
|synodal               |         3.6|          96.4|         87712|          2|
|publication_year_from |         0.2|          99.8|         90847|        368|
|volcount              |         0.1|          99.9|         90947|         46|
|title                 |         0.0|         100.0|         90977|      88879|
|pagecount             |         0.0|         100.0|         91000|       1455|
|language              |         0.0|         100.0|         91010|          1|
|publication_time      |         0.0|         100.0|         91010|       8751|
|language.finnish      |         0.0|         100.0|         91010|          2|
|language.swedish      |         0.0|         100.0|         91010|          2|
|language.latin        |         0.0|         100.0|         91010|          2|
|language.german       |         0.0|         100.0|         91010|          2|
|language.english      |         0.0|         100.0|         91010|          2|
|language.french       |         0.0|         100.0|         91010|          2|
|language.russian      |         0.0|         100.0|         91010|          2|
|language.greek        |         0.0|         100.0|         91010|          2|
|language.danish       |         0.0|         100.0|         91010|          2|
|language.italian      |         0.0|         100.0|         91010|          2|
|language.hebrew       |         0.0|         100.0|         91010|          2|
|language.dutch        |         0.0|         100.0|         91010|          2|
|language.spanish      |         0.0|         100.0|         91010|          2|
|language.sami         |         0.0|         100.0|         91010|          2|
|language.modern_greek |         0.0|         100.0|         91010|          2|
|language.icelandic    |         0.0|         100.0|         91010|          2|
|language.arabic       |         0.0|         100.0|         91010|          2|
|language.portuguese   |         0.0|         100.0|         91010|          2|
|language.finnougrian  |         0.0|         100.0|         91010|          1|
|language.multiple     |         0.0|         100.0|         91010|          2|
|language.undetermined |         0.0|         100.0|         91010|          2|
|gatherings.original   |         0.0|         100.0|         91010|         15|
|obl.original          |         0.0|         100.0|         91010|          2|
|original_row          |         0.0|         100.0|         91010|      91010|
|publication_year      |         0.0|         100.0|         91010|        367|
|publication_decade    |         0.0|         100.0|         91010|         38|
|author_pseudonyme     |         0.0|         100.0|         91010|          2|
|gatherings            |         0.0|         100.0|         91010|         15|



## Histograms of all entries for numeric variables

<img src="figure/summary-histograms-1.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-2.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-3.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-4.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-5.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-6.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-7.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-8.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-9.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-10.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-11.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-12.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-13.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-14.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-15.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-16.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" /><img src="figure/summary-histograms-17.png" title="plot of chunk summary-histograms" alt="plot of chunk summary-histograms" width="200px" />

## Histograms of the top entries for factor variables


```
## Error in dfs$names: $ operator is invalid for atomic vectors
```

<img src="figure/summary-bars-1.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-2.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-3.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-4.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" /><img src="figure/summary-bars-5.png" title="plot of chunk summary-bars" alt="plot of chunk summary-bars" width="200px" />



