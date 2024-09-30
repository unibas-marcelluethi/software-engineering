---
layout: default
title : Woche 4
---

# Woche 4: Design

Letzte Woche haben wir uns wichtige Prinzipien des Software-Engineerings angeschaut, und dabei das sehr wichtige Prinzip 
der Modularität kennengelernt. In dieser Woche werden wir uns mit dem Design von Software beschäftigen, also wie man eine Software in einzelne Module aufteilt. Dabei ist das Ziel des Designs in der Regel, ein System zu erhalten, bei dem künftige
Änderungen leicht durchgeführt werden können. Wir werden auch einige typische Muster kennenlernen, die zu leicht zu ändernder Software führen.

Wir werden in dieser Woche auch eine erste Einführung in eine grafische Modellierungssprache, die Unified Modeling Language (UML) sehen. UML wird häufig zum illustrieren von Designs verwendet. 


## Theorie

#### Vorbereitung (zu bearbeiten bis 08. Oktober)

Als Vorbereitung für die Präsenzveranstaltung in dieser Woche bearbeiten Sie bitte folgende Schritte:

* Schritt 1: Schauen Sie das Video "Softwaredesign" ([Video](https://unibas.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=d335d440-5091-44d1-b108-b06600bd5a05), [Slides](./slides/Design.pdf))
* Schritt 2: Lesen Sie den Artikel  "Einige Merkmale guten Designs"  ([Artikel](./design-hints))"
* Schritt 3: Lesen Sie den Artikel "Typische Architekturmuster". ([Artikel](./module-architectural-patterns))
* Schritt 4: Schauen Sie sich das Video "Einführung in die UML" an. ([Video](https://unibas.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=8c8cffc1-41ce-442c-b391-b06600bd5a47), [Slides](./slides/UML-Klassendiagramme.pdf))
* Schritt 5: Bearbeiten Sie den Test. [(Adam)](https://adam.unibas.ch/goto_adam_tst_1629491.html). <!-- gibt es das Jahr wieder Adamtests? ich habe auf der aktuellsten.  Lg Giovanni-->

####  Präsenzveranstaltung vom 09. Oktober 

In der Präsenzveranstaltung werden wir die im Selbststudium bearbeiten Themen in Diskussionen und Gruppenarbeiten vertiefen. 
Wir werden uns nochmals über Modulbeziehungen Gedanken machen, das Java Modulsystem anschauen und uns mit UML Klassendiagrammen beschäftigen.

#### Weitere Ressourcen 

* Als Referenz zum Thema Klassendiagramme finden Sie einen Auszug aus dem Buch "UML-Distilled" von Martin Fowler auf [Adam](https://adam.unibas.ch/goto_adam_file_1885900_download.html).

* Zur Erstellung von einfachen UML Diagrammen eignet sich die Open Source Software [PlantUML](https://plantuml.com/). Mit dieser Software können Sie UML Diagramme als einfache Textdateien erstellen, welche dann in grafische Diagramme umgewandelt werden.

## Praxis

 Im praktischen Teil der Veranstaltung werden Sie Unit-tests für eine Klasse von JabRef schreiben. Sie werden auch lernen, 
 wie Sie mittels Github-Actions, Github dazu bringen, bei jedem commit alle Tests durchlaufen zu lassen und Sie bei allfälligen 
 Fehlern zu warnen. 

* [Übungsblatt 4](../exercises/unit-tests-und-ci) 


## Hausaufgaben

Die folgenden Hausaufgaben sollten bis zum 14. Oktober bearbeitet werden. <!-- Ich bin mir nicht sicher wie viel von diesem Teil so bleibt, wegen des wechsels auf Frontal Unterricht. Letztes Jahr war es ja Flipped Classroom. Lg Giovanni -->

* Arbeiten Sie den [Selbststudiumsteil Woche 5](../week5/index) durch und bearbeiten Sie die dort angegebenen Aufgaben. <!-- Muss das angepasst oder gelöscht werden? Lg Giovanni -->
* Falls Sie an der Präsenzveranstaltung nicht anwesend waren, bearbeiten Sie die [Theoriefragen](../week4/exercises/theory-exercises.md) und reichen diese bis zum 18.10. auf [Adam](https://adam.unibas.ch/goto_adam_exc_1629562.html) ein. <!-- Muss das angepasst oder gelöscht werden? Lg Giovanni -->
* Erstellen eines Projektpitchs für Ihre JabRef Erweiterung [Projektschritt II](../project/group-repository.md)<!-- das wurde angepasst. Lg Giovanni -->
* Bearbeiten Sie die [praktische Übung](../exercises/unit-tests-und-ci) und reichen Sie diese wie angegeben per Pull Request ein.


## Lernziele 

Die Teilnehmer*innen 

* kennen die Ziele des Softwaredesigns.
* können einfache Systeme in sinnvolle Module aufteilen.
* können typische Architekturmuster mittels Modulgraphen beschreiben.
* können die wichtigsten Kategorien von Modulen nennen und deren Umsetzung in Java beschreiben.
* können designs anhand von Kriterien wie Bindung, Kopplung, Fan-In, Hierarchien, etc. analysieren.
* wissen wie Information-Hiding in Objektorientierten-Systemen umgesetzt wird.

