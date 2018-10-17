# Übungsblatt 5: Interne Datenstrukturen, Bugfix

* Dieses Übungsblatt sollte bis am 23. Oktober 2018 bearbeitet werden.  
* Abgabe via Pull Request bis spätestens 23. Oktober, 23.55.

## Einführung

In dieser Übung werden sie einige wichtige Datenstrukturen von Ganttproject kennenlernen.
Ausserdem werden Sie ihre erste Verbesserung vornehmen.

#### 1. Vorbereitung

Da wir die Änderungen der letzten Übung hier nicht benötigen, starten wir wieder vom Master Branch. 

Synchronisieren Sie ihr Repository mit den Änderungen vom *upstream* Repository, wie in [Übung 2](../../week2/exercises/practical-exercises.html) beschrieben.

Wie immer erstellen wir für unsere Änderungen einen lokalen Featurebranch und wechseln in diesen:

```
git branch uebung5     
git checkout uebung5
```

## Aufgabe 1. Erstellen Sie programmatisch einen Projektplan

Das Ziel dieser Übung ist es, dass Sie programmatisch einen Projektplan in Ganttproject erstellen, der gewisse Eigenschaften erfüllt. Diese Eigenschaften haben wir bereits mit Unit Tests spezifiziert. Sie müssen unsere Unittest aber zuerst noch in Ihr Repository bringen. 
Die machen Sie mit
```
git pull upstream exercise_5_unittests
```

Die Spezifikation durch die Unit Tests finden sie in der Klasse
```
biz.ganttproject.test.swengtests.ProjectplanCreationTests;
```

Führen Sie die Unit Tests aus. Sie können diese entweder direkt in IDEA ausführen (Entsprechende Klasse öffnen und drücken des Run Buttons) oder von der Kommandozeile mittels
```
gradlew test
```

In beiden Fällen sollten Sie sehen, dass 5 Tests fehlschlagen. 

#### Ihre Aufgabe
Ihre Aufgabe ist es, die Methode ```createPlan``` der Klasse ```ProjectplanCreationTests``` so zu implementieren, 
dass alle Tests erfolgreich durchlaufen. 

#### Tip 1: 
Um zu sehen, wie Sie in Ganttproject Tasks programmatisch erstellen, schauen Sie sich am besten andere Unit Tests an. Viele Beispiele finden Sie im Package
```biz.ganttproject.test``` und insbesondere in der Klasse ```TestLocalCriticalPath```.

#### Anmerkung 1: 
Unser Vorgehen hier entspricht dem "Test First Ansatz" (auch bekannt als "Test driven development"). Dabei wird das gewünschte Verhalten zuerst mittels Unit tests spezifiziert, und danach die Implementation angepasst, bis die Testfälle erfüllt sind.


#### Anmerkung 2:
Der Hauptzweck von Unit Tests ist, gewisse Programmeigenschaften automatisch zu testen. Wie sie in dieser Übung sehen, sind sie aber auch sehr hilfreich um zu verstehen, wie die Klassen eines Programms genutzt werden sollen. Gut geschriebene Unit Tests sind also eine Form von Dokumentation. Diese Art Dokumentation hat den Vorteil,
dass sie immer mit den Klassen synchronisiert ist, da ansonsten das Projekt nicht kompilieren oder die Unit Tests fehlschlagen würden.


## Bugfix für Ganttproject

Lesen Sie sich die Diskussion in diesem [Issue](https://github.com/bardsoftware/ganttproject/issues/1597) durch.

Versuchen Sie das Problem zu reproduzieren und implementieren Sie den vorgeschlagenen Lösungsansatz. 

*Tip: Der Bereich im Ganttproject, in dem die Milestones angezeigt werden, nennt sich *timeline**.

### Abgabe
Die Abgabe der Übung erfolgt durch push vom entsprechenden Branch: 
```
git push origin uebung5
``` 
und entsprechenden Pull Request, bei dem Sie 
 ```michaelPluess``` und ```schoenja``` als Reviewer angeben.
(Details dazu finden Sie in [&Uuml;bungsblatt 2](https://unibas-sweng.github.io/software-engineering/week2/practical-exercises.html)).
