# &Uuml;bung 4 Ganttproject: Interne Datenstrukturen, Unit Tests und ein Bugfix.  

## Administratives

* Dieses &Uuml;bungsblatt sollte bis am 31. Oktober 2017 bearbeitet werden. 
    * Abgabe via Pull Request bis sp&auml;testens 23.59.
* Fragen und Probleme k&ouml;nnen in den  &Uuml;bungsstunden am 25 Oktober besprochen werden.   


## Einf&uuml;hrung
In dieser &Uuml;bung werden Sie einige der Kern-Datenstrukturen in Ganttproject, insbesondere das manager von Tasks und Projektpl&auml;nen anschauen. Dabei werden sie lernen, wie sie bestehende Unit Tests als Beispielcode und Dokumentation verwenden k&ouml;nnen. Diese &Uuml;bung ist diesbez&uuml;glich eine wichtige Vorbereitung f&uuml;r ihr eigenes Projekt. Sie werden ebenfalls ein [Github Issue](https://github.com/bardsoftware/ganttproject/issues/1382) fixen und automatisierte Tests dafür schreiben.

## Vorbereitung

Wechseln sie wieder auf ihren Masterbranch:
```
git checkout master
```

Synchronisieren Sie das Repository mit dem Upstream Repository, welches sie in [&Uuml;bung 3](https://unibas-sweng.github.io/software-engineering/exercises/03-gant-travis-codereading.html) hinzugef&uuml;gt haben. 
```
git pull upstream master
```
Obiges Kommando synchronisiert die &Auml;nderungen die im Master branch des Ursprungsrepositories (upstream) mit ihrem Masterbranch.
Zus&auml;tzlich haben wir f&uuml;r diese &Uuml;bung auch noch einen neuen Branch ```exercise_4_ganttproject``` vorbereitet. 
Erstellen sie bei ihnen einen neuen Branch ```exercise_4_ganttproject``` und wechseln sie in diesen:
```
git branch exercise_4_ganttproject
git checkout exercise_4_ganttproject
```
Danach "pullen" sie die &Auml;nderungen aus dem Ursprungsrepository mit
```
git pull upstream exercise_4_ganttproject
```
Der letzte commit, den sie mit
```
git log
```
sollte wie folgt aussehen
```
commit 7e17ab7094b33e2e44af0652bc606fa74291a16e
Author: Marcel Luethi <marcel.luethi@unibas.ch>
Date:   Mon Oct 16 11:25:28 2017 +0200

    created unittests for exercise 4 (unit tests are failing)

```


## Aufgabe 1. Erstellen sie programmatisch einen Projektplan

Das Ziel dieser &Uuml;bung ist es, dass sie programmatisch einen Projektplan in Ganttproject erstellen, der gewisse Eigenschafter erf&uuml;llt. Diese Eigenschaften haben wir bereits mit Unit Tests spezifiziert. 
Die Spezifikation durch die Unit Tests finden sie in der Klasse
```
net.sourceforge.ganttproject.test.swengtests.ProjectPlanCreationTests;
```

F&uuml;hren Sie die Unit Tests aus. Sie k&ouml;nnen diese entweder direkt in IDEA ausf&uuml;hren (Entsprechende Klasse &ouml;ffnen und dr&uuml;cken des Run Buttons) oder von der Kommandozeile mittels
```
cd ganttproject-builder
gradlew test
```

In beiden f&auml;llen sollten sie sehen, dass 5 Tests fehlschlagen. 

#### Ihre Aufgabe
Ihre Aufgabe ist es die Methode ```createPlan``` der Klasse ```ProjectPlanCreationTests``` so zu implementieren, 
dass alle Tests wieder erfolgreich durchlaufen. 

#### Tip 1: 
Um zu sehen wie sie in Ganttproject Tasks programmatisch erstellen, schauen sie sich am besten andere Unit Tests
in Ganttproject an. Viele Beispiele finden sie im Package
```package net.sourceforge.ganttproject.test.tasks``` an und insbesondere in der Klasse ```TestLocalCriticalPath```.

#### Tip 2: 
In diesen Klassen werden selbst wieder Hilfsmethoden verwendet um Tasks zu definieren. Sie k&ouml;nnen in Idea mit ```Ctrl + LeftMouseClick``` zur Implementation springen.

#### Anmerkung 1: 
Unser Vorgehen hier entspricht dem "Test First Ansatz" (auch bekannt als "Test driven development"). Dabei wird das gew&uuml;nschte Verhalten zuerst mittels Unit tests spezifiziert, und danach die Implementation angepasst bis die Testf&auml;lle erf&uuml;llt sind.



#### Anmerkung 2:
Der Hauptzweck von Unit Tests ist gewisse Programmeigenschaften automatisch zu testen. Wie sie in dieser
&Uuml;bung sehen, sind sie aber auch sehr hilfreich um zu verstehen, wie die Klassen eines Programms genutzt werden sollen. Gute geschriebene Unit Tests sind also eine Form von Dokumentation. Diese Art Dokumentation hat den Vorteil,
dass sie immer mit den Klassen synchronisiert ist, da ansonsten das Projekt nicht kompilieren oder die Unit Tests fehlschlagen w&uuml;rden.




## Aufgabe 2. Github Issue fixen
 
 
### Vorbereitung
Schauen Sie sich das [Issue](https://github.com/bardsoftware/ganttproject/issues/1382) an. 
Probieren Sie, das Issue zu reproduzieren. Bevor Sie mit dem programmieren beginnen, machen sie sich über die momentane Export-funktionalität schlau. 
Kann man die Farbe eines Tasks in anderen Formaten als CSV bereits exportieren? Wie konfigurierbar ist die CSV-Exportierung momentan? Erstellen Sie in der UI Tasks, exportieren Sie diese und schauen Sie, was bereits f&uuml;r Funktionalit&auml;t implementiert ist.

Suchen sie nachher im Code: Was passiert beim Export eines CSV-Dokumentes? Wie werden Spalten wie 'Name' exportiert? Wenn Sie das Gef&uuml;hl haben, einen ersten &Uuml;berblick zu haben, beginnen Sie mit der Implementierung.

### Schreiben eines Unit Tests
Schreiben sie einen oder mehrere Unit Test der eine Korrekte l&ouml;sung des Problems testet. Da der Fehler im Moment existiert, sollte der Unit Test noch fehlschlagen. 
 

### Implementierung
Beheben Sie das Problem. Am Ende sollten Sie in der Lage sein, ein CSV-Dokument zu exportieren, welches für jeden Task auch die Farbe speichert. Dieses Dokument sollten sie dann importieren können und Unit-Tests für den Import und Export geschrieben haben

### Tipps
* Testen Sie __nicht__ mit der Default-Farbe.
* Die Klasse ColorConvertion.java macht Serialisierung und Deserialisierung von Farben einfach.
* Ganttproject-Options werden als .ganttproject-File in Ihrem Heimverzeichnis gespeichert. Sie müssen dieses File löschen, wenn sie etwas an der Optionen-Generierung &auml;ndern.

### Abgabe
* L&ouml;sung des Problems inklusive Unit-Tests, welche zeigen dass das Feature richtig funktioniert.