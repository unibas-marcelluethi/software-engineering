# Übungsblatt 4: Unit Tests und Continuous Integration

* Dieses Übungsblatt sollte bis am 16. Oktober 2018 bearbeitet werden.  
* Abgabe via Pull Request bis spätestens 16. Oktober, 23.59.

## Einführung

In dieser Übung werden Sie lernen wie Sie ihr Projekt mit [Travis CI](https://www.travis-ci.com) automatisiert testen können und wie man mit Unit Tests arbeitet. 
Neben dem kennenlernen dieser wichtigen Werkzeuge, werden sie bei dieser Übung auch ihr Verständnis vom Ganttproject Code vertiefen. 


#### 1. Vorbereitung

Da wir die &Auml;nderungen der letzten &Uuml;bung hier nicht ben&ouml;tigen, starten wir wieder vom Master branch. Wir wechseln auf den Masterbranch mit 
```
git checkout master
```

Synchronisieren Sie ihr Repository mit den Änderungen vom *upstream* Repository, wie in [Übung 2](../../week2/exercises/practical-exercises.html) beschrieben.



#### Vorbereitung
Wie immer erstellen wir zuerst f&uuml;r unsere &Auml;nderungen einen lokalen Featurebranch und wechseln in diesen:

```
git branch uebung3     
git checkout uebung3
```


## Unit Tests

Im Folgenden werden Sie neue Unit Tests für die Klasse ```RoleSetImpl``` von Ganttproject implementieren. In der Testklasse ```RoleSetTest``` finden Sie bereits
einige solche Tests. Nehmen Sie diese als Vorlage für Ihre eigenen Tests.

Wir möchten, dass die Methode ```getRoleSet``` robust ist gegenüber falschen Eingaben. Schreiben Sie Tests, welche die Methode mit jeweils mit folgenden Argumenten aufruft
* einem existierenden Rollen namen (Spezifikation: hier sollte das richtige RoleSet für den angegebenen Namen zurückgegeben werden)
* einem nicht existierenden namen (Spezifikation: hier sollte ein leeres Set zurückgegeben werden)
* ```null``` (Spezifikation: hier sollte ein leeres Set zurückgegeben werden)

Falls ein Test fehlschlägt korrigieren Sie die Implementation entsprechend. 

Schreiben Sie jeweils mindestens zwei sinnvolle Unittest für die folgenden Methoden von RoleSetImpl 

* ```clear()```
* ```createRoleSet(String name)```
* ```importData(RoleManager original)```


## Travis CI

*Finden sie heraus was Travis CI ist und wozu es gebraucht wird und beantworten sie folgende Fragen:*

1. Was ist Continuous integration? Wozu setzt man es ein?
2. Was ist Travis?
3. Was macht die Datei .travis.yml, die sie im Wurzelverzeichnis ihres Projekts finden?

Schreiben sie ihre Antworten in eine Textdatei Datei die sie ```uebung3.md``` nennen. Die Datei k&ouml;nnen sie dem Projekt mit
```
git add uebung3.md
```
hinzuf&uuml;gen. 

*Tip: Lösen sie parallel dazu auch die nächste Aufgabe. Dies sollte ihr Verständnis für diesen Service verbessern.*


#### Travis aktivieren

Damit sie Travis auch f&uuml;r ihr Projekt verwenden k&ouml;nnen, m&uuml;ssen sie dies erst einrichten. Dazu gehen sie auf die die [Webseite](https://www.travis-ci.com) von Travis und melden sich mit ihrem Github Account an. Nach einer Weile sollten sie nun ihre Github Repositories sehen. Sie aktivieren Travis, indem sie beim entsprechenden Repository den Switch aktivieren (siehe Bild)


![img](images/travis.png)

*Anmerkung: Travis ist ein kommerzieller Service. Sie haben aber 99 Trial runs zur Verfügung. Dies sollte für diesen Kurs reichen. Für Open Source Projekte ist Travis aber gratis nutzbar. Deshalb ist Travis der Standard Service in der Open Source Entwicklung*.

*Anmerkung 2: Wenn Sie sich für das [Github Educational Pack](https://education.github.com/pack) registriert haben, haben Sie gratis builds für private repositories. Falls Ihr Fork public ist, müssen sie auf www.travis-ci.org wechseln. Die beiden Seiten sind identisch und werden von derselben Firma betrieben.*.

Probieren sie aus was passiert wenn sie einen Änderung machen (und auf Github pushen), die zu einem fehlschalgen eines Unittests führt. Korrigieren Sie ihren Fehler wieder (Commit und push nicht vergessen).

#### Status batch ersetzen
Auf der &Uuml;bersichtsseite von Travis sehen sie oben einen "Batch" (siehe Screenshot)
![img](images/travis-batch.png)
Wenn sie auf diesen Klicken sehen sie eine URL. Diese URL zeigt auf ein kleines Bild (genannt Batch) welches den aktuellen Buildstatus von Travis anzeigt. 
Es ist &uuml;blich, dieses Bild in die Datei ```Readme.md``` des Projekts einzuf&uuml;gen. Im Falle von Ganttproject wurde dies schon gemacht - jedoch ist die URL falsch. 

* Ersetzen sie den Batch mit der richtigen URL. 



### Abgabe
Die Abgabe der Übung erfolgt durch push vom entsprechenden Branch: 
```
git push origin uebung3
``` 
und entsprechenden Pull Request, bei dem sie 
 ```michaelPluess``` und ```schoenja``` als Reviewer angeben.
(Details dazu finden sie in [&Uuml;bungsblatt 2](https://unibas-sweng.github.io/software-engineering/week2/practical-exercises.html)).
 

 
