# Übung 3 Gradle und Code Reading

## Administratives

* Dieses Übungsblatt sollte bis am 9. Oktober 2018 bearbeitet werden.  
* Abgabe via Pull Request bis spätestens 9. Oktober, 23.59.


## Einführung

In dieser Übung werden Sie sich näher mit dem Buildsystem *Gradle* beschäftigen. Sie werden lernen, wie sie verschiedene Tasks mit Gradle ausführen, wie Sie Abhängigkeiten (Bibliotheken) zum Projekt hinzufügen, und wie sie ein neues Plugin hinzufügen können. 

Im zweiten Teil der Übung werden Sie sich auch einen groben Überblick über den Code von Ganttproject verschaffen. 

Nach dieser Übung sollten Sie:
* wissen wozu man so ein Buildsystem einsetzen kann
* die grundlegenden Operationen mit Gradle durchführen können.
* einen Überblick über die Struktur von Ganttproject haben. 
* einen Debugger einsetzen können, um zu verstehen, was ein Stück Code genau macht. 


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

Synchronisieren Sie allfällige Änderungen im Upstream wie im letzten Übungsblatt beschrieben. 

Erstellen Sie dann einen neuen Branch *uebung3* mit
```
git branch uebung3
git checkout uebung3
```

## 1. Buildsystem

#### 1.1 Build Dokumentation 

"Fügen Sie Ihrem Projekt eine neue Datei ```BuildInstructions.md``` Diese Datei soll für neue Benutzer dokumentieren, wie sie folgende Tasks mit Gradle durchführen. 
1. Kompilieren des Projekts
2. Ausführen von Ganttproject
3. Ausführen aller Unit Tests
4. Generieren der Javadocs vom Projekt
5. Erstellen eines Projekts für Eclipse
6. Erstellen eines Zip Files, welches nach dem Entpacken eine lauffähige Version von Ganttproject enthält. 

*Tip: Mit ```gradlew tasks --all``` erhalten Sie einen Überblick über alle Gradle tasks die in Ganttproject zur Verfügung stehen.*



#### 1.2 Hinzufügen einer neuen Bibliothek

Fügen Sie die Dependency *swenglib* (in der Version 1.0) zum Projekt hinzu. Das Paket liegt im Repository [JCenter](https://bintray.com/bintray/jcenter).

*Tip:* Sie können auf [JCenter](https://bintray.com/bintray/jcenter) nach dem Paket suchen und damit auf die entsprechende Seite für swenglib gelangen. Auf dieser Seite finden Sie Code-snippets, 
wie Sie diese zu den populären Buildsystemen (wie Maven oder Gradle) hinzufügen. 

*Tip:* Die Dependencies von Ganttproject werden nicht direkt in die Datei *build.gradle* hinzugefügt, sondern in einer Separaten Datei. In ```build.gradle``` steht aber, wo sie diese Datei finden.


Wenn das hinzufügen funktioniert hat sollten Sie folgenden Code zu Ganttproject hinzufügen können und das Projekt sollte entsprechend kompilieren. 
```
String greeting = HelloSweng.greeting();
```

Überprüfen Sie auch, dass sie mit ```CTRL + LeftMouseClick``` auf ```HelloSweng```, zum 
Source Code der Bibliothek kommen. 

#### 1.3 Hinzufügen eines Plugins
Fügen Sie das Plugin [Stats Gradle Plugin](https://github.com/aalmiray/stats-gradle-plugin) durch anpassen der Datei ```build.gradle```zum Projekt hinzu. Die entsprechenden Instruktionen finden Sie auf
der Github Seite vom [Stats Gradle Plugin](https://github.com/aalmiray/stats-gradle-plugin).
Nachdem das Plugin korrekt hinzugefügt wurde, sollten Sie durch folgenden Befehl eine Statistik über die Anzahl Dateien und Codezeilen ausgeben können:
```
gradlew stats
```


## 2. Code lesen

In diesem Teil der Übung geht es darum, dass sie sich einen Grobüberblick über die Struktur des Ganttproject Codes erarbeiten sowie auch lernen, fremden Code zu lesen und zu verstehen.

#### Dokumentieren sie ein Package

Dokumentieren Sie die folgenden Packages mittels Javadoc:
* biz.ganttproject.chart
* biz.ganttproject.export
* biz.ganttproject.parser

Sie k&ouml;nnen diese mittels Javadoc dokumentieren, indem sie in jedes Verzeichnis eine Datei
```package-info.java``` erstellen, die wie folgt aussieht
```
/**
 * Hier kommt ihre Beschreibung
 */
package biz.ganttproject.chart; // package name 
```
Die Beschreibung sollte in max 2-3 Sätzen den Zweck des Packages zusammenfassen.
Vergessen sie nicht, diese Dateien mit dem ```git add``` command dem Repository hinzuzufügen.


#### Dokumentieren einer Klasse

Dokumentieren sie die Klasse 
```biz.ganttproject.task.TaskMutator``` sowie alle Methoden mittels Javadoc. Beschreiben sie in jeweils 2-3 Sätzen was die Klasse sowie jede Methode macht. 


### Abgabe
Die Abgabe der Übung erfolgt durch push vom entsprechenden Branch: 
```
git push origin uebung3
``` 
und entsprechenden Pull Request, bei dem sie 
 ```michaelPluess``` und ```schoenja``` als Reviewer angeben.
(Details dazu finden sie in [&Uuml;bungsblatt 2](https://unibas-sweng.github.io/software-engineering/week2/practical-exercises.html)).
 
