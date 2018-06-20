---
title: "Language summaries"
author: "Leo Lahti"
date: "2018-06-20"
output: markdown_document
---

## Language

 * 103 [unique languages](output.tables/language_accepted.csv)
 * 79 [unique primary languages](output.tables/language_accepted.csv)  
 * 94381 single-language documents (94.38%)
 * 5619 multilingual documents (5.62%) 
 * [Conversions from raw to preprocessed language entries](output.tables/language_conversions.csv) 
 * 5173 documents (5.17%) with [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages

Number of documents assigned with each language (top-10). For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language                    |Documents (n) |Fraction (%) |
|:---------------------------|:-------------|:------------|
|Latin                       |28371         |28.4         |
|English                     |24273         |24.3         |
|French                      |11828         |11.8         |
|German                      |9794          |9.8          |
|Undetermined                |5157          |5.2          |
|Italian                     |4165          |4.2          |
|Dutch                       |4141          |4.1          |
|Spanish                     |2642          |2.6          |
|Swedish                     |2110          |2.1          |
|Latin;Greek Ancient to 1453 |1016          |1            |

