---
layout: default
---
# Testen

In diesem Projektschritt erstellen wir anhand der Spezifikationen einen Testplan für unsere Implementation. 

#### Vorbereitung


Erstellen Sie, ausgehend von ```main``` branch in Ihrem Jabref Repository, einen neuen Featurebranch ```testplan```.

#### Testplan

Erstellen Sie einen Testplan für Ihre Erweiterung. Nutzen Sie das vorgegebene [Template](https://unibas-marcelluethi.github.io/software-engineering-gyminf/project/templates/testplan.html) (hier als [Markdown](https://github.com/unibas-marcelluethi/software-engineering-gyminf/tree/main/docs/project/templates/testplan.md)).
Der Testplan sollte so geschrieben sein, dass dieser für ein externes Testteam nutzbar ist.
Falls Sie die Modultests als automatisierte Unit Tests implementiert haben, können Sie einfach die Namen der Unittest in die Tabelle einfügen. Ansonsten müssen Sie diese detailliert beschreiben.

Überlegen Sie beim Erstellen der Modultests, was die Äquivalenzklassen und Grenzfälle sind. Sie können auch andere Techniken, wie zum Beispiel Ursache-Wirkungsdiagramme einsetzen um Testfälle zu identifizieren.
Die Funktionstest sollten anhand der funktionalen Anforderungen im Pflichtenheft hergeleitet werden.




## Testcoverage

Finden Sie heraus, wie hoch die Testabdeckung durch Unittests für Jabref insgesamt, und insbesondere für Ihre Erweiterung ist. Dafür können Sie das Tool [Jacoco](https://www.jacoco.org/jacoco/) verwenden. Dieses ist bei JabRef bereis als Gradle Plugin eingebunden.

#### Abgabe:

Speichern Sie die Dokumente im Ordner ```docs/sweng``` von Jabref.
Die Abgabe erfolgt pro Gruppe, mittels Pull Request bis zur in der [Übersicht](../project-overview) spezifizierten Deadline.  Geben Sie Ihren ```marcelluethi``` als Reviewer an..
