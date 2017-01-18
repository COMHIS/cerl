## TODO

* Cicero: see TODO-Cicero.md

* Title

Note that Cicero, Plato and Zeno wrote a work on the state abbreviated Rep. We need to add author info if we want to have unique title identifiers.

- Associate Tue's abbreviations (Cicero\ abbreviations*.csv/xlsx picked from OCD.ABBREVIATIONS.pdf by Tue) to titles. The list has a more general purpose and could be used more widely in cleaning up catalog title fields. It is made as a general help for students and scholars within classics so it includes all kinds of relevant abbreviations. But since the OCD is a standard work within the field and the list is now (since Sep. 2016) publicly available I was thinking that we could use these abbreviations and then link to the OCD site: http://classics.oxfordre.com/page/abbreviation-list/


* Technical

Cervantes/Shakespeare blogaus toistettavuus

Göttingen: hintakehitysdemo -> onko meillä jo kaikki relevantit kentät
sieltä XML:Stä pitää tarkistaa ?
kuulin että siellä olis joku 530 vai mikä ihme kenttä se oli
esim. jossa olisi täydennettyjä tietoja.

enrichments on hitaita - pitää vielä optimoida jotta
skaalautuu. Monissa paikoissa unohdettu käsitellä vain uniikit eli
tulee paljon tuplatyötä -> fiksaa.


* Author

author gender ei toimi johtuen erityisesti ranskan kielestä. Melkein
kaikki vai onko jopa kaikki top-naiset on oikeasti miehiä. Tämä pitää
ehkä muuttaa ja ehkäpä käsin etsiä top-naiset mukaan analyysiin.

ESTC:ssä lisäinfoa authoreille. Pitäisikö nämä ottaa mukaan
myös CERLiin?  life.info <- estc::author_info_table()
ambiguous.authors <- estc::ambiguous_authors_table()


* Dimensions

maakohtaiset erot dokumenttikoossa ajassa (50 vuoden palkeissa) - huom
kokoestimaattien tulee pohjautua vain alkuperäisiin tietoihin, ei
täydennettyihin!!!

korkeuden lisäksi voidaan katsoa myös leveyttä ja sivumäärää sekä
yleisesti paperinkulutusta per dokkarityyppi

jos saadaan kokoja (cm vs. format) vertailemalla löydettyä yleinen
trendi miten paljon quarto (tai muut) pienenevät 1600-luvun
kuluessa. yleisiä trendejä miten kirjojen painamisen lisääntyminen
suhtautuu kirjakoon yleiseen trendiin. Eli katseltaisiin myös
pinta-alaa.

paras jos pystytään tapauksista joista tiedossa merkityt sivut
laskemaan historiallista muuttumista eri kirjakokojen suhteen (oletus
että kirjat pienenee vuosien saatossa ainakin kooltaan, mutta
mahdollisesti myös sivumäärältä), niin että saadaan jonkinlainen
kerroin jolla sitten voidaan laskea eri aikakausille omat
keskiarvot. Mutta tämä sellaista viilailua kun katsellaan myöhemmin
ihan koko kirjapainotuotantoa ja tosiaan on se X10 määrä materiaalia


