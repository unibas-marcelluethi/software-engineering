# Testen 

*Bevor Sie die folgenden Aufgaben bearbeiten, vergewissern Sie sich bitte, dass Sie das [Dokument Projektübersicht](../project-summary.html) gelesen haben, und die entsprechenden Schritte und Deadlines kennen. 
Sie sollten auch alle Unterrichtsmaterialen (also Video und Artikel) bis und mit [Woche 10](../../week10/guide.html) durchgearbeitet haben*

Erstellen Sie, ausgehend von ```develop``` branch in Ihrem Ganttproject Repository, einen neuen Featurebranch ```testplan```.


## Testplan

Erstellen Sie einen Testplan für Ihre Erweiterung. Nutzen Sie das vorgegebene [Template](../templates/testplan.html) (hier als [Markdown](https://github.com/unibas-sweng/software-engineering/tree/master/docs/project/testplan.md)).
Der Testplan sollte so geschrieben sein, dass dieser für ein externes Testteam nutzbar ist. 

Pro Gruppenmitglied müssen Sie mindestens 3 Modultests (Abschnitt 6.1) und 3 Funktionstests (Abschnitt 6.2) beschreiben. Falls Sie die Modultests als automatisierte Unit Tests implementiert haben, können Sie einfach die Namen der Unittest in die Tabelle einfügen. Ansonsten müssen Sie diese detailliert beschreiben.
Überlegen Sie beim Erstellen der Testfälle, was die Äquivalenzklassen und Grenzfälle sind. 



## Testcoverage 

Finden Sie heraus wie hoch Testabdeckung via Unittests für Ganttproject insgesamt, und insbesondere für Ihre Erweiterung ist. Wir empfehlen, dass Sie dafür das Tool [Jacoco](https://www.jacoco.org/jacoco/) verwenden. Dieses kann einfach als Gradle Plugin zum Projekt hinzugefügt werden (Siehe diese [Dokumentation](https://docs.gradle.org/current/userguide/jacoco_plugin.html])).

## Automatisiertes Reporting via Travis und Codecov (Freiwillig)
Wenn Sie möchten, können Sie das Erstellen der Coverage Reports via Travis automatisieren und via Codecov . Wie man Jacoco Coverage Reports via Gradle, Travis, und Codecov automatisiert erstellt ist [hier](https://vorba.ch/2015/java-gradle-travis-jacoco-codecov.html) beschrieben.

