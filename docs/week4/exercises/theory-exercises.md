---
layout: default
title : Woche 4
---

# Übungsblatt Woche 4: Softwaredesign und Modularität


## 1. Modulbeziehungen

1.  Angenommen ein Uses-Graph entspricht einem Baum. Was sagt das Über die Modulstruktur aus? Möchten Sie lieber einen Baum oder einen DAG?
2. In vielen Sprachen können Module als Argumente an Funktionen/Methoden übergeben werden. Angenommen ein Modul A ruft eine Funktion 
  f von Modul B auf, die dann ein Modul C als Parameter nimmt. Wie sieht der Uses Graph aus? Ist er in diesem Fall noch immer statisch bestimmt? Warum, warum nicht?


   
## 2. Modulsystem in Java

Seit Java 9 gibt es neben Klassen und Packages auch Module, um Software zu strukturieren. Informieren Sie sich über Java Module und beantworten Sie folgende Fragen:

1. Welches Problem lösen Java Module?  Was ist der Unterschied zu Packages?
2. Was machen die Keywords *export*, *uses* und *provides ... with*? 
3. Welches Problem wird mit der *Open* Klausel gelöst?  


## 3. UML Klassendiagramme

Zeichnen Sie ein UML Klassen Diagramm, mit den Klassen Lehrveranstaltung, Seminar, Vorlesung, Professor, Student, Theoriestunde und Übungsstunde
welches folgende Anforderungen erfüllt:

* Ein Student kann mehrere Lehrveranstaltungen belegen. 
* Eine Lehrveranstaltung kann entweder ein Seminar oder eine Vorlesung sein
* Jede Lehrveranstaltung hat einen Titel und eine Vorlesungsnummer
* Jede Lehrveranstaltung muss von mindestens einem Studenten belegt werden.
* Eine Vorlesung besteht immer aus einer Theoriestunde sowie einer Übungsstunde
* Für jede Lehrveranstaltung ist genau ein Professor verantwortlich
* Ein Professor kann selbst auch Lehrveranstaltungen belegen
* In jeder Lehrveranstaltung wird jeweils für jeden Teilnehmer die Note gespeichert



