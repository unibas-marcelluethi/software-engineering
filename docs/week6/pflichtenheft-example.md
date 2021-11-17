# Pflichtenheft

## 1. Einleitung

### 1.1 Zweck

Dieses Dokument beschreibt die Anforderungen an das System
EIDP-Autograder. Die Zielgruppe dieses Dokuments sind Dozenten,
die mit EIDP-Autograder korrigieren wollen also auch die
Entwickler von EIDP-Autograder.


### 1.2 Einsatzbereich und Ziele

EIDP-Autograder wird an der Universität Basel in der Vorlesung
EIDP eingesetzt. Die Software soll Abgaben der Studierenden automatisch korrigieren und den Studierenden ein Feedback über die Anzahl Punkte, die sie erreicht haben geben.
Die Software soll keine Daten zu den Abgaben speichern, ist also kein Lösung zur Verwaltung der Abgaben.

### 1.3 Definitionen

Dokumentiert alle verwendeten Fachbegriffe und Abkürzungen. Alternativ können Sie auch ein separates Glossar nutzen.

| Begriff | Erklärung |
| ------- | ----------|
| EiDP    | Einführung in die Programmierung |
| Jupyter-Notebooks | Interaktive Programmierumgebung für Python |
| Jupyter-hub | Software um Jupyter-Notebooks zentral zu betreiben (Cloud server)|


### 1.4 Referenzierte Dokumente

Verzeichnet alle Dokumente, auf die in der Spezifikation verwiesen wird.

### 1.5 Überblick

Das Dokument ist wie folgt strukturiert. In Abschnitt 2 wird ein Überblick über das System, die wichtigsten Funktionen und der Systemkontext gegeben.
In Abschnitt 3 werden die funktionalen und nicht-funktionalen Anforderungen dann detailliert spezifiziert.

## 2. Allgemeine Beschreibung

### 2.1 Einbettung

Die Grundlage der Übungen bilden Jupyter-Notebooks. Die Studierenden
bearbeiten Jupyter-Notebooks auf einem Server auf dem Jupyter-hub installiert ist.
Aus betrieblichen Gründen kann die EIDP Autograder Software jedoch nicht direkt
auf diesem Server laufen, sondern muss auf einer separaten, und von der Informatik
betriebenen System zur Verfügung stehen. Idealerweise sollte eine Schnittstelle zwischen den Systemen gebaut werden, so dass der Autograder direkt die Notebooks
auf dem Jupyterhub Server korrigiert. In einer ersten Phase werden die Dateien
aber manuell von den Studierenden heruntergeladen und auf das Korrekturtool
hochgeladen.


### 2.2 Funktionen

Die EIDP Autograder Software bietet den Studierenden die Möglichkeit
Jupyter-Notebooks zu korrigieren. Dazu wird ein Jupyter-Notebook, welches
lokal auf dem Computer des Nutzers gespeichert ist ausgewählt.
Nach Auswählen der Korrekturfunktion wird dem Benutzer ein Bericht mit den
Resultaten der Korrektur angezeigt.

### 2.3 Benutzerprofile

Die Nutzer dieses Korrekturtools sind Personen ohne Programmiererfahrung.
Diese sind insbesondere auch nicht trainiert darauf Fehlermeldungen des
Systems zu lesen.

### 2.4 Einschränkungen

Die Software sollte problemlos auf den zur Zeit zur Verfügung stehenden
Servern des Fachbereichs Informatik der Universität Basel laufen.
Deshalb sollte die Software unter Linux lauffähig sein.
Die Software muss 24 Stunden pro Tag und 7 Tage pro Woche verfügbar sein und
darf keine Wartung während dem laufenden Betrieb erfordern.

### 2.5 Annahmen und Abhängigkeiten

Die EIDP Autograder Software kann nur speziell vorbereitete und mit entsprechenden Metadaten versehene Jupyter-Notebooks korrigieren.

## 3. Einzelanforderungen

#### Nichtfunktionale Anforderungen

Die Korrektur eines Notebooks darf nicht länger als 10 Sekunden dauern.

#### Funktionale Anforderungen

Zur Spezifikation der Software sollen Sprachschablonen benutzt werden.

