---
layout: default
title : Woche 3
---
# Übung 3: Gradle und Code Reading

## Administratives

Eine Einführung in Gradle gibt es in der Übungsstunde vom 30. November. 
* Abgabe via Pull Request bis spätestens 7. Oktober, 23.59.


## Einführung

In dieser Übung werden Sie sich näher mit dem Buildsystem *Gradle* beschäftigen. Sie werden lernen, wie sie verschiedene Tasks mit Gradle ausführen, 
wie Sie Abhängigkeiten (Bibliotheken) zum Projekt hinzufügen, und wie sie ein neues Plugin hinzufügen können.

Im zweiten Teil der Übung werden Sie sich auch einen groben Überblick über den Code von Jabref verschaffen.

Nach dieser Übung sollten Sie:
* wissen wozu man so ein Buildsystem einsetzen kann
* die grundlegenden Operationen mit Gradle durchführen können.
* einen Überblick über die Struktur von Jabref haben.
* die Funktion ```Find Usage``` sowie einen Debugger einsetzen können, um zu verstehen, was ein Stück Code genau macht.


#### Vorbereitung

Da wir die Änderungen der letzten Übung hier nicht benötigen, starten wir wieder vom main Branch. Wir wechseln auf den main Branch mit
```
git checkout main
```

Um sicherzustellen, dass sie auf dem richtigen Repository sind, nutzen sie das Kommando
```
git branch
```
Sie sollten nun alle ihre Branches sehen. Vor dem aktiven Branch (also main) sollte nun ein Sternchen sein.

Synchronisieren Sie allfällige Änderungen im Upstream indem Sie folgende Befehle ausführen: 
```
git pull upstream main
git push origin main
```
(für Details, siehe [Übungsblatt 2](./first-changes)).

Erstellen Sie dann einen neuen Branch *uebung3* mit
```
git branch uebung3
git checkout uebung3
```

## 1. Buildsystem

#### 1.1 Build Dokumentation

Fügen Sie Ihrem Projekt eine neue Datei ```docs/BuildInstructions.md``` hinzu. Diese Datei soll für neue Benutzer dokumentieren, wie sie folgende Tasks mit Gradle durchführen.
1. Erstellen der API Dokumentation 
2. Eine Übersicht über alle von JabRef benutzten Bibliotheken erhalten
3. Testen ob der Code der Unit-Tests den Stilvorgaben entspricht
4. Erstellen eines Zip Files, welches nach dem Entpacken eine lauffähige Version von JabRef enthält.

Beschreiben Sie auch, was der Task ```generateSource``` macht.

*Tip: Mit ```gradlew tasks --all``` erhalten Sie einen Überblick über alle Gradle tasks die in JabRef zur Verfügung stehen.*

*Hinweis: Das erstellen der API Doc funktioniert in der aktuellen JabRef Version nicht fehlerfrei. Das entsprechende Kommando bricht nach einiger Zeit mit einer Fehlermeldung ab.*

#### 1.2 Hinzufügen einer neuen Bibliothek

Fügen Sie die Bibliothek *swenglib* (in der Version 2.0) zum Projekt hinzu, indem
Sie zusätzlich folgende Dependency angeben:

```
dependencies {
    implementation 'ch.unibas.informatik.sweng:swenglib:2.0'
}
```

Damit das Projekt gefunden wird, müssen Sie die von gradle durchsuchten Repositories um folgenden Eintrag ergänzen:
```
repositories {
    ...
    maven {
        url = uri("https://shapemodelling.cs.unibas.ch/repo")
    }
    ...
}
```
*Achtung: Beachten Sie unbedingt folgende Hinweise!*

* Wenn Sie eine Änderung an der Datei `build.gradle` machen, müssen Sie die Gradle Konfiguration in IntelliJ zuerst neu laden. Dies machen Sie indem Sie im Gradle-Fenster *Reload all Gradle Projects* wählen. Dies ist der Button mit den zwei entgegengesetzten Pfeilen. 
* JabRef nutzt das Java Modulsystem. Im Gegensatz zu herkömmlichen Java Projekten, bei denen es reicht, die Bibliothek in Gradle als dependency zu deklarieren, müssen Sie *swenglib* bei JabRef
zusätzlich als *Required Dependency* deklarieren. Dies machen Sie, indem Sie in der Datei ```module-info.java``` den Eintrag ```requires swenglib;``` hinzufügen.


