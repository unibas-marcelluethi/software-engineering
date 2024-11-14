---
layout: default
title : Alloy
---

# Statisches Modellieren mit Alloy


## Aufgabe 1

Erstellen Sie ein Alloy-Modell des unten beschriebenen Systems:

- Es gibt Bachelor-Studenten und Master-Studenten, kein Student ist gleichzeitig Bachelor- und Master-Student;
- ein Student muss sich an einer Universität einschreiben, und nur eingeschriebene Studenten sind legale Studenten;
- jeder Student hat eine eindeutige Studenten-ID und genau ein Hauptfach;
- Studenten mit demselben Hauptfach, die an derselben Universität eingeschrieben sind, gelten als Kommilitonen; ein Student kann mehrere Kommilitonen haben;
- Bachelor- und Master-Studenten sind niemals Kommilitonen;
- die Kommilitonen-Beziehung ist nicht reflexiv (ein Student kann nicht sein/ihr eigener Kommilitone sein).

Versuchen Sie sich grob an folgendem UML-Diagramm zu orientieren:
![UML](./images/student_class_diag.svg)


## Aufgabe 2

