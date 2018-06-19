---
title: "Publication place preprocessing summary"
author: "Leo Lahti"
date: "2018-06-18"
output: markdown_document
---

### Publication places

 * 31939 [unique publication places](output.tables/publication_place_accepted.csv); available for 2372974 documents (89%).
 * 0 [ambiguous publication places](output.tables/publication_place_ambiguous.csv); some of these can be possibly resolved by checking that the the [synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv) does not contain multiple versions of the final name (case sensitive). 
 * 30527 [unknown place names](output.tables/publication_place_todo.csv) These terms do not map to any known place on the [synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv); either because they require further cleaning or have not yet been encountered in the analyses. Terms that are clearly not place names can be added to [stopwords](inst/extdata/stopwords_for_place.csv); borderline cases that are not accepted as place names can be added as NA on the [synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv).
 * 5228 [discarded place names](output.tables/publication_place_discarded.csv) These terms are potential place names but with a closer check have been explicitly rejected on the [synonyme list](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/PublicationPlaceSynonymes.csv)
 * [Conversions from the original to the accepted place names](output.tables/publication_place_conversion_nontrivial.csv) 
 * [Unit tests for place names](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/tests_place.csv) are automatically checked during package build

Top-20 publication places are shown together with the number of documents.

<img src="figure/summaryplace-1.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" /><img src="figure/summaryplace-2.png" title="plot of chunk summaryplace" alt="plot of chunk summaryplace" width="430px" />


### Publication countries	

 * 59 [unique publication countries](output.tables/publication_country_accepted.csv); available for 2062853 documents (77%).
 * 30990 [places with unknown publication country](output.tables/publication_place_missingcountry.csv) (97% of the unique places; can be added to [country mappings](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/reg2country.csv))
 * 0 [potentially ambiguous region-country mappings](output.tables/publication_country_ambiguous.csv) (these may occur in the data in various synonymes and the country is not always clear when multiple countries have a similar place name; the default country is listed first). NOTE: possible improvements should not be done in this output summary but instead in the [country mapping file](https://github.com/COMHIS/bibliographica/blob/master/inst/extdata/reg2country.csv).


|Country     | Documents (n)| Fraction (%)|
|:-----------|-------------:|------------:|
|Germany     |        588582|         22.0|
|France      |        438723|         16.4|
|England     |        311857|         11.6|
|Netherlands |        199869|          7.5|
|Italy       |        132050|          4.9|
|Sweden      |         66048|          2.5|


### Geocoordinates

 * NaN% of the documents were matched to geographic coordinates (based on [Geonames](http://download.geonames.org/export/dump/)).
 * 0 unique places (0% of all unique places and NaN% of all documents) are missing geocoordinates. See [list of places missing geocoordinate information](output.tables/absentgeocoordinates.csv).
 

### Publication geography

 * 0 [unique countries](output.tables/publication_geography_country_accepted.csv) on geographical region considered in the publication; available for 0 documents (NaN%).
 * 0 [unique places](output.tables/publication_geography_place_accepted.csv) on geographical region considered in the publication; available for 0 documents (NaN%).



