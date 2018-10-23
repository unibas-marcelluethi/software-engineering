# Zusatzblatt: Abstrakte Datentypen / Fehlerbehandlung in Modulen

## Administratives

Bei diesem Übungsblatt handelt es sich um ein Bonusblatt. Die Bearbeitung und Abgabe ist freiwillig. Falls Sie das Übungsblatt bearbeiten möchten, 
senden Sie bitte eine E-Mail an marcel.luethi@unibas.ch, damit wir Ihnen Zugriff auf das Repository geben können. 

*Abgabe:* Individuelle Abgabe (als Textfile oder PDF) bis sp&auml;testens 30.10.2018 (23:55) auf [Adam](https://adam.unibas.ch/goto_adam_exc_734775.html). 
Zus&auml;tzlich sollen Sie f&uuml;r die &Auml;nderungen am Code einen Pull Request erstellen. 



## Einf&uuml;hrung
Das Ziel dieser &Uuml;bung ist das wichtige Konzept der [Abstrakten Datentypen (ADTs)](https://unibas-sweng.github.io/software-engineering/week4/slides/module-categories.html) zu vertiefen und auch die praktische Umsetzung anzuschauen. 


## Vorbereitung

Erstellen Sie auf Github einen Fork des Projekts [bonuxexercise](https://github.com/unibas-sweng/bonusexercise). Klonen Sie *Ihren fork* mittels git 
```
git clone https://github.com/YOUR_USERNAME/bonusexercise
```

Importieren Sie das Projekt in Intellij Idea, indem Sie die Datei ```build.gradle``` &ouml;ffnen. 

## Aufgabe 1: Abstrakte Datentypen

Im Package ```adts``` finden Sie 3 verschiedene Implementationen eines Stack als Abstrakten Datentyp. Eine Implementation ist wie man einen ADT in einer Imperativen Programmiersprache (wie z.B. C) implementieren w&uuml;rde, eine zweite zeigt eine typische Implementation in einer Funktionalen Programmiersprache und die dritte Implementation eine Typische Java Implementation. 

* Schauen Sie sich die Unit Tests (in ```src/test/java/adts/...```) an um zu verstehen wie man mit diesem Stack arbeitet.
* F&uuml;hren Sie die Unit Tests aus (rechtsklick auf Package ```src/test/java/adts```, dann ```run tests in adts```).
    * Es sollte alle Tests fehlschlagen.
* F&uuml;gen Sie die fehlenden Implementationen hinzu bis alle Unit Tests korrekt funktionieren. 
    * Committen Sie Ihre &Auml;nderungen. Machen Sie einen Pull request auf Ihren master branch und f&uuml;gen Sie ```marcelluethi``` ```michaelPluess``` und ```schoenja``` als Reviewer angeben. 

* Beantworten Sie folgende Fragen:
    * Was wird beim ADT gekapselt und wie funktioniert diese Kapselung?     
    * Wie unterscheiden sich die verschiedenen Implementation bez&uuml;glich des Zustandsmanagements (also wie wird der Zustand des Stacks verwaltet)?
    * Weshalb erscheint uns die OO Version des Stacks am nat&uuml;rlichsten?
    * Wo sehen Sie die Vorteile des OO Ansatzes gegen&uuml;ber dem funktionalen Ansatz? Wo hat der funktionale Ansatz Vorteile?

## Aufgabe 2: Errorhandling 

&Ouml;ffnen Sie nun das Projekt ```bonusexercise``` in Idea. Sie finden im package ```errorhandling``` die Datei
```TextFileReader```. Die Methode ```readTextFile``` liest eine Textdatei und gibt den Inhalt als String zur&uuml;ck. Falls die Datei nicht gefunden wird, wird einen Exception geworfen. 

Seit Java 8 gibt es den Typ ```Optional```, der verwendet werden kann um anzuzeigen, dass eine Methode nicht immer einen validen R&uuml;ckgabewert hat. 
Eige gute Einführung finden Sie in diesem [Artikel](https://www.javadevjournal.com/java/java-8-optional/).

* Schreiben Sie die Methode ```readTextFile``` so um, dass der Typ ```Optional``` verwendet wird. Passen Sie auch die ```main``` Methode entsprechend an. (Vergessen Sie nicht zuerst mit git einen branch ```bonusexercise``` zu erstellen)
    * Committen Sie Ihre &Auml;nderung.
* Diskutieren Sie was die Vorteile und Nachteile der jeweiligen Art von Errorhandling (also mit Optional oder Exception) sind. 
* Wann w&uuml;rden Sie welche Methode einsetzen?
* Welche Methode ist Ihrer Meinung nach hier besser geeignet?



