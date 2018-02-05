---
title: "Document dimension analysis"
author: "Leo Lahti"
date: "2018-02-02"
output: markdown_document
---


## Average document dimensions 




We have 1632 documents with country and original gatherings information. We have 7643 documents with original gatherings information but no country information.


|     | Austria| Belgium| Czech Republic| Denmark| England| France| Germany| Ireland| Italy| Netherlands| Portugal| Scotland| Spain| Sweden| Switzerland| USA| NA| total|
|:----|-------:|-------:|--------------:|-------:|-------:|------:|-------:|-------:|-----:|-----------:|--------:|--------:|-----:|------:|-----------:|---:|--:|-----:|
|1to  |       0|       0|              0|       0|       2|      0|       0|       0|     0|           0|        0|        0|     0|      0|           0|   0|  2|     4|
|2fo  |       0|       2|              0|       0|      42|     12|      10|       1|    35|           2|        1|       11|    14|      0|           4|   1| 29|   164|
|4to  |       1|       2|              0|       0|      74|     75|      29|       1|    27|           7|        0|       12|     2|      4|           1|   8| 22|   265|
|8vo  |       3|       1|              1|       5|     107|     46|      20|       3|    10|          14|        1|       26|     0|      0|           6|  27| 15|   285|
|12mo |       0|       2|              0|       0|      32|     16|       3|       2|     3|           6|        0|       12|     0|      0|           2|  11|  3|    92|
|16mo |       0|       1|              0|       0|       0|      2|       0|       0|     0|           0|        0|        0|     0|      0|           0|   0|  1|     4|
|18mo |       0|       0|              0|       0|       0|      0|       0|       0|     0|           0|        0|        0|     0|      0|           0|   1|  0|     1|
|32mo |       0|       0|              0|       0|       1|      0|       0|       0|     0|           0|        0|        0|     0|      0|           0|   0|  0|     1|



### Selected gatherings across time; by country

![plot of chunk docsizes-3](figure/docsizes-3-1.png)


### Average document sizes 

Only cases with 2000 documents are shown:


|gatherings.original | mean.height| median.height| mean.width| median.width|   n|
|:-------------------|-----------:|-------------:|----------:|------------:|---:|
|2fo                 |     32.2561|       32.2561|   21.16667|     21.16667| 164|



### Average document sizes by decade and country

Only cases with 2000 documents are shown:


