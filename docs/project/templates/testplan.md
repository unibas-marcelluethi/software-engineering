---
layout: default
title : Woche 6
---
# Testplan template

*Dieses Template ist eine Adaption des von der Uni Bremen vorgeschlagenen [Testplans (Softwareprojekt 2009/10)](http://www.informatik.uni-bremen.de/st/Lehre/swp0910/beispiele/testplan.pdf). Sie finden darin auch detailliertere Beschreibungen der einzelnen Abschnitte.*


| Version | Projektname | Autor  | Status | Datum | Kommentar |
| ------- | ----- | ------ | ------ | ----- | --------- |
|  0.1    |  Name   | Name | in Bearbeitung | 01.01.1970 | |


# 1. Einführung

Kurze Beschreibung des Projekts/Features.

## 1.1 Zweck

Wozu dient das Dokument und an wen richtet es sich (Kunde, Internes Testteam, ...)

## 1.2 Beziehung zu anderen Dokumenten

Hier kann auf andere Dokumente referenziert werden die
für den Testplan relevant sind. Das kann zum Beispiel eine Anforderungsspezifikation oder ein Designdokument sein.
Stellen sie sich vor, dass die Tests typischerweise von einem eigenen Testteam durchgeführt werden.

## 2. Systemübersicht

Hier sollte eine kurze übersicht über das System gegeben werden, mit besonderem Fokus auf die zu testenden Komponenten.


## 3. Merkmale

### 3.1 Zu testende Merkmale (Features / Funktionen)

#### 3.1.1 Funktionale Anforderungen

Welche spezifizierten Funktionalen Anforderungen werden getestet? Referenzieren sie auch mittels dem Identifier (z.B. /LF10/ ) im Pflichtenheft.

### 3.2 Nicht zu testende Merkmale (Features / Funktionen)

Welche Aspekte werden explizit nicht getestet?

## 4 Vorgehensweise

### 4.1 Modul und Integrationstests
Hier können sie angeben wie sie diese Tests durchführen möchten. Wir empfehlen wenn möglich die Komponenten mittels automatischen Unit Tests zu testen.

### 4.2 Funktionstest

Wie werden die funktionalen Anforderungen getestet?
Beispielsweise können sie angeben, dass die Funktionalität via Graphischer Benutzeroberfläche getestet wird.

### 5 Hardware und Softwareanforderungen

Was gibt es für spezielle Hardware oder Softwareanforderungen um die Tests durchzuführen?

z.b. Internetzugriff,  Account bei Google, spezielle Software, ...

## 6 Testfälle

### 6.1 Modultests

Ihre Module sollten wenn immer möglich über automatisierte Unittests getestet werden. 
Diese können Sie hier kurz (tabellarisch) auflisten. Es reicht, wenn Sie den Klassennamen und den Namen des Testfalls anschreiben. 

| Name der Klasse | Name des Testfalls |
|-----------------|--------------------|
|   Testklasse 1  |   Testfall 1       |


Falls Sie ein Modul nicht automatisiert Testen können, müssen Sie den manuellen Testablauf nachfolgend beschreiben. 

##### Testfall: /TM10/
*Testziel:*

*Voraussetzung:*

*Eingabe:*

*Erwartete Ausgabe:*

*Abhängigkeiten:*

### 6.2 Funktionstests
Beschreiben sie für die spezifizierten Anforderungen wie sie diese Testen. Für jede Anforderung sollten sie mindestens einen Test schreiben, der das gewünschte Verhalten überprüfen.

##### Testfall: /TF10/
*Testziel:*

*Voraussetzung:*

*Eingabe:*

*Erwartete Ausgabe:*

*Abhängigkeiten:*


