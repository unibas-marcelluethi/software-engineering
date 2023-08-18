---
layout: default
title : Woche 4
---

# Woche 4: Design

Letzte Woche haben wir uns wichtige Prinzipien des Software Engineerings angeschaut, und dabei das sehr wichtige Prinzip 
der Modularität kennengelernt. In dieser Woche werden wir uns mit dem Design von Software beschäftigen, also wie man eine Software in einzelne Module aufteilt. Dabei ist das Ziel des Design in der Regel, ein System zu erhalten, bei dem künftige
künftige Änderungen leicht durchgeführt werden können. Wir werden auch einige typische Muster kennenlernen, die zu leicht zu ändernder Software führen.

Wir werden in dieser Woche auch eine erste Einführung in eine grafische Modellierungssprache, die Unified Modeling Language (UML) erhalten, die häufig zum illustrieren von Designs verwendet wird.


## Theorie

#### Vorbereitung (zu bearbeiten bis 10. Oktober)


Als Vorbereitung für die Präsenzveranstaltung in dieser Woche bearbeiten Sie bitte folgende Schritte:

* Schritt 1: Schauen Sie das Video "Softwaredesign" ([Video](https://tube.switch.ch/videos/9b67c31a), [Slides](./slides/software-engineering-principles.html))
* Schritt 2: Lesen Sie den Artikel  "Einige Merkmale guten Designs"  ([Artikel](./articles/module-structure.html))"
* Schritt 3: Lesen Sie den Artikel "Typische Architekturmuster". ([Artikel](./articles/module-architectural-patterns.html))
* Schritt 4: Schauen Sie sich das Video "Einführung in die UML" an. ([Video](https://tube.switch.ch/videos/63479caf)), [Slides](./slides/module-design.html)
* Schritt 5: Bearbeiten Sie den Test. [(Adam)](https://adam.unibas.ch/goto_adam_tst_1263978.html).

*Achtung: Der Test muss spätestens bis Mittwoch 13. Oktober, 08:00 bearbeitet sein.*

####  Präsenzveranstaltung vom 4. Oktober

In der Präsenzveranstaltung werden wir die im Selbststudium bearbeiten Themen in Diskussionen und Gruppenarbeiten vertiefen. 
Wir werden uns nochmals über Modulbeziehungen Gedanken machen, das Java Modulsystem anschauen und uns mit UML Klassendiagrammen beschäftigen.


## Praxis

 Im praktischen Teil der Veranstaltung werden Sie Unit-tests für einen Klasse von JabRef schreiben. Sie werden auch lernen, 
 wie Sie mittels Github-Actions, Github dazu bringen, bei jedem commit alle Tests durchlaufen zu lassen und Sie bei allfälligen 
 Fehlern zu warnen. 

* [Übungsblatt 4](../exercises/unit-tests-und-ci) 


## Hausaufgaben

Die folgenden Hausaufgaben sollten bis zum 18. Oktober bearbeitet werden. 

* Arbeiten Sie den [Selbststudiumsteil Woche 5](../week5/index) durch und bearbeiten Sie die dort angegebenen Aufgaben. 
* Falls Sie an der Präsenzveranstaltung nicht anwesend waren, bearbeiten Sie die [Theoriefragen](theory-exercises) und reichen diese bis zum 11.10 auf [Adam](https://adam.unibas.ch/goto_adam_exc_1629562.html) ein. 
* Erstellen eines Projektpitchs für Ihre JabRef Erweiterung [Projektschritt I](../project/pitch)
* Bearbeiten Sie die [praktische Übung](../exercises/unit-tests-und-ci) und reichen Sie diese wie angegeben per Pull Request ein. 

## Ressourcen zum Nachlesen / Nachschauen der Theorie

Die nachfolgenden Videos/Artikel sind aus der Vorjahresvorlesung. Diese sind noch relevant, aber nicht genau deckungsgleich mit 
dem in dieser Vorlesung behandelten Themen. 

* Einführung in Software Design" an. ([Video](https://tube.switch.ch/videos/f184e7aa), [Slides](./slides/design-objectives.html))
* "Moduldesign" ([Video](https://tube.switch.ch/videos/63479caf)), [Slides](./slides/module-design.html))
* "Typische Architekturmuster" ([Artikel](./articles/module-architectural-patterns.html))
* "Kategorien von Modulen" ([Video](https://tube.switch.ch/videos/7d6cdc90), [Slides](./slides/module-categories.html))


## Lernziele 

Die Teilnehmenden 

* kennen die Ziele des Softwaredesigns
* können einfache Systeme in sinnvolle Module aufteilen 
* können typische Architekturmuster mittels einem Modulgraphen beschreiben können
* können die wichtigsten Kategorien von Modulen nennen und deren Umsetzung in Java beschreiben.
* können designs anhand von Kriterien wie Bindung, Kopplung, Fan-In, Hierarchien, etc. analysieren
* wissen wie wie Information Hiding in Objektorientierten Systemen umgesetzt wird. 

