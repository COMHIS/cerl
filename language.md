---
title: "Language summaries"
author: "Leo Lahti"
date: "2018-02-05"
output: markdown_document
---

## Language

 * 279 [unique languages](output.tables/language_accepted.csv)
 * 225 [unique primary languages](output.tables/language_accepted.csv)  
 * 5241282 single-language documents (96.95%)
 * 165090 multilingual documents (3.05%) 
 * [Conversions from raw to preprocessed language entries](output.tables/language_conversions.csv) 
 * 1019763 documents (18.86%) with [unrecognized language](output.tables/language_discarded.csv)

Language codes are from [MARC](http://www.loc.gov/marc/languages/language_code.html); new custom abbreviations can be added in [this table](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/language_abbreviations.csv).

Title count per language (including multi-language documents):

![plot of chunk summarylang](figure/summarylang-1.png)


### Top languages

Number of documents assigned with each language (top-10). For a complete list,
see [accepted languages](output.tables/language_accepted.csv).


|Language                    |Documents (n) |Fraction (%) |
|:---------------------------|:-------------|:------------|
|Latin                       |1250935       |23.1         |
|French                      |1098864       |20.3         |
|Undetermined                |1018194       |18.8         |
|German                      |740374        |13.7         |
|English                     |364393        |6.7          |
|Italian                     |334710        |6.2          |
|Dutch                       |137677        |2.5          |
|Swedish                     |76655         |1.4          |
|Spanish                     |70896         |1.3          |
|French Middle ca. 1300-1600 |29600         |0.5          |

