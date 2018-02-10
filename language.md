---
title: "Language summaries"
author: "Leo Lahti"
date: "2018-02-10"
output: markdown_document
---

## Language

 * 92 [unique languages](output.tables/language_accepted.csv)
 * 70 [unique primary languages](output.tables/language_accepted.csv)  
 * 85023 single-language documents (95.08%)
 * 4400 multilingual documents (4.92%) 
 * [Conversions from raw to preprocessed language entries](output.tables/language_conversions.csv) 
 * 2574 documents (2.88%) with [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages

Number of documents assigned with each language (top-10). For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language                    |Documents (n) |Fraction (%) |
|:---------------------------|:-------------|:------------|
|Latin                       |26063         |29.1         |
|French                      |21329         |23.9         |
|English                     |10277         |11.5         |
|Italian                     |8887          |9.9          |
|German                      |7827          |8.8          |
|Dutch                       |2749          |3.1          |
|Undetermined                |2564          |2.9          |
|Spanish                     |1760          |2            |
|Swedish                     |1118          |1.3          |
|Latin;Greek Ancient to 1453 |824           |0.9          |

