# Anforderungen mit Sprachschablonen definieren 

*Anforderungen sollten so präzise wie möglich definiert werden. Idealerweise würden wir eine formale Sprache verwenden, die keine Mehrdeutigkeiten zulässt. In der Praxis ist 
aber die natürliche Sprache die gängigste Art Anforderungen zu definieren. 
Im Gegensatz zu formal definierten Anforderungen, die zum Beispiel mithilfe mathematischer Logik definiert sind, haben natürlichsprachliche Anforderungen den Vorteil, dass auch Nichtinformatiker (zu denen ja die meisten Stakeholder gehören) diese ohne Probleme lesen können. Trotzdem möchten wir so präzise wie möglich sein. Zu diesem 
Zweck können wir Sprachschablonen verwenden.*

## Sprachschablonen
Sprachliche Anforderungstemplates (Sprachschablonen) sind ein Schema, um Anforderungen zu definieren. Diese Schablonen geben vor, wie wir die Sätze aufbauen sollen. Auch schränken wir unser Vokabular etwas ein und benutzen wenn möglich Verben mit einer festen Definition. Das System ist in folgender Abbildung illustriert:
![language template](../../slides/images/language-template.png)

Wir beginnen also unsere Sätze immer mit dem Wort *Das System* oder *Die Komponente X*. Danach verwenden wir eines der Verben *muss, soll* oder *sollte in Zukunft*. *Muss* bedeutet in diesem Fall, dass jede erfolgreiche Implementation diese Anforderung erfüllen muss. Ein System, dass diese Anforderung nicht erfüllt, wird so vom Kunden nicht abgenommen. *Soll* bedeutet, dass es *dringend empfohlen* ist, diese Anforderungen auch umzusetzen. Es kann aber in Ausnahmefälle Gründe geben, die eine Nichterfüllung dieser Anforderung rechtfertigen. *sollte in Zukunft* bedeutet, dass diese Anforderung erst in einer nächsten Version implementiert wird.

 Auch der Rest des Satzes wird, wenn immer möglich, nach der dargestellten Struktur ergänzt. 

 Beispiele von so definierten Anforderungen sind:
* Das System muss dem Kunden die M&ouml;glichkeit bieten, Geld zu beziehen
* Das System muss ein Aktivit&auml;tsjournal f&uuml;hren.
* Die Konsole sollte dem Benutzer verst&auml;ndliche Fehlermeldungen ausgeben. Viele weitere Beispiele finden Sie im Beispiel Pflichtenheft auf dem [Adam workspace](https://adam.unibas.ch/goto_adam_file_732351_download.html).
                        
## Glossar
Trotz der Nutzung von Sprachschablonen werden natürlichsprachliche Anforderungen nie ganz eindeutig werden. Natürliche Sprache ist von Natur aus mehrdeutig. 
Das gleiche Wort kann, je nach Fachgebiet, eine ganz unterschiedliche Bedeutung haben. Deshalb empfiehlt es sich, für alle Wörter, die eventuell nicht ganz eindeutig definiert sind, 
einen Eintrag in einem Glossar zu erstellen, welcher dann zum Anforderungsdokument hinzugefügt wird. 

Ein gutes Glossar sollte für jeden Begriff zumindest die folgenden Punkte klären: 

* Begriff 
* Definition
* Synonyme
* Plural (wenn ungew&ouml;hnlich)
* Kurzform (Falls vorhanden)
* Langform (Wenn Begriff in Kurzform angegeben ist)
* &Uuml;bersetzung (Wenn Projekt/Benutzeroberfl&ouml;che mehrsprachig ist)
                            
