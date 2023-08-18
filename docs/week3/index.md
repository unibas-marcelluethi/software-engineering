---
layout: default
title : Woche 3
---

# Woche 3: Prinzipien des Software Engineerings / Modulbeziehungen

In dieser Woche besprechen wir wichtige Prinzipien des Software Engineerings, welche allen klassischen wie auch 
modernen Softwareentwicklungsmethoden zugrunde liegen. Insbesondere werden wir uns das Prinzip Modularität genauer anschauen und das Konzept der Modulgraphen kennenlernen. Wir werden auch lernen, weshalb software altert, obwohl es sich dabei um ein digitales Konstrukt handelt.


## Theorie

#### Vorbereitung (zu bearbeiten bis 3. Oktober)

Als Vorbereitung für die Präsenzveranstaltung in dieser Woche bearbeiten Sie bitte folgende Schritte:

* Schritt 1: Schauen Sie das Video "Prinzipien des Software Engineerings" ([Video](https://unibas.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=1cd060e4-f680-4ca1-80a4-b062006f4a7a), [Slides](./slides/Prinzipien.pdf))
* Schritt 2: Lesen Sie den Artikel "Weitere Prinzipien des Software Engineerings" ([Artikel](./software-engineering-principles))
* Schritt 3: Schauen Sie das Video zum Thema "Modularität".([Video](https://unibas.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=a8b08565-64b0-43a1-96f1-b062006f4a84), [Slides](./slides/Modularität.pdf))
* Schritt 4: Lesen Sie den Artikel "Formale Aspekte von Modulbeziehungen". ([Artikel](.//module-structure))
* Schritt 5: Lesen Sie den Artikel "Software Aging" von David L. Parnas. ([Paper](http://www.inf.ed.ac.uk/teaching/courses/seoc/2004_2005/resources/bullet11.pdf))
* Schritt 6: Bearbeiten Sie den Test. [(Adam)](https://adam.unibas.ch/goto_adam_tst_1629493.html).


####  Präsenzveranstaltung vom 4. Oktober

In der Präsenzveranstaltung werden wir die im Selbststudium bearbeiten Themen in Diskussionen und Gruppenarbeiten vertiefen. 
Wir werden auch praktische Anwendungen von Modulgraphen kennenlernen.

## Praxis

 Im praktischen Teil der Veranstaltung geben wir eine kurze Einführung in Buildsysteme, und gehen dabei insbesondere
 auf das Buildsystem Gradle ein. Danach arbeiten Sie selbständig am Übung 3. Das Ziel dieser Übung ist, dass Sie sich einen 
 Überblick über die Strukturierung von JabRef verschaffen und lernen, wie Sie Code verstehen lernen können. 

* [Übungsblatt 3](../exercises/code-reading). 


## Hausaufgaben

* Arbeiten Sie den [Selbststudiumsteil Woche 4](../week4/index) durch und bearbeiten Sie die dort angegebenen Aufgaben. 
* Falls Sie an der Präsenzveranstaltung nicht anwesend waren, bearbeiten Sie die [Theoriefragen](theory-exercises) und reichen diese bis zum 4.10 auf [Adam](https://adam.unibas.ch/goto_adam_exc_1629562.html) ein. 
* Bearbeiten Sie die [praktische Übung](../exercises/code-reading) und reichen Sie diese wie angegeben per Pull Request ein. 


## Lernziele 

Die Teilnehmenden 

* können den Unterschied zwischen Prinzipien, Methoden, Methodologien und Werkzeuge erklären
* kennen die Gründe, weshalb Software altert und wie man dieser Alterung entgegenwirkt. (Software Aging)
* kennen die fundamentalen Prinzipien und können diese in konkreten Beispielen erkennen und anwenden 
* können Unterschiede in der Abstraktion "uses" and "is_component_of" verstehen und erklären können
* können Eingenschaften eines Modulgraphen (Hierarchie, Ebenen) erkennen.
* können die Ebene eines Moduls anhand des Modulgraphen bestimmen.
* können praktische Anwendungen von Modulgraphen nennen.