/F10/ Die Software muss eine Funktionalität zum Auswählen von Jupyter-Notebooks
zur Verfügung stellen
/F20/ Wenn der Benutzer die Funktion korrigieren wählt, muss das Notebook automatisch korrigiert werden
/F30/ Das Resultat der Korrektur muss dem Benutzer angezeigt werden
/F31/ Das Resultat muss folgende Felder enthalten: Gesamtpunktzahl, ausgeführte Testfälle, Fehlgeschlagene Testfälle, Grund weshalb ein Testfall fehlgeschlagen ist
/F32/ Fehlgeschlagene Testfälle müssen visuell hervorgehoben werden
/F40/ Jede zu korrigierende Aufgabe muss speziell gekennzeichnet sein
/F41/ Die Kennzeichnung muss direkt im Notebook mitgespeichert werden
/F50/ Das System muss über einen Dozentenmodus verfügen, mit dem die Tests eingegeben werden können
/F51/ Die Tests müssen als Textdateien hochgeladen werden können
/F52/ Alle Tests müssen den Namen TestExerciseXXX aufweisen, wobei XXX für die Aufgabennummer steht
/F53/ Die Tests müssen Python Funktionen sein
/F54/ Der Rückgabewert jeder Funktion muss die Anzahl Punkt sowie im Fehlerfall die
      eine aussagekräftige Fehlermeldung sein.




Die Funktionalen Anforderungen sollen mithilfe von Use-cases erhoben werden. Die Use-cases sollen in Anhang A detailliert beschrieben werden.

## 4. Abnahmekriterien

/A10/ Die Software korrigiert 10 korrekte und fehlerhafte Notebooks, mit Themen aus allen zu prüfenden bereichen Fehlerfrei.
/A20/ Die Software erfüllt alle spezifizierten Funktionalen und nichtfunktionalen Anforderungen.
/A21/ Das Kriterium A20 wird durch manuelles Testen durch einen Dozenten überprüft


# Anhang

## Anhang A. Use-cases

An dieser Stelle können detaillierte Use-cases angegeben werden
![Diagram](../../slides/images/use-case.png)

### Use Case 1:
* Name: *Notebook korrigieren*
* Akteure: *Studentin*
* Vorbedingungen: *Ein Notebook mit der zu überprüfenden Übungsabgabe muss vorhanden sein*
* Standardablauf
    * Die Studentin wählt ein Notebook über den Filebrowser aus
    * Das Notebook wird auf Knopfdruck (*Correct Button*) hochgeladen und überprüft
    * Der Studentin wird ein Bericht mit den Resultaten angezeigt.
* Nachbedingungen Erfolg: *Der Bericht wird angezeigt*
* Nachbedingung Sonderfall: *Eine Fehlermeldung wird ausgegeben*


#### Sonderfall 1a: Ausnahme 1
* Ablauf Sonderfall 1a
    * Die Studentin wählt ein Notebook ohne Metadaten aus
    * Nach drücken des *Correct Buttons* wird die Fehlermeldung
      *Invalid Notebook - Metadata missing* angezeigt


#### Sonderfall 1a: Ausnahme 2
* Ablauf Sonderfall 1a
    * Die Studentin wählt ein Notebook ohne Metadaten aus
    * Der Server ist nicht verfügbar
    * Die Fehlermeldung *Server error* wird angezeigt.


### Use Case 2:
* Name: *Vorbereiten eines Notebooks*
* Akteure: *Dozentin*
* Vorbedingungen: *Eine Jupyter-Notebook umgebung steht zur Verfügung*
* Standardablauf
    * Die Dozentin öffnet ein leeres Jupyter-Notebook in einer Jupyter-Notebook Umgebung
    * Sie schreibt jede Aufgabe in eine Zelle des Notebooks
    * Sie markiert jede Zelle mit der Aufgaben ID
    * Sie speichert das Notebook ab
* Nachbedingungen Erfolg: *Das Übungsblatt ist vorbereitet*
* Nachbedingung Sonderfall: n/a


### Use Case 3:
* Name: *Testfälle erfassen*
* Akteure: *Dozentin*
* Vorbedingungen: *-*
* Standardablauf
    * Die Dozentin wählt ein Übungsblatt aus.
    * Die Dozentin überlegt sich für jede Aufgabe Testfälle
    * Diese Testfälle im Korrekturtool erfasst
    * Die Dozentin speichert die Testfälle ab.

* Nachbedingungen Erfolg: *Das Übungsblatt ist vorbereitet*
* Nachbedingung Sonderfall: n/a