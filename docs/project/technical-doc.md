---
layout: default
---
# Prototyp und Design



#### Einführung

Der nächste Schritt im Projekt ist es anhand der Anforderungen das zu entwickelnde System zu spezifizieren und die technische Umsetzung zu planen. Um eine gute Vorstellung über das Problem zu bekommen, sollten Sie versuchen, parallel dazu einen groben Prototypen zu erstellen. 
Überlegen Sie sich auch, ob die neuen Erkenntnisse, die Sie durch diese Schritte erlangen, Auswirkungen auf die im Pflichtenheft spezifizierten Anforderungen haben.

#### Vorbereitung

Wechseln Sie auf den `project` branch. 
Erzeugen Sie dann, ausgehend vom Branch `project`, einen neuen Branch mit dem Namen `technical-doc`. 


#### Prototyp schreiben

Ein erstes Ziel ist die Implementation eines [Prototypen](https://de.wikipedia.org/wiki/Prototyping_(Softwareentwicklung)) für Ihre Erweiterung. Dazu identifizieren Sie die wichtigsten Funktionalen Anforderungen, und implementieren diese in der einfachst möglichen Form. Implementieren Sie vor allem die Funktionen, deren Schwierigkeit ihnen noch unklar ist oder bei denen Sie Probleme erwarten.
Die Funktionalität soll in dieser Phase nicht vollständig implementiert werden. Sie können Dummy Implementation nutzen oder die Funktionalität in einem ersten Schritt so programmieren, dass noch keine Komplikationen wie Fehleingaben berücksichtigt werden.  Das Ziel ist, dass sie sich langsam an das Problem herantasten und ein Gefühl für die Komplexität der Aufgabe bekommen. Je früher Sie Probleme erkennen, desto mehr Zeit haben Sie auf diese zu reagieren. Der Prototyp sollte Ihnen auch helfen mögliche Designs Ihrer Erweiterung zu explorieren und die Interaktion mit JabRef zu überblicken.

#### Technische Dokumentation erstellen

Erstellen Sie dann die Technische Dokumentation. Nutzen Sie dazu dieses  [Template](./templates/technical-doc)

* [Link zum template im Markdown Format](https://raw.githubusercontent.com/unibas-marcelluethi/software-engineering/main/docs/project/templates/technical-doc.md)

Neben den im Template vorgegebenen Aspekten, muss das Dokument mindestens die folgenden Anforderungen erfüllen:

* Es soll ein UML Klassendiagramm enthalten, welches die Beziehungen zwischen den relevanten Klassen Ihrer Erweiterung und JabRef zeigt. Kennzeichnen Sie klar, 
welche Klassen bereits in JabRef vorhanden sind und welche Sie neu hinzufügen. 
* Erstellen Sie dann ein Sequenzdiagramm, ein Aktivitätsdiagramm und ein Zustandsdiagramm, für jeweils einen Teilaspekt ihres Systems. 
* Schreiben Sie einen Abschnitt zur Logik des Systems. Hier sollen die wichtigsten logischen Einschränkungen, die nicht direkt aus den obigen Diagrammen hervorgehen. 


#### Abgabe:

Die Abgabe erfolgt pro Gruppe, mittels Pull Request auf ihren `project` branch. Den Abgabetermin finden Sie in der [Übersicht](./project-summary).  Geben Sie Ihren Betreuer als Reviewer an.
