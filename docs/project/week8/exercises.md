# Prototyp und Design


Bevor Sie die folgenden Aufgaben bearbeiten, vergewissern Sie sich bitte, dass Sie das Dokument [Projektübersicht](../project-summary.html)  gelesen haben, 
und die entsprechenden Schritte und Deadlines kennen. Sie sollten auch alle Unterrichtsmaterialen (also Video und Artikel) bis und mit Woche 8 durchgearbeitet haben

Erstellen Sie, ausgehend von develop branch in Ihrem Projektrepository, einen neuen Featurebranch designdoc.

#### Einführung

Der nächste Schritt im Projekt ist es anhand der Anforderungen das zu entwickelnde System zu spezifizieren und die technische Umsetzung zu planen. Wir wir im Artikel [A rational design process - and how to fake](https://users.ece.utexas.edu/~perry/education/SE-Intro/fakeit.pdf) it gesehen haben, werden wir es nie schaffen, bereits in der Designphase alle möglichen Probleme vorauszusehen. Deshalb sollten Sie die nächsten zwei Schritte, nämlich Prototyp schreiben und technische Dokumentation erstellen, parallel ausführen. Überlegen Sie sich auch, ob die neuen Erkenntnisse, die Sie durch diese Schritte erlangen, Auswirkungen auf die im Pflichtenheft spezifizierten Anforderungen haben. 

#### Prototyp schreiben

Ein erstes Ziel ist die Implementation eines [Prototypen](https://de.wikipedia.org/wiki/Prototyping_(Softwareentwicklung)) für Ihre Erweiterung. Dazu identifizieren Sie die wichtigsten Funktionalen Anforderungen, und implementieren diese in der einfachst möglichen Form. Implementieren Sie vor allem die Funktionen, deren Schwierigkeit ihnen noch unklar ist oder bei denen Sie Probleme erwarten. 
Die Funktionalität soll in dieser Phase nicht vollständig implementiert werden. Sie können Dummy Implementation nutzen oder die Funktionalität in einem ersten Schritt so programmieren, dass noch keine Komplikationen wie Fehleingaben berücksichtigt werden.  Das Ziel ist, dass sie sich langsam an das Problem herantasten und ein Gefühl für die Komplexität der Aufgabe bekommen. Je früher Sie Probleme erkennen, desto mehr Zeit haben Sie auf diese zu reagieren. Der Prototyp sollte Ihnen auch helfen mögliche Designs Ihrer Erweiterung zu explorieren und die Interaktion mit JabRef/Ganttproject zu überblicken.

#### Technische Dokumentation erstellen

Erstellen Sie die Technische Dokumentation. Nutzen Sie dazu dieses  [Template](../templates/technical-doc.html).

Neben den im Template vorgegebenen Aspekten, muss das Dokument mindestens die folgenden Anforderungen erfüllen:

* Es soll ein UML Klassendiagramm enthalten, welches die Beziehungen zwischen den relevanten Klassen Ihrer Erweiterung und JabRef/Ganttproject zeigt.
* Pro Gruppenmitglied soll jeweils die Dynamik für einen Teilaspekt mithilfe von Sequenz/Kollaborationsdiagrammen, Aktivitätsdiagrammen oder Zustandsdiagrammen spezifiziert werden.  
(In einer 4er Gruppe, sollen also 4 dynamische Diagramme erstellt werden. Wählen Sie die jeweils passendste Diagrammart für jeden zu spezifizierenden Teilaspekt ihres Systems).
* Pro Gruppenmitglied sollen mindestens 2 OCL Constraints formuliert werden. (In einer 4er Gruppe sollen also mindestens 8 Constraints formuliert werden.)

Sie finden auf Adam zwei [Beispielspezifikationen](https://adam.unibas.ch/goto_adam_file_840449_download.html) für die SemOrg und Fensterheber Fallstudie, die sie als Inspiration nehmen können.

* *Bemerkung 1:* In diesen Dokumenten finden Sie auch Use-Cases. Wir haben diese bereits als Teil vom Pflichtenheft beschrieben.
* *Bemerkung 2:* Wir empfehlen die Open Source Software [PlantUML](http://plantuml.com/) oder [Modelio](https://www.modelio.org/) um die Diagramme zu erstellen. 

Abgabe:

Speichern Sie die Dokumente im docs Ordner von ihrem Respository ab.

Die Abgabe erfolgt pro Gruppe, mittels Pull Request. Geben Sie marcelluethi, schoenja und ClemensBuechner als Reviewer an. Abgabetermin ist Montag, 11. November, 23:55. Die Besprechung mit den Betreuern findet am 13. November, gemäss diesem [Plan](https://adam.unibas.ch/goto_adam_file_875739_download.html) statt. Die Abgabe der überarbeiteten und finalen Version erfolgt dann bis spätestens 19. November, 23.55.