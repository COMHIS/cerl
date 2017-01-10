## TODO

* Tue

- Add edition field in the data (helps with duplicate identification)
- Add/Remove the remaining updates with the names
- Clean place names for Cicero
- Group the entries by place & year & language + alphabetic ordering for titles
- Associate Tue's titles to CERL titles
- Remove unnecessary languages - just keep the language name column
  (not the TRUE/FALSE version)
- Luther, Voltaire, Cicero -> Could we use Eetu's point and click tool here
- Check why CERL top author summary page shows so few documents
  (Cicero ~ 200 docs although Tue had 14000 entries..)
- Clean up by summer and then article writing during fall 2017 ?

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


