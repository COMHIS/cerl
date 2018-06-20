---
title: "Publisher preprocessing summary"
author: "Leo Lahti"
date: "2018-06-20"
output: markdown_document
---


### Publishers

 * 55722 [unique publishers](output.tables/publisher_accepted.csv)

 * 90013 documents have unambiguous publisher information (90%). This includes documents identified as self-published; the author name is used as the publisher in those cases (if known).

 * 0 documents are identified as self-published (0%). 

 * [Discarded publisher entries](output.tables/publisher_discarded.csv)

 * [Conversions from original to final names](output.tables/publisher_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common publishers are shown with the number of documents. 

![plot of chunk summarypublisher2](figure/summarypublisher2-1.png)

### Publication timeline for top publishers

Title count





Title count versus paper consumption (top publishers):

![plot of chunk publishertitlespapers](figure/publishertitlespapers-1.png)

|publisher                                                      | titles|     paper|
|:--------------------------------------------------------------|------:|---------:|
|]                                                              |    999| 6316293.8|
|Ex officina Christophori Plantini                              |    103|  872839.4|
|Foucault, libraire, rue des Noyers, No 37                      |    122|       0.0|
|Im Verlag bey Joseph Wolff                                     |     99|  608043.0|
|Printed & sold by the author, at his music warehouse,          |    107| 1676132.8|
|Printed by Longman and Broderip                                |    182|  648867.2|
|Printed for C. Smith                                           |    125| 5053840.6|
|Printed for the proprietors, under the direction of John Bell, |    159|       0.0|
|Published ... by J. Cary Engraver                              |    218|  799755.2|
|s.n                                                            |   2483| 7758897.4|


### Corporates

Summaries of the corporate field.

 * 0 [unique corporates](output.tables/corporate_accepted.csv)

 * 0 documents have unambiguous corporate information (NaN%). 

 * [Discarded corporate entries](output.tables/corporate_discarded.csv)

 * [Conversions from original to final names](output.tables/corporate_conversion_nontrivial.csv) (only non-trivial conversions shown)


The 20 most common corporates are shown with the number of documents. 

![plot of chunk summarycorporate2](figure/summarycorporate2-1.png)



