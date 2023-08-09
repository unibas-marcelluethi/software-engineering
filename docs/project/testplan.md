---
layout: default
---
# Testen

In diesem Projektschritt erstellen wir anhand der Spezifikationen einen Testplan für unsere Implementation. 

#### Vorbereitung


Wechseln Sie auf den `project` branch. 
Erzeugen Sie dann, ausgehend vom Branch `project`, einen neuen Branch mit dem Namen `testplan`. 

#### Testplan

Erstellen Sie einen Testplan für Ihre Erweiterung. Nutzen Sie das vorgegebene [Template](https://unibas-marcelluethi.github.io/software-engineering-gyminf/project/templates/testplan.html) (hier als [Markdown](https://raw.githubusercontent.com/unibas-marcelluethi/software-engineering/main/docs/project/templates/testplan.md)).
Der Testplan sollte so geschrieben sein, dass dieser für ein externes Testteam nutzbar ist.
Falls Sie die Modultests als automatisierte Unit Tests implementiert haben, können Sie einfach die Namen der Unittest in die Tabelle einfügen. Ansonsten müssen Sie diese detailliert beschreiben.

Überlegen Sie beim Erstellen der Modultests, was die Äquivalenzklassen und Grenzfälle sind. Sie können auch andere Techniken, wie zum Beispiel Ursache-Wirkungsdiagramme einsetzen um Testfälle zu identifizieren.
Die Funktionstest sollten anhand der funktionalen Anforderungen im Pflichtenheft hergeleitet werden.




## Testcoverage

Finden Sie heraus, wie hoch die Testabdeckung durch Unittests für Jabref insgesamt, und insbesondere für Ihre Erweiterung ist. Dafür können Sie das Tool [Jacoco](https://www.jacoco.org/jacoco/) verwenden. Dieses ist bei JabRef bereis als Gradle Plugin eingebunden.

#### Abgabe:


Die Abgabe erfolgt pro Gruppe, mittels Pull Request auf ihren `project` branch. Den Abgabetermin finden Sie in der [Übersicht](../project-summary).  Geben Sie Ihren Betreuer sowie ```marcelluethi``` als Reviewer an.