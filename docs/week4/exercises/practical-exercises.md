---
layout: default
title : Woche 4
---

# Übungsblatt 4: Unit Tests und Continuous Integration

* Dieses Übungsblatt muss bis spätestens 15. Oktober, 23.59 bearbeitet und via Pull Request abgegeben werden. 



## Einführung

In dieser Übung werden Sie lernen wie man mit Unit Tests arbeitet und wie Sie Builds und Tests mit
 [Travis CI](https://www.travis-ci.com) automatisieren können. 
Neben dem kennenlernen dieser wichtigen Werkzeuge, werden sie bei dieser Übung auch ihr Verständnis vom JabRef Code vertiefen. 


#### 1. Vorbereitung

Da wir die Änderungen der letzten Übung hier nicht benötigen, starten wir wieder vom Master branch. Wir wechseln auf den Masterbranch mit 
```
git checkout master
```

Synchronisieren Sie ihr Repository mit den Änderungen vom *upstream* Repository, wie in [Übung 2](../../week2/exercises/practical-exercises.html) beschrieben  und pushen Sie den aktualisierten master branch auf ihr github repository
```
git push origin master
```


#### Vorbereitung

Wie immer erstellen wir zuerst für unsere Änderungen einen lokalen Featurebranch und wechseln in diesen:

```
git branch uebung4     
git checkout uebung4
```


## Unittests

Im ersten Teil der Übung werden Sie eigene Unittest für die Klasse *BibDatabase* hinzufügen.  Dabei werden wir 

* sehen wie komplexe Software mit Unittests getesten werden kann
* nutzen dass Unittests Beispiele für die korrekte Verwendung der Klassen repräsentieren, und somit auch 
als Dokumentation dienen.
* einige zentrale Datenstrukturen von Jabref kennenlernen.

*Anmerkung:* Jabref verfügt über eine hervorragende Testsuite, mit über 5000 Unittests. Auch die Klasse *BibDatabase* ist bereits gut getestet. Unser Ziel ist nicht die Qualität der Tests
oder die Testabdeckung zu verbessern, sondern das System kennenzulernen. Entsprechend sind die von Ihnen zu entwickelnden Unittests nicht ideale Beispiele für gutes Softwaretesting. 

*Hinweis:* Wenn Sie mit dem Bibtexformat, welches von Latex benutzt wird um Referenzen zu verwalten noch nicht vertraut sind, finden Sie [hier](http://www.bibtex.org/) alle Informationen.

#### Schreiben eigener Unittests
Schauen Sie sich die Klasse *BibDatabase* und die  vorhandenen Unittests (in der Klasse *BibDatabaseTest*) an. Stellen Sie sicher, dass Sie verstehen, wozu die Klasse im Programm benutzt wird. 

Erstellen Sie dann eine eigene Testklasse *MyDatabaseTests* (im selben Verzeichnis wie die Klasse *BibDatabaseTest*). 

* Schreiben Sie die Methode ```setup``` die vor jeder Ausführung eines Unittests ausgeführt werden 
soll. In dieser Methode öffnen Sie die bestehende Datenbank ```testjabref.bib``` welche Sie im 
Verzeichnis ```src/test/resources/testbib``` finden.
Sie finden Details wie sie das machen in der Klasse *OpenDatabaseTests*.

* Schreiben Sie dann einen Test ```correctlyCountsNumberOfEntries``` welcher prüft, dass die 
  Anzahl Einträge in der Datenbank richtig angegeben werden.
* Schreiben Sie einen Test ```getEntriesSortedOnFieldYear``` welches prüft, ob die Einträge 
  mit der Methode ```getEntriesSorted``` korrekt nach Jahr sortiert werden können.  
* Schreiben Sie einen Test ```getEntryByCitationKeyFindsEntry``` welcher überprüft ob für einen gegebenen 
Schlüssel (Citationkey) der richtige Eintrag zurückgegeben wird. Schreiben Sie auch einen Test ```getEntryByKeyDoesNotFindIndexistentEntry```, welcher prüft ob sich die Methode richtig verhält wenn 
der gesuchte Schlüssel nicht in der Datenbank ist. 
* Schreiben Sie einen Test ```newlyInsertedArticleCanBeRetrievedByCitationKey``` welcher einen neuen Artikel in die Datenbank schreibt. Der neue Artikel soll unten angegebenem  Bibtex Eintrag entsprechen. Es soll dabei überprüft
werden, ob der Artikel korrekt eingefügt und alle Felder richtig abgebildet wurden. *Tipp:* Schauen Sie sich auch die Tests in der Klasse ```BibEntryTests``` an.
 
```
@article{lamport1978time,
  title={Time, clocks, and the ordering of events in a distributed system},
  author={Lamport, Leslie},
  journal={Communications of the ACM},
  volume={21},
  number={7},
  pages={558--565},
  year={1978},
  publisher={ACM}
}
``` 

Die Tests können Sie via der IDE einzeln ausführen, indem Sie auf den grünen Pfeil neben dem Test klicken. 
Mit Gradle können Sie Ihre neuen Tests einzeln ausführen, indem Sie ```gradlew test --tests org.jabref.model.database.MyDatabaseTests``` aufrufen.

Wenn Sie alle Tests erfolgreich geschrieben haben, fügen Sie die neue Datei (mit *git add*) dem Repository hinzu und committen Ihre Änderungen.

<!-- 
* Fügen Sie mindestens 2 sinnvolle Tests für die Methode ```BibDatabase.getEntryByKey``` zu der Datei ```BibDatabaseTest``` hinzu. 
* Fügen Sie mindestens 2 sinnvolle Tests für die Methode ```BibDatabase.getReferencedEntry``` zu der Datei ```BibDatabaseTest``` hinzu. 

public class GroupTreeNode extends TreeNode<GroupTreeNode>
package org.jabref.model.groups;
Jabref preferencefilter
package org.jabref.model.ChainNode

package org.jabref.logic.citationstyle.discoverCitationStyles
-->

    

## Travis CI

In diesem Teil der Übung lernen Sie das System Travis CI kennen. 

Suchen Sie im Internet nach Travis CI und versuchen Sie herauszufinden was das System macht. 
Lösen sie parallel dazu auch die nächste Aufgabe. Danach sollten Sie in der Lage sein folgende
Fragen zu beantworten:
1. Was ist Continuous integration? Wozu setzt man es ein?
2. Was ist Travis?
3. Was macht die Datei *.travis.yml*, die sie im Wurzelverzeichnis ihres Projekts finden?
4. Was macht der Eintrag *branches* in der Datei *.travis.yml*
5. Was ist eine Buildmatrix?
6. Was passiert, wenn Sie einen push auf ihr Repository machen?

Schreiben sie ihre Antworten in eine Textdatei Datei die sie ```uebung4.md``` nennen und fügen Sie 
diese zum Projekt hinzu.  


#### Travis aktivieren

Damit sie Travis auch für ihr Projekt verwenden können, müssen sie dies erst einrichten. Dazu gehen sie auf die die [Webseite](https://www.travis-ci.com) von Travis und melden sich mit ihrem Github Account an. Sie erhalten die Option Travis für eines oder alle Ihrer Github Repositories zu aktivieren. Aktivieren Sie 
```jabref``` und erlauben Sie auch, dass Travis die Github integration vornimmt. 


*Anmerkung: Travis ist ein kommerzieller Service. Sie haben aber 99 Trial runs zur Verfügung. Dies sollte für diesen Kurs reichen. Für Open Source Projekte ist Travis aber gratis nutzbar. Deshalb ist Travis der Standard Service in der Open Source Entwicklung*.

*Anmerkung 2: Wenn Sie sich für das [Github Educational Pack](https://education.github.com/pack) registriert haben, haben Sie gratis builds für private repositories. Falls Ihr Fork public ist, müssen sie auf www.travis-ci.org wechseln. Die beiden Seiten sind identisch und werden von derselben Firma betrieben.*.

* Fügen Sie ihren Branch (also *uebung4*) im Abschnitt *branches* in der Datei *.travis.yml* hinzu. 
* Probieren Sie aus was passiert wenn Sie eine Änderung machen, die zu einem Fehlschlagen eines Unittests führt und diese committen und auf Github pushen. Was passiert bei Travis? 
* Gehen Sie auf Github und machen Sie einen Pull Request mit diesem fehlerhaften Unittest (Bitte Unittest auf den Master branch ihres eigenen Repositories). Was fällt Ihnen auf?
* Korrigieren Sie ihren Fehler wieder und pushen Sie nochmals.




### Abgabe
Die Abgabe der Übung erfolgt durch push vom entsprechenden Branch: 
```
git push origin uebung4
``` 
und entsprechenden Pull Request. Geben Sie bitte das Team ```sweng-assistants-hs19``` oder ```clemensBuechner``` und ```schoenja``` als Reviewer an. 
 (Details dazu finden sie in [&Uuml;bungsblatt 2](https://unibas-sweng.github.io/software-engineering/week2/practical-exercises.html)).
 
