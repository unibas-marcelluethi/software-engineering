---
layout: default
title : Woche 5
---
# Übungsblatt 5: Eine erste Erweiterung


* Dieses Übungsblatt sollte bis am 22. Oktober 2019 bearbeitet werden.  
* Abgabe via Pull Request bis spätestens 22. Oktober, 23.55.



## Einführung


In dieser Übung werden Sie eine komplette (jedoch sinnfreie) Erweiterung an Jabref vornehmen. 
Ihre Erweiterung soll erkennen, dass das Paper "No Silver Bullet" von Fred Brooks zur Datenbank hinzugefügt wurde. Wenn das Paper hinzugefügt wird soll eine Dialogbox angezeigt werden. 
Diese Funktion soll sich via den *Preferences* an und ausschalten lassen. 

In den folgenden Aufgaben entwickeln Sie diese Erweiterung Schritt für Schritt. 



## Aufgabe 0: Vorbereitung

####  Erstellen eines Feature branch

Da wir die Änderungen der letzten Übung hier nicht benötigen, starten wir wieder vom Masterbranch. 
```
git checkout master
```

Synchronisieren Sie ihr Repository mit den Änderungen vom *upstream* Repository, wie in [Übung 2](../../week2/exercises/practical-exercises.html) beschrieben  und pushen Sie den aktualisierten masterbranch auf ihr github repository
```
git push origin master
```

Wie immer erstellen wir zuerst für unsere Änderungen einen lokalen Featurebranch und wechseln in diesen:

```
git branch uebung5
git checkout uebung5
```

#### Lesen der Jabref Dokumentation

Wir werden in dieser Übung einige zentrale Mechanismen von JabRef kennenlernen. Diese Sind auf dem JabRef Wiki Dokumentiert.
Verschaffen Sie sich bitte einen Überblick über die wichtigsten Konzepte die in den [Code-HowTos](https://github.com/JabRef/jabref/wiki/Code-Howtos) von JabRef besprochen werden. 
Kommen Sie später in den Übungen darauf zurück wenn Sie an einem bestimmten Konzept arbeiten. 
Lesen Sie auch die [High-Level Dokumentation](https://github.com/JabRef/jabref/wiki/High-Level-Documentation).



## Aufgabe 1: Arbeiten mit dem Eventbus

In dieser Aufgabe nutzen Sie den EventBus. Erstellen Sie eine neue Klasse ```SilverBulletHandler``` in einem neuen Package ```org.jabref.gui.silverbullet```.
Diese Klasse soll auf auf Events vom Typ ```EntryAddedEvent``` und ```EntryChangedEvent``` reagieren. Wenn immer ein solches Event von Jabref generiert wird, soll 
die Meldung "Entry Added" sowie der Titel des entsprechenden Eintrags auf der Konsole (mit ```System.out.println```) ausgebgeben werden. 

*Tipp:* Als Vorlage schauen Sie sich an, wie dies für die Klasse ```AutoCompleteUpdater``` implementiert ist. Nutzen Sie auch die Funktion *Find Usages*, die Sie durch das Context Menu in Intellij erreichen können um herauszufinden, wo eine bestimmte Funktionalität benutzt wird. 

Committen Sie Ihre Änderungen.



## Aufgabe 2: Arbeiten mit dem Logger

In einem realen Projekt wollen Sie nicht Meldungen  mit ```System.out.println``` auf die Konsole ausgeben. Stattdessen verwendet man ein logging System um Meldungen auszugeben. 
Ändern Sie die Ausgabe so ab, dass der Logger verwendet wird. Die Logging nachrichten sollen mit dem Level ```info``` gelogged werden. 


Schauen Sie sich danach die Datei ```log4j2.xml``` an, die Sie im Verzeichnis ```src\main\resources\``` finden. In dieser Datei können Sie den Logging Level verändern. 
Setzen Sie den Logging Level für ```org.jabref``` von ```Info``` auf ```Debug```? Was beobachten Sie wenn Sie JabRef starten?

Committen Sie Ihre Änderungen.


## Aufgabe 3: Anzeigen eines Infodialogs

Als nächsten passen Sie die Klasse ```SilverBulletHandler``` so an, dass wenn im Titel des Eintrags der String "no silver bullet" steht, ein Infodialog mit der Meldung 
"Herzlichen Glückwunsch. Sie haben ein wichtiges Paper zu Ihrer Bibliothek hinzugefügt!"  angezeigt wird. 


Nutzen Sie dazu die Methode ```showInformationDialogAndWait``` der Schnittstelle ```DialogService```.  
*Tipp: * Nutzen sie auch hier wieder die Suchfunktionen und die Funktion *Find Usages* von IntellJ um relevante Codebeispiele zu finden. 

Committen Sie Ihre Änderungen.

## Aufgabe 4: Lokalisierung

Machen Sie den Dialog aus voriger Aufgabe mittels *Localization* mehrsprachig. Die Meldung sollten mindestens für die Sprachen Deutsch und Englisch implementiert werden. 
*Tipp: * Um die Mehrsprachigkeit zu testen können Sie die Sprache im Preferences Dialog umstellen. 

Committen Sie Ihre Änderungen.

## Aufgabe 5: Einfügen einer neuen Option in den Preferences Dialog

Fügen Sie eine neue Checkbox in den Reiter *Advanced* vom Preferences Dialog hinzu. 
Dieser soll in einer neuen Section mit dem Namen "Useless Features" eingefügt werden. 

Achten Sie darauf, dass die Einstellung korrekt gespeichert wird wenn Sie JabRef beenden. 

*Tipp:* Orientieren Sie sich an der Einstellung ```useUnitFormatter```.

Committen Sie Ihre Änderungen.

## Aufgabe 6: Abfragen der Preferences.

Äls letztes passen Sie die Klasse ```SilverBulletHandler``` so an, dass die Dialogbox nur angezeigt wird, wenn die entsprechende Checkbox in den Preferences gesetzt ist. 

Committen Sie Ihre Änderungen.


## Abgabe
Die Abgabe der Übung erfolgt durch push vom entsprechenden Branch: 
```
git push origin uebung5
``` 
und entsprechenden Pull Request. Geben Sie bitte das Team ```sweng-assistants-hs19``` oder ```clemensBuechner``` und ```schoenja``` als Reviewer an. 
(Details dazu finden sie in [&Uuml;bungsblatt 2](https://unibas-sweng.github.io/software-engineering/week2/practical-exercises.html)).
 
