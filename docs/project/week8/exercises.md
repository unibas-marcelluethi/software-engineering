# Prototyp und Design

*Bevor Sie die folgenden Aufgaben bearbeiten, vergewissern Sie sich bitte, dass Sie das [Dokument Projektübersicht](../project-summary.html) gelesen haben, und die entsprechenden Schritte und Deadlines kennen. 
Sie sollten auch alle Unterrichtsmaterialen (also Video und Artikel) bis und mit [Woche 8](../week8/guide.html) durchgearbeitet haben*

Erstellen Sie, ausgehend von ```develop``` branch in Ihrem Ganttproject repository, einen neuen Featurebranch ```designdoc```.

## Einführung

Der nächste Schritt im Projekt ist es anhand der Anforderungen das zu entwickelnde System zu spezifizieren und die technische Umsetzung zu planen. 
Wir wir im Artikel [A rational design process - and how to fake it](https://users.ece.utexas.edu/~perry/education/SE-Intro/fakeit.pdf) gesehen haben, werden wir es nie schaffen, bereits in der Designphase 
alle möglichen Probleme vorauszusehen. Deshalb sollten Sie die nächsten zwei Schritte, nämlich Prototyp schreiben und technische Dokumentation erstellen, parallel ausführen. Überlegen Sie sich auch, ob 
die neuen Erkenntnisse, die Sie durch diese Schritte erlangen, Auswirkungen auf die im Pflichtenheft spezifizierten Anforderungen haben. 

## Prototyp schreiben

In diesem Schritt ist das Ziel, einen [Prototypen](https://de.wikipedia.org/wiki/Prototyping_(Softwareentwicklung)) für Ihre Erweiterung zu implementieren. Dazu identifizieren Sie die wichtigsten Funktionen Ihrer Erweiterung, 
und implementieren diese in der einfachst möglichen Form. Die Funktionalität muss nicht vollständig implementiert werden, sondern es können/sollen Dummyimplementationen verwendet werden. 
Das Ziel hier ist, dass sie sich langsam an das Problem herantasten und ein Gefühl für die Komplexität der Aufgabe bekommen.  Ausserdem sollten Sie das Problem so weit technisch Überblicken, dass Sie allenfalls die Anforderungen korrigieren können und ein Softwaredesign erstellen können. 

## Technische Dokumentation erstellen
Erstellen Sie die Technische Dokumentation. Nutzen Sie dazu [dieses Template](../templates/technical-doc.html). 

Neben den im Template vorgegebenen Aspekten, muss das Dokument  mindestens die folgenden Komponenten enthalten:
* ein UML Klassendiagramm, welches die Beziehungen zwischen den relevanten Klassen von Ihrer Erweiterung zeigt. 
* pro Gruppenmitglied soll jeweils die Dynamik für einen Teilaspekt mithilfe eines Sequenz/Kollaborations oder Aktivitätsdiagramms spezifiziert werden. (In einer 4er Gruppe, sollen also 4 dynamische Diagramme erstellt werden.)
* pro Gruppenmitglied sollen mindestens 2 OCL Constraints formuliert werden. (In einer 4er Gruppe sollen also mindestens 8 Constraints formuliert werden.)

Sie finden auf [Adam](https://adam.unibas.ch/goto_adam_file_737986_download.html) zwei Beispielspezifikationen für die SemOrg und Fensterheber Fallstudie, die sie als Inspiration nehmen können. 

*Bemerkung 1: In diesen Dokumenten finden Sie auch Use-Cases. Wir haben diese bereits als Teil vom Pflichtenheft beschrieben.*

*Bemerkung 2: Wir empfehlen die Verwendung der Open Source Software [Modelio](https://www.modelio.org/).

## Abgabe:
Speichern Sie die Dokumente im ```docs``` Ordner von Ganttproject ab. 

Die Abgabe erfolgt pro Gruppe, mittels Pull Request. Geben Sie ```marcelluethi```, ```schoenja``` und ```MichaelPluess``` als Reviewer an. Abgabetermin ist Dienstag, 13. November, 23:55. 
Die Besprechung mit den Betreuern findet am 14. Oktober, gemäss diesem [Plan](https://adam.unibas.ch/goto_adam_file_734506_download.html) statt. 
Die Abgabe der überarbeiteten und finalen Version erfolgt dann bis spätestens 20. November, 23.55.  
