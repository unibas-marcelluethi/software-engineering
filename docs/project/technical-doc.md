---
layout: default
---
# Prototyp und Design



#### Einführung

Der nächste Schritt im Projekt ist es anhand der Anforderungen das zu entwickelnde System zu spezifizieren und die technische Umsetzung zu planen. Wir wir im Artikel [A rational design process - and how to fake](https://users.ece.utexas.edu/~perry/education/SE-Intro/fakeit.pdf) it gesehen haben, werden wir es nie schaffen, bereits in der Designphase alle möglichen Probleme vorauszusehen. Deshalb sollten Sie die nächsten zwei Schritte, nämlich Prototyp schreiben und technische Dokumentation erstellen, parallel ausführen. Überlegen Sie sich auch, ob die neuen Erkenntnisse, die Sie durch diese Schritte erlangen, Auswirkungen auf die im Pflichtenheft spezifizierten Anforderungen haben.

#### Vorbereitung

Wechseln Sie auf den `project` branch. 
Erzeugen Sie dann, ausgehend vom Branch `project`, einen neuen Branch mit dem Namen `technical-doc`. 


#### Prototyp schreiben

Ein erstes Ziel ist die Implementation eines [Prototypen](https://de.wikipedia.org/wiki/Prototyping_(Softwareentwicklung)) für Ihre Erweiterung. Dazu identifizieren Sie die wichtigsten Funktionalen Anforderungen, und implementieren diese in der einfachst möglichen Form. Implementieren Sie vor allem die Funktionen, deren Schwierigkeit ihnen noch unklar ist oder bei denen Sie Probleme erwarten.
Die Funktionalität soll in dieser Phase nicht vollständig implementiert werden. Sie können Dummy Implementation nutzen oder die Funktionalität in einem ersten Schritt so programmieren, dass noch keine Komplikationen wie Fehleingaben berücksichtigt werden.  Das Ziel ist, dass sie sich langsam an das Problem herantasten und ein Gefühl für die Komplexität der Aufgabe bekommen. Je früher Sie Probleme erkennen, desto mehr Zeit haben Sie auf diese zu reagieren. Der Prototyp sollte Ihnen auch helfen mögliche Designs Ihrer Erweiterung zu explorieren und die Interaktion mit JabRef zu überblicken.

#### Technische Dokumentation erstellen

Erstellen Sie die Technische Dokumentation. Nutzen Sie dazu dieses  [Template](../project/templates/technical-doc)

* [Link zum template im Markdown Format](https://raw.githubusercontent.com/unibas-marcelluethi/software-engineering/main/docs/project/templates/technical-doc.md)

Neben den im Template vorgegebenen Aspekten, muss das Dokument mindestens die folgenden Anforderungen erfüllen:

* Es soll ein UML Klassendiagramm enthalten, welches die Beziehungen zwischen den relevanten Klassen Ihrer Erweiterung und JabRef zeigt.
* Die Dynamik soll für mindestens einen Teilaspekt mithilfe von Sequenz/Kollaborationsdiagrammen, Aktivitätsdiagrammen oder Zustandsdiagrammen spezifiziert werden.
* Können Sie auch OCL-Constraints für einen Aspekt ihrer Erweiterung definieren?


#### Abgabe:

Die Abgabe erfolgt pro Gruppe, mittels Pull Request auf ihren `project` branch. Den Abgabetermin finden Sie in der [Übersicht](./project-summary).  Geben Sie Ihren Betreuer sowie ```marcelluethi``` als Reviewer an.
