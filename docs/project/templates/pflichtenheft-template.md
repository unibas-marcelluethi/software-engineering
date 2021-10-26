---
layout: default
title : Woche 6
---
# Pflichtenheft
#####  (Vorlage nach Balzert, Lehrbuch der Softwaretechnik (3 Auflage, Kapitel 20.3))

Das Pflichtenheft ist eine Verfeinerung und Pr&auml;zisierung des Lastenhefts.


| Version | Autor | Quelle | Status | Datum | Kommentar |
| ------- | ----- | ------ | ------ | ----- | --------- |
|  0.1    |  Name   | Name | in Bearbeitung | 01.01.1970 | |


## 1. Ziele
Beschreibung der Ziele, die durch den Einsatz des Systems erreicht werden sollen.

* /Z10/ Ziel 1 des Systems


## 2. Rahmenbedingungen

Beschreibung der organisatorischen Rahmenbedingungen: Anwendungsbereiche, Zielgruppen, Betriebsbedingungen.
Wenn ein Punkt nicht relevant ist, löschen Sie die entsprechende Kategorie einfach.

* /R10/ Anwendungsbereich
* /R20/ Zielgruppe
* /R30/ Eingesetzte Software auf der Zielmaschine
* /R40/ Eingesetzte Hardware einschl. Konfiguration auf der Zielmaschine
* /R50/ Organisatorische Randbedingungen
* /R60/ Software auf dem Entwicklungssystems
* /R70/ Hardware des Entwicklungssystems
* /R80/ Orgware (zur Bedienung/Einsatz benötigte Materialien (z.B. Betriebsanweisungen, Organisationspläne)
* /R90/ Entwicklungsschnittstellen

## 3. Kontext und Überblick

Festlegung der relevanten Systemumgebung (Kontext) und Überblick über das System.
An dieser Stelle sollten zum Beispiel alle externen Systeme, mit denen Ihre Anwendung kommuniziert beschrieben werden.

* /K10/ Kontext 1


## 4. Funktionale Anforderungen

Hier soll die Funktionalität des Systems beschrieben werden. Zur Formulierung sollen Sprachschablonen eingesetzt werden. D.h. Anforderungen sollen nach dem Scheme Das System muss/soll/sollte in Zukunft Funktionalität X erbringen können.


* /F10/ Funktion 1 des Systems
* /F20/ Funktion 2 des Systems


Die Funktionalen Anforderungen sollen mithilfe von Use-cases erhoben werden. Die Use-cases sollen in Anhang A detailliert beschrieben werden.


## 5. Qualit&auml;tsanforderungen
Es sollte anhand einer Tabelle eine Qualitätszielbestimmung für das Systems vorgenommen werden.
Überlegen Sie sich, ob Sie spezielle Anforderungen in einem Bereich erfüllen müssen. Wenn nicht,
belassen Sie das entsprechende Kritierum auf "normal".

| Systemqualit&auml;t  | sehr gut | gut | normal | nicht relevant |
| -------------------  | -------- | --- | ------ | -------------- |
| Funktionalit&auml;t  |          |     |   x    |                 |
| Zuverl&auml;ssigkeit |          |     |   x    |                 |
| Benutzbarkeit        |          |     |   x    |                |
| Effizienz            |          |     |   x    |                 |
| Wartbarkeit          |          |     |   x    |                 |
| Portabilit&auml;t    |          |     |   x    |                 |


Einzelne Anforderungen k&ouml;nnen wie folgt festgelegt werden:

* /QB10/ Qualit&auml;tsanforderung zur Benutzbarkeit des Systems
* /QE10/ Qualit&auml;tsanforderung zur Effizienz des Systems


## 6. Abnahmekriterien

Abnahmekriterien legen fest, wie Anforderungen bei der Abnahme auf ihre Realisierung überprüft werden können.

* /A10/ Abnahmekriterium 1
* /A20/ Abnahmekriterium 2


# Anhang

## Anhang A. Use-cases

An dieser Stelle können detaillierte Use-cases angegeben werden
![Diagram](../../slides/images/use-case.png)

### Use Case 1:
* Name: *Name des Use-cases*
* Akteure: *Akteur1, Akteur2, ...*
* Vorbedingungen: *Was muss vor Beginn des Ablaufs gelten*
* Standardablauf
    * Schritt 1
    * Schritt 2
* Nachbedingungen Erfolg: *Was muss nach dem Ende des erfolgreichen Ablaufs gelten*
* Nachbedingung Fehlschlag: *Was gilt nach dem Ende, wenn der Ablauf fehlgeschlagen ist*


### Use Case 2:
* Name: *Name des Use-cases*
* Akteure: *Akteur1, Akteur2, ...*
* Vorbedingungen: *Was muss vor Beginn des Ablaufs gelten*
* Standardablauf
    * Schritt 1
    * Schritt 2
* Nachbedingungen Erfolg: *Was muss nach dem Ende des erfolgreichen Ablaufs gelten*
* Nachbedingung Fehlschlag: *Was gilt nach dem Ende, wenn der Ablauf fehlgeschlagen ist*



