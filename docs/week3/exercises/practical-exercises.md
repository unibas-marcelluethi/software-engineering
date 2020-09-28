---
layout: default
title : Woche 3
---
# Übung 3: Gradle und Code Reading

## Administratives

* Dieses Übungsblatt sollte bis am 6. Oktober 2020 bearbeitet werden.  
* Abgabe via Pull Request bis spätestens 6. Oktober, 23.59.


## Einführung

In dieser Übung werden Sie sich näher mit dem Buildsystem *Gradle* beschäftigen. Sie werden lernen, wie sie verschiedene Tasks mit Gradle ausführen, wie Sie Abhängigkeiten (Bibliotheken) zum Projekt hinzufügen, und wie sie ein neues Plugin hinzufügen können. 

Im zweiten Teil der Übung werden Sie sich auch einen groben Überblick über den Code von Jabref verschaffen. 

Nach dieser Übung sollten Sie:
* wissen wozu man so ein Buildsystem einsetzen kann
* die grundlegenden Operationen mit Gradle durchführen können.
* einen Überblick über die Struktur von Jabref haben. 
* die Funktion ```Find Usage``` sowie einen Debugger einsetzen können, um zu verstehen, was ein Stück Code genau macht. 


#### Vorbereitung

Da wir die Änderungen der letzten Übung hier nicht benötigen, starten wir wieder vom Master branch. Wir wechseln auf den Masterbranch mit 
```
git checkout master
```

Um sicherzustellen, dass sie auf dem richtigen Repository sind, nutzen sie das Kommando 
```
git branch
```
Sie sollten nun alle ihre Branches sehen. Vor dem aktiven Branch (also master) sollte nun ein Sternchen sein. 

Synchronisieren Sie allfällige Änderungen im Upstream wie im letzten Übungsblatt beschrieben und pushen Sie den aktualisierten master branch auf ihr github repository
```
git push origin master
```

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

Beschreiben Sie auch, was die Task ```generateSource``` macht. 


*Tip: Mit ```gradlew tasks --all``` erhalten Sie einen Überblick über alle Gradle tasks die in JabRef zur Verfügung stehen.*



#### 1.2 Hinzufügen einer neuen Bibliothek

Fügen Sie die Dependency *swenglib* (in der Version 2.0) zum Projekt hinzu. Das Paket liegt im Repository [JCenter](https://bintray.com/bintray/jcenter).

*Tip:* Sie können auf [JCenter](https://bintray.com/bintray/jcenter) nach dem Paket suchen und damit auf die entsprechende Seite für *swenglib* gelangen. Auf dieser Seite finden Sie Code-snippets, 
wie Sie diese zu den populären Buildsystemen (wie Maven oder Gradle) hinzufügen. 

*Achtung:* JabRef nutzt das Java Modulsystem. Im Gegensatz zu herkömmlichen Java Projekten, bei denen es reicht, die Bibliothek in Gradle als dependency zu deklarieren, müssen Sie *swenglib* bei JabRef 
zusätzlich als *Required Dependency* deklarieren. Dies machen Sie indem Sie in der Datei ```module-info.java``` den Eintrag ```requires swenglib;``` hinzufügen.

Wenn das hinzufügen funktioniert hat sollten Sie folgenden Code zu JabRef hinzufügen können und das Projekt sollte entsprechend kompilieren. 
```
import ch.unibas.informatik.sweng.HelloSweng;
String greeting = HelloSweng.greeting();
```

Überprüfen Sie auch, dass sie mit ```CTRL + LeftMouseClick``` auf ```HelloSweng```, zum 
Source Code der Bibliothek kommen. 


#### 1.3 Hinzufügen eines Plugins
Fügen Sie das Plugin [Stats Gradle Plugin](https://github.com/aalmiray/stats-gradle-plugin) durch anpassen der Datei ```build.gradle```zum Projekt hinzu. Die entsprechenden Instruktionen finden Sie auf
der Github Seite vom [Stats Gradle Plugin](https://github.com/aalmiray/stats-gradle-plugin).
Nachdem das Plugin korrekt hinzugefügt wurde, sollten Sie durch folgenden Befehl eine Statistik über die Anzahl Dateien und Codezeilen ausgeben können:
```
./gradlew stats
```


## 2. Code lesen

In diesem Teil der Übung geht es darum, dass sie sich einen Grobüberblick über die Struktur des Jabref Codes erarbeiten sowie auch lernen, fremden Code zu lesen und zu verstehen.

#### Dokumentieren sie ein Package

Schreiben Sie für jedes der folgenden Packages eine Kurzübersicht über deren Inhalt (ca. 2-4 Sätze):

* org.jabref.cli
* org.jabref.gui.desktop
* org.jabref.logic.pdf
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

*Beachten Sie:* Die Kommentare sollen nicht nur beschreiben, was man direkt aus dem Paketnamen ableiten kann. Kommentare im Stile von "org.jabref.logic.formatter enthält code für die formatierung" sind nicht hilfreich. 
Um eine gute Zusammenfassung schreiben zu können müssen Sie sich einen groben Überblick verschaffen, was in den im Package enthaltenen Klassen passiert. Nutzen Sie dazu auch die Funktion ```Find Usages``` von IntelliJ, welche
Sie finden, wenn Sie einen Rechtsklick auf ein Symbol (also Klasse, Methode, Variable, ...) im Sourcecode machen. 

#### Dokumentieren einer Klasse

Schauen Sie sich die Klasse
```org.jabref.logic.bibtex.BibEntryWriter;``` an. Schreiben Sie einen Klassenkommentar (d.h. die Klasse soll im Überblick beschrieben werden) und dokumentieren sie alle public Methoden dieser Klasse mittels JavaDoc. Dabei sollen auch alle Parameter und der Rückgabewert einer Methode kurz beschrieben werden. 

Beachten Sie: Kurze Kommentare (1-3 Sätze) reichen völlig aus. Jedoch bieten Kommentare, die nur den Methodennamen in einen Satz umwandeln keinerlei Mehrwert. 



### Abgabe
Die Abgabe der Übung erfolgt durch push vom Übungs-Branch: 
```
git push origin uebung3
``` 
und entsprechenden Pull Request. Als Reviewers geben Sie ```joeyzgraggen``` und ```guenesaydin``` an. 
(Details dazu finden sie in [&Uuml;bungsblatt 2](/../../week2/exercises/practical-exercises)).
 