Wenn das Hinzufügen funktioniert hat sollten Sie in der main Methode (wie finden Sie die?) folgenden Code zu JabRef hinzufügen können und das Projekt sollte entsprechend kompilieren.
```
import ch.unibas.informatik.sweng.HelloSweng;
String greeting = HelloSweng.greeting();
System.out.println(greeting);
```

Überprüfen Sie auch, dass sie mit ```CTRL + LeftMouseClick``` auf ```HelloSweng```, zum
Source Code der Bibliothek kommen.

#### 1.3 Maven Central

In der Java-Welt werden viele frei verfügbare Bibliotheken auf [Maven Central](https://search.maven.org) publiziert. 
Suchen Sie da nach dem Paket `opencsv`. Auf der Seite wird Ihnen auch angezeigt, wie Sie das Paket in Gradle als Abhängigkeit hinzufügen 
können. Finden Sie heraus wo und wie? Fügen Sie auch dieses Paket hinzu. Sie müssen auch hier wieder die Datei `module-info.java` anpassen, und bei `requires` den Namen des top-level Pakets von `opencsv` angeben (also `com.opencsv`). 

#### 1.4 Hinzufügen eines Plugins
Fügen Sie das Plugin [Gradle-License-Report](https://github.com/jk1/Gradle-License-Report) durch anpassen der Datei ```build.gradle```zum Projekt hinzu. Die entsprechenden Instruktionen finden Sie auf
der Github Seite vom [Gradle-License-Report](https://github.com/jk1/Gradle-License-Report).

Testen Sie das Plugin und schauen Sie sich den generierten Report an.
Fügen Sie einen Kommentar in der Datei ```build.gradle``` hinzu. Dieser soll ganz kurz (in Ihren eigenen Worten) dokumentieren, was das Plugin macht und wozu wir es brauchen.

## 2. Code lesen

In diesem Teil der Übung geht es darum, dass sie sich einen Grobüberblick über die Struktur des Jabref Codes erarbeiten sowie auch lernen, fremden Code zu lesen und zu verstehen. Ein gute Vorgehensweise ist Teile des Codes bei dieser Gelegenheit gerade zu dokumentieren.

#### 2.1 Dokumentieren von Packages

Lesen Sie den [Auszug aus dem Buch](https://adam.unibas.ch/goto_adam_file_1885896_download.html) Java By Comparison zum Thema API Doc.


Dokumentieren Sie dann die zwei folgenden Packages.

* org.jabref.cli
* org.jabref.model.database

Sie k&ouml;nnen diese mittels Javadoc dokumentieren, indem sie in jedes Verzeichnis eine Datei
```package-info.java``` erstellen, die wie folgt aussieht
```
/**
 * Hier kommt ihre Beschreibung
 */
package org.jabref.architecture; // package name
```

Vergessen sie nicht, diese Dateien mit dem ```git add``` command dem Repository hinzuzufügen.

*Beachten Sie:*
Um eine gute Zusammenfassung schreiben zu können müssen Sie sich einen groben Überblick verschaffen, was in den im Package enthaltenen Klassen passiert. Nutzen Sie dazu auch die Funktion ```Find Usages``` von IntelliJ, welche
Sie finden, wenn Sie einen Rechtsklick auf ein Symbol (also Klasse, Methode, Variable, ...) im Sourcecode machen.

#### 2.2 Dokumentieren einer Klasse

Schauen Sie sich die Klasse
```org.jabref.logic.protectedterms.ProtectedTermsLoader``` an. Dokumentieren Sie die Klasse selbst und die Methoden `addNewProtectedTermsList` und `getInternalLists` mit Javadoc. Folgen Sie dabei auch hier den im Buch beschriebenen Prinzipien.


Orientieren Sie sich auch hier an den Leitlinien im Buch [Java by Comparison](https://adam.unibas.ch/goto_adam_file_1885896_download.html). 

*Hinweis:* Nutzen Sie den Debugger um herauszufinden, welche Werte die einzelnen Felder/Variablen in der Klasse annehmen. Dies kann Ihnen wichtige Informationen geben. 


### Abgabe
Die Abgabe der Übung erfolgt durch push vom Übungs-Branch:
```
git push origin uebung3
```
und entsprechenden Pull Request. Geben Sie hier den Ihnen zugeordneten Reviewer (siehe [diese Liste](https://adam.unibas.ch/goto_adam_file_1879922_download.html)) an. 
(Details dazu finden sie in [&Uuml;bungsblatt 2](./first-changes)).

