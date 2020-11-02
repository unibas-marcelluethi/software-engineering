---
layout: default
---
# Testen 

*Bevor Sie die folgenden Aufgaben bearbeiten, vergewissern Sie sich bitte, dass Sie das [Dokument Projektübersicht](../project-summary.html) gelesen haben, und die entsprechenden Schritte und Deadlines kennen. 
Sie sollten auch alle Unterrichtsmaterialen (also Video und Artikel) bis und mit [Woche 10](../../week10/guide.html) durchgearbeitet haben*

Erstellen Sie, ausgehend von ```develop``` branch in Ihrem Jabref Repository, einen neuen Featurebranch ```testplan```.


## Testplan

Erstellen Sie einen Testplan für Ihre Erweiterung. Nutzen Sie das vorgegebene [Template](https://unibas-marcelluethi.github.io/software-engineering/project/templates/testplan.html) (hier als [Markdown](https://github.com/unibas-marcelluethi/software-engineering/tree/master/docs/project/templates/testplan.md)).
Der Testplan sollte so geschrieben sein, dass dieser für ein externes Testteam nutzbar ist. 

Pro Gruppenmitglied müssen Sie mindestens 3 Modultests (Abschnitt 6.1) und 3 Funktionstests (Abschnitt 6.2) beschreiben. Falls Sie die Modultests als automatisierte Unit Tests implementiert haben, können Sie einfach die Namen der Unittest in die Tabelle einfügen. Ansonsten müssen Sie diese detailliert beschreiben.

Überlegen Sie beim Erstellen der Modultests, was die Äquivalenzklassen und Grenzfälle sind. Nutzen Sie auch Ursache-Wirkungsdiagramme um Testfälle zu identifizieren.

Die Funktionstest sollten anhand der funktionalen Anforderungen im Pflichtenheft hergeleitet werden. 




## Testcoverage 

Finden Sie heraus, wie hoch die Testabdeckung durch Unittests für Jabref insgesamt, und insbesondere für Ihre Erweiterung ist. Dafür können Sie das Tool [Jacoco](https://www.jacoco.org/jacoco/) verwenden. Dieses ist bei JabRef bereis als Gradle Plugin eingebunden. Bei Ganttproject kann es einfach hinzugefügt werden (mehr in dieser [Dokumentation](https://docs.gradle.org/current/userguide/jacoco_plugin.html)).

#### Abgabe:

Speichern Sie die Dokumente im docs Ordner von ihrem Repository ab.

Die Abgabe erfolgt pro Gruppe, mittels Pull Request. Geben Sie Ihren Betreuer (also ```marcelluethi```, ```joeyzgraggen``` oder ```guenesaydin```) als Reviewer an. Abgabetermin ist Sonntag, 22. November, 23:55. Die Besprechung mit den Betreuern findet am 25. November statt. Die Abgabe der überarbeiteten und finalen Version erfolgt dann bis spätestens 1. Dezember, 23.55.