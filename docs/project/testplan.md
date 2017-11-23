# Testplan template 

*Dieses Template ist eine Adaption des von der Uni Bremen vorgeschlagenen [Testplans (Softwareprojekt 2009/10)](http://www.informatik.uni-bremen.de/st/Lehre/swp0910/beispiele/testplan.pdf). Sie finden darin auch detailliertere Beschreibungen der einzelnen Abschnitte.* 


| Version | Projektname | Autor  | Status | Datum | Kommentar |
| ------- | ----- | ------ | ------ | ----- | --------- |
|  0.1    |  Name   | Name | in Bearbeitung | 01.01.1970 | |


# 1. Einf&uuml;hrung

Kurze Beschreibung des Projekts/Features.

## 1.1 Zweck

Wozu dient das Dokument und an wen richtet es sich (Kunde, Internes Testteam, ...)

## 1.2 Beziehung zu anderen Dokumenten

Hier kann auf andere Dokumente referenziert werden die 
f&uuml;r den Testplan relevant sind. Das kann zum Beispiel eine Anforderungsspezifikation oder ein Designdokument sein. 
Stellen sie sich vor, dass die Tests typischerweise von einem eigenen Testteam durchgef&uuml;hrt werden.

## 2. System&uuml;bersicht

Hier sollte eine kurze &Uuml;bersicht &uuml;ber das System gegeben werden, mit besonderem Fokus auf die zu testenden Komponenten.


## 3. Merkmale

### 3.1 Zu testende Merkmale (Features / Funktionen)

#### 3.1.1 Funktionale Anforderungen 

Welche spezifizierten Funktionalen Anforderungen werden getestet? Referenzieren sie auch mittels dem Identifier (z.B. /LF10/ ) im Pflichtenheft.

### 3.2 Nicht zu testende Merkmale (Features / Funktionen)

Welche Aspekte werden explizit nicht getestet?

## 4 Vorgehensweise

### 4.1 Komponenten und Integrationstests
Hier k&ouml;nnen sie angeben wie sie diese Tests durchf&uuml;hren m&ouml;chten. Wir empfehlen wenn m&ouml;glich die Komponenten mittels automatischen Unit Tests zu testen. 

### 4.2 Funktionstest

Wie werden die funktionalen Anforderungen getestet? 
Beispielsweise k&ouml;nnen sie angeben, dass die Funktionalit&auml;t via das Graphische Benutzerinterface getestet wird. 

### 5 Hardware und Softwareanforderungen

Was gibt es f&uuml;r spezielle Hardware oder Softwareanforderungen um die Tests durchzuf&uuml;hren?

z.b. Internetzugriff,  Account bei Google, spezielle Software, ...

## 6 Testf&auml;lle

### 6.1 Modultests

Falls die Module durch Unit Tests durchgef&uuml;hrt werden, k&ouml;nnen diese hier kurz (tabellarisch) aufgelistet werden. 

| Name der Klasse | Name des Testfalls |

Ansonsten m&uuml;ssen die Testf&auml;lle hier detailliert aufgef&uuml;hrt werden.


##### Testfall: /TM10/
*Testziel:*

*Voraussetzung:* 

*Eingabe:*

*Erwartete Ausgabe:*

*Abh&auml;ngigkeiten:*

### 6.2 Funktionstests
Beschreiben sie f&uuml;r die spezifizierten Anforderungen wie sie diese Testen. F&uuml;r jede Anforderung sollten sie mindestens einen Test schreiben, die das gew&uuml;schte Verhalten &uuml;berpr&uuml;fen.

##### Testfall: /TF10/
*Testziel:*

*Voraussetzung:* 

*Eingabe:*

*Erwartete Ausgabe:*

*Abh&auml;ngigkeiten:*


