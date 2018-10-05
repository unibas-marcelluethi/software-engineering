# Anleitung Woche 4: Modulstruktur und Moduldesign

## Übersicht

Letzte Woche haben wir uns wichtige Prinzipien des Software Engineerings angeschaut, und haben begonnen über Design zu sprechen. 
Eines der Zentralen Prinzipien war die Modularität. Auch beim Design sind wir dann auf Module gestossen. 
Wir haben gesehen, dass ein Software Design eigentlich nur die Aufteilung eines Systems in Module ist. Wenn wir das richtig machen, 
erhalten wir dabei ein System, welches das wichtigste Designziel erfüllt: Die Möglichkeit, dass künftige Änderungen leicht durchgeführt werden können. 

In diese Woche wollen wir besprechen, wie wir Modularität erreichen, Beziehungen zwischen Modulen besprechen und wie wir module Designen. 
Wir schauen uns auch konkrete Beispiele von Modulen an. 


## Lernziele

### Grundlegende Lernziele

Alle Studierenden sind verantwortlich, sich die untenstehenden Lernziele *vor* der Vorlesungsstunde am 10. Oktober *selbständig* zu erarbeiten.

 Nach dem Selbstudium der Vorlesungsmaterialien sollten die Studierenden:
 - Die Modulstruktur formal hinschreiben können und anhand der Struktur Eigenschaften (Hierarchie, Ebenen) bestimmen können.
 - Die Beziehungen "uses" und "is_component_of" kennen 
 - Einige typische Architekturmuster mittels einem Modulgraphen beschreiben können
 - Die wichtigsten Kategorien von Modulen nennen können.
 

 
 
### Fortgeschrittene Lernziele

Die Folgenden Lernziele sollten während oder nach der Vorlesung vom 10. Oktober erreicht werden. Nach dieser Woche sollten die Studierenden:

- Unterschiede in der Abstraktion uses and is_component_of verstehen und erklären können
- Designs anhand von kriterien wie Fan-In, Hierarchien, etc. beurteilen können
- erklären können wie Information Hiding von den unterschiedlichen Modulkategorien umgesetzt wird. 
- Modulkategorien auf Sprachkonstrukte in Java abbilden können.



### Vorbereitung für die Vorlesungsstunde vom Mittwoch:

Als Vorbereitung für die Vorlesungsstunde in dieser Woche bearbeiten Sie bitte folgende Schritte:

* Schritt 1: Lesen Sie den Artikel  "Einführung Woche 4".  ([Artikel](./articles/introduction.html))
* Schritt 2: Lesen Sie den Artikel  "Modulstruktur - Formale Aspekte - ".  ([Artikel](./articles/module-structure.html))
* Schritt 3: Schauen Sie das Video "Beziehungen zwischen Modulen"  ([Video](https://drive.switch.ch/index.php/s/nWv3tZL5t73lFcS), [Slides](./slides/module-relationships.html))
* Schritt 4: Lesen Sie den Artikel "Typische Architekturmuster". ([Artikel](./articles/module-architectural-patterns.html))
* Schritt 5: Schauen Sie sich das Video "Modul Design an" ([Video](https://drive.switch.ch/index.php/s/0ZmzYUc8t1ZRJ1d), [Slides](./slides/module-design.html))
* Schritt 6: Schauen Sie sich das Video "Kategorien von Modulen" an. ([Video](https://drive.switch.ch/index.php/s/5KH91ZOJOyNOsTG), [Slides](./slides/module-categories.html))
* Schritt 7: Lesen Sie den Artikel "Abstrakte Datentypen und Objektorientierte Programmierung " ([Artikel](./articles/module-adts-oo.html))
* Schritt 8: Bearbeiten Sie den Test. [(Adam)](https://adam.unibas.ch/goto_adam_tst_721091.html).  

*Achtung: Der Test muss spätestens bis Mittwoch 10. Oktober, 08:00 bearbeitet sein.*
  

### Übungen
Während der Vorlesungsstunde diskutieren wir die Fragen auf diesem [Übungsblatt](./exercises/theory-exercises.html). 
Schreiben Sie ihre Antworten auf und reichen Sie diese (in PDF Format) auf [Adam](https://adam.unibas.ch/goto_adam_exc_724413.html) ein .

Vergessen Sie auch nicht die [praktischen Übungen](./exercises/practical-exercises.html) zu bearbeiten.

*Abgabetermin ist Dienstag, 16. Oktober, 23.55*

### Feedback

Haben Sie einen Fehler entdeckt? Sie können uns helfen das Kursmaterial zu verbessern in dem Sie einen Pull Request auf Github machen. 
Haben Sie Feedback zu den Lernmaterialien, dem Kurs oder den Übungen. Geben sie uns direkt in der Vorlesung Feedback oder nutzen Sie das [Forum](https://adam.unibas.ch/goto_adam_frm_700919.html) auf dem Adam workspace.
