---
title: "Publisher preprocessing summary"
author: "Leo Lahti"
date: "2018-02-10"
output: markdown_document
---


### Publishers

 * 46632 [unique publishers](output.tables/publisher_accepted.csv)

 * 74230 documents have unambiguous publisher information (83%). This includes documents identified as self-published; the author name is used as the publisher in those cases (if known).

 * 0 documents are identified as self-published (0%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count





Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                   | titles|   paper|
|:---------------------------|------:|-------:|
|]                           |    718| 5457067|
|imp. de P.-J. Mariette      |    261|       0|
|imp. royale                 |    315|       0|
|Imp. royale                 |    748|       0|
|impr. de L. Delatour        |    216|       0|
|Impr. roy                   |    486|       0|
|impr. royale                |    249|       0|
|P. Prault                   |    542|       0|
|s.n                         |    568| 2452047|
|Vve Saugrain et : P. Prault |    238|       0|


### Corporates

Summaries of the corporate field.

 * 0 [unique corporates](output.tables/corporate_accepted.csv)

 * 0 documents have unambiguous corporate information (NaN%). 

 * [Discarded corporate entries](output.tables/corporate_discarded.csv)

 * [Conversions from original to final names](output.tables/corporate_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common corporates are shown with the number of documents. 

![plot of chunk summarycorporate2](figure/summarycorporate2-1.png)