|gatherings.original |country     | publication_decade| mean.height| median.height| mean.width| median.width|  n|
|:-------------------|:-----------|------------------:|-----------:|-------------:|----------:|------------:|--:|
|2fo                 |Belgium     |               1480|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |Belgium     |               1650|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |England     |               1560|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |England     |               1630|    28.50000|      28.50000|        NaN|          NaN|  2|
|2fo                 |England     |               1660|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |England     |               1680|    31.66667|      31.66667|        NaN|          NaN|  3|
|2fo                 |England     |               1690|    32.00000|      32.00000|        NaN|          NaN|  1|
|2fo                 |England     |               1700|    29.33333|      29.33333|        NaN|          NaN|  3|
|2fo                 |England     |               1710|    32.50000|      32.50000|        NaN|          NaN|  2|
|2fo                 |England     |               1730|    32.50000|      32.50000|        NaN|          NaN|  2|
|2fo                 |England     |               1740|    30.50000|      30.50000|        NaN|          NaN|  2|
|2fo                 |England     |               1750|    33.00000|      33.00000|        NaN|          NaN|  4|
|2fo                 |England     |               1760|    38.00000|      38.00000|        NaN|          NaN|  3|
|2fo                 |England     |               1770|    31.50000|      31.50000|        NaN|          NaN|  2|
|2fo                 |England     |               1780|    37.93333|      37.93333|        NaN|          NaN| 15|
|2fo                 |England     |               1790|    34.00000|      34.00000|        NaN|          NaN|  1|
|2fo                 |France      |               1470|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |France      |               1480|    28.00000|      28.00000|        NaN|          NaN|  1|
|2fo                 |France      |               1490|    27.00000|      27.00000|        NaN|          NaN|  1|
|2fo                 |France      |               1550|    31.00000|      31.00000|        NaN|          NaN|  1|
|2fo                 |France      |               1560|    35.00000|      35.00000|        NaN|          NaN|  1|
|2fo                 |France      |               1570|    33.00000|      33.00000|        NaN|          NaN|  1|
|2fo                 |France      |               1610|    35.00000|      35.00000|        NaN|          NaN|  1|
|2fo                 |France      |               1620|    36.00000|      36.00000|        NaN|          NaN|  1|
|2fo                 |France      |               1680|    36.00000|      36.00000|        NaN|          NaN|  1|
|2fo                 |France      |               1690|    40.00000|      40.00000|        NaN|          NaN|  1|
|2fo                 |France      |               1750|    39.00000|      39.00000|        NaN|          NaN|  1|
|2fo                 |France      |               1780|    33.00000|      33.00000|        NaN|          NaN|  1|
|2fo                 |Germany     |               1470|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |Germany     |               1490|    23.00000|      23.00000|       18.0|         18.0|  1|
|2fo                 |Germany     |               1590|    35.00000|      35.00000|        NaN|          NaN|  1|
|2fo                 |Germany     |               1600|    35.00000|      35.00000|        NaN|          NaN|  1|
|2fo                 |Germany     |               1610|    38.00000|      38.00000|        NaN|          NaN|  2|
|2fo                 |Germany     |               1670|    35.00000|      35.00000|        NaN|          NaN|  1|
|2fo                 |Germany     |               1680|    37.00000|      37.00000|        NaN|          NaN|  1|
|2fo                 |Germany     |               1730|    38.00000|      38.00000|        NaN|          NaN|  2|
|2fo                 |Ireland     |               1690|    39.00000|      39.00000|        NaN|          NaN|  1|
|2fo                 |Italy       |               1470|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |Italy       |               1480|    28.85714|      28.85714|        NaN|          NaN|  7|
|2fo                 |Italy       |               1490|    30.40000|      30.40000|        NaN|          NaN|  5|
|2fo                 |Italy       |               1530|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |Italy       |               1560|    31.00000|      31.00000|        NaN|          NaN|  1|
|2fo                 |Italy       |               1570|    30.00000|      30.00000|        NaN|          NaN|  1|
|2fo                 |Italy       |               1600|    25.00000|      25.00000|        NaN|          NaN|  1|
|2fo                 |Italy       |               1610|    31.00000|      31.00000|        NaN|          NaN|  1|
|2fo                 |Italy       |               1620|    33.50000|      33.50000|        NaN|          NaN|  2|
|2fo                 |Italy       |               1630|    28.00000|      28.00000|        NaN|          NaN|  1|
|2fo                 |Italy       |               1650|    29.33333|      29.33333|        NaN|          NaN|  3|
|2fo                 |Italy       |               1670|    27.00000|      27.00000|        NaN|          NaN|  1|
|2fo                 |Italy       |               1690|    27.57143|      27.57143|        NaN|          NaN|  7|
|2fo                 |Italy       |               1750|    28.00000|      28.00000|        NaN|          NaN|  1|
|2fo                 |Italy       |               1760|    39.00000|      39.00000|        NaN|          NaN|  1|
|2fo                 |Italy       |               1770|    28.00000|      28.00000|        NaN|          NaN|  1|
|2fo                 |Netherlands |               1620|    33.00000|      33.00000|        NaN|          NaN|  1|
|2fo                 |Netherlands |               1680|    33.00000|      33.00000|        NaN|          NaN|  1|
|2fo                 |Portugal    |               1600|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |Scotland    |               1680|    32.00000|      32.00000|        NaN|          NaN|  1|
|2fo                 |Scotland    |               1690|    33.00000|      33.00000|        NaN|          NaN|  1|
|2fo                 |Scotland    |               1710|    33.00000|      33.00000|        NaN|          NaN|  1|
|2fo                 |Scotland    |               1720|    34.25000|      34.25000|        NaN|          NaN|  4|
|2fo                 |Scotland    |               1730|    36.00000|      36.00000|        NaN|          NaN|  1|
|2fo                 |Scotland    |               1740|    36.50000|      36.50000|        NaN|          NaN|  2|
|2fo                 |Scotland    |               1790|    34.00000|      34.00000|        NaN|          NaN|  1|
|2fo                 |Spain       |               1600|    30.00000|      30.00000|        NaN|          NaN|  1|
|2fo                 |Spain       |               1610|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |Spain       |               1670|    30.00000|      30.00000|        NaN|          NaN|  1|
|2fo                 |Spain       |               1680|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |Spain       |               1710|    29.00000|      29.00000|        NaN|          NaN|  2|
|2fo                 |Spain       |               1720|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |Spain       |               1760|    27.50000|      27.50000|        NaN|          NaN|  2|
|2fo                 |Spain       |               1780|    33.00000|      33.00000|        NaN|          NaN|  1|
|2fo                 |Spain       |               1790|    29.00000|      29.00000|        NaN|          NaN|  2|
|2fo                 |Spain       |               1800|    26.00000|      26.00000|        NaN|          NaN|  1|
|2fo                 |Spain       |               1810|    31.00000|      31.00000|        NaN|          NaN|  1|
|2fo                 |Switzerland |               1550|    35.50000|      35.50000|        NaN|          NaN|  2|
|2fo                 |Switzerland |               1580|    33.00000|      33.00000|        NaN|          NaN|  1|
|2fo                 |Switzerland |               1730|    36.00000|      36.00000|        NaN|          NaN|  1|
|2fo                 |USA         |               1790|    34.00000|      34.00000|        NaN|          NaN|  1|
|2fo                 |NA          |               1470|    34.00000|      34.00000|        NaN|          NaN|  1|
|2fo                 |NA          |               1580|    37.00000|      37.00000|        NaN|          NaN|  1|
|2fo                 |NA          |               1620|    32.00000|      32.00000|        NaN|          NaN|  1|
|2fo                 |NA          |               1630|    36.00000|      36.00000|        NaN|          NaN|  1|
|2fo                 |NA          |               1640|    30.00000|      30.00000|        NaN|          NaN|  1|
|2fo                 |NA          |               1660|    31.00000|      31.00000|        NaN|          NaN|  2|
|2fo                 |NA          |               1700|    34.00000|      34.00000|        NaN|          NaN|  1|
|2fo                 |NA          |               1720|    29.00000|      29.00000|        NaN|          NaN|  1|
|2fo                 |NA          |               1730|    54.00000|      54.00000|        NaN|          NaN|  1|
|2fo                 |NA          |               1760|    29.00000|      29.00000|        NaN|          NaN|  3|
|2fo                 |NA          |               1770|    30.50000|      30.50000|        NaN|          NaN|  2|
|2fo                 |NA          |               1790|    30.00000|      30.00000|        NaN|          NaN|  2|
|2fo                 |NA          |               1800|    32.00000|      32.00000|        NaN|          NaN|  3|
|2fo                 |NA          |               1810|    30.00000|      30.00000|        NaN|          NaN|  2|
|2fo                 |NA          |               1820|    31.14286|      31.14286|       21.8|         21.8|  7|

