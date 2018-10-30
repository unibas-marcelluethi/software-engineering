# Technische Dokumentation (Template)

| Version | Projektname | Autor  | Status | Datum | Kommentar |
| ------- | ----- | ------ | ------ | ----- | --------- |
|  0.1    |  Name   | Name | in Bearbeitung | 01.01.1970 | |


# 1 Einführung

# 1.1 Zweck 

Beschreiben sie was das Ziel und der Zweck dieses Dokuments ist. An wen richtet es sich und was soll kommuniziert werden? 

# 1.2 Beziehung zu anderen Dokumenten

Geben sie hier andere relevante Dokumente an, wie z.B. das Pflichtenheft

# 2. Systemübersicht

Hier sollte eine kurze &Uuml;bersicht &uuml;ber das System gegeben werden. 
Das Ziel dieses Abschnitts ist, dass der Leser weiss, was entwickelt wird. Also zum Beispiel sollte man erwähnen, 
dass es sich um eine Erweiterung für Ganttproject handelt, und was das Ziel dieser Erweiterung ist. 


# 3. Designziele

Es gibt kein absolutes Mass für gutes oder schlechtes Design. Das Design
ist nur gut oder schlecht bezüglich den Anforderungen der Stakeholder. 
Hier sollten die Ziele/Anforderungen kurz beschrieben werden. Beispiele sind:
* Das Design soll künftige Erweiterbarkeit gewährleisten
* Das Design soll zu minimalen Entwicklungszeit/Kosten führen
* Das Design soll maximale Performance gewährleisten 
* ...

# 4. Systemverhalten

Um die Designlösung die nachfolgend beschrieben wird einzuführen, sollten an dieser Stelle nochmals das gewünschte Verhalten des Systems (abgeleitet aus dem Pflichtenheft) kurz beschrieben werden.
Idealerweise sollte hier genügend Information gegeben werden, so dass man die Diagramme und Spezifikationen die im nächsten Abschnitt beschrieben werden verstehen kann, ohne zuvor das Pflichtenheft im Detail gelesen zu haben. 

# 5. Design

An dieser Stelle wird nun das eigentliche Softwaredesign (die technische Lösung) beschrieben.
In grösseren Systemen wird typischerweise zwischen High-level Design (Architektur) sowie Mid-level Design (UML Klassen- und Sequenzdiagramme) sowie Detaildesign (Detaillierte Beschreibung von einigen Schlüsselklassen) unterschieden.
Für diese kleine Änderung, muss diese Unterscheidung aber nicht gemacht werden. Jedoch wollen wir explizit zwischen Statik, Dynamik und Logik zu unterscheiden. 

## 5.1 Statik

An dieser Stelle sollten die statischen Aspekte, zum Beispiel mit Hilfe von UML Klassendiagrammen oder Paketdiagrammen beschrieben werden.

## 5.2 Dynamik

An dieser Stelle sollten die dynamische Aspekte, zum Beispiel mit Hilfe von UML Sequenz/Kollaborationsdiagrammen, oder Akivitätsdiagrammen beschrieben werden. 

## 5.3 Logik 

An dieser Stelle können noch logische Aspekte, wie zum Beispiel logische Einschränkungen spezifiziert werden. Hierzu kann zum Beispiel OCL verwendet werden. 



