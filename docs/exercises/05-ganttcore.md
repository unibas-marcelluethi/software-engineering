# &Uuml;bung 5 Gantt: Core code:  

## Administratives

* Dieses &Uuml;bungsblatt sollte bis am TODO 2017 bearbeitet werden. 
    * Abgabe via Pull Request bis sp&auml;testens 23.59.
* Fragen und Probleme k&ouml;nnen in den  &Uuml;bungsstunden am TODO besprochen werden.   


## Einf&uuml;hrung
In dieser &Uuml;bung werden Sie &Auml;nderungen an den Kern-Datenstrukturen in Ganttproject vornehmen als Vorbereitung für das Projekt. Sie werden ebenfalls ein [Github Issue](https://github.com/bardsoftware/ganttproject/issues/1382) fixen und automatisierte Tests dafür schreiben

## Vorbereitung
Synchronisieren Sie wieder wie in &Uuml;bung 3 besprochen Ihr Repository mit dem Upstream Repository. 

## 1. Github Issue fixen
### Vorbereitung
Schauen Sie sich das [Issue](https://github.com/bardsoftware/ganttproject/issues/1382) an. 
Probieren Sie, das Issue zu reproduzieren. Bevor Sie mit dem programmieren beginnen, machen sie sich über die momentane Export-funktionalität schlau. 
Kann man die Farbe eines Tasks in anderen Formaten als CSV bereits exportieren? Wie konfigurierbar ist die CSV-Exportierung momentan? Erstellen Sie in der UI Tasks, exportieren Sie diese und schauen Sie, was bereits f&uuml;r funktionalit&auml;t implementiert ist.

Suchen sie nachher im Code: Was passiert beim Export eines CSV-Dokumentes? Wie werden Spalten wie 'Name' exportiert? Wenn Sie das Gef&uuml;hl haben, einen ersten &Uuml;berblick zu haben, beginnen Sie mit der Implementierung.

### Implementierung
Beheben Sie das Problem. Am Ende sollten Sie in der Lage sein, ein CSV-Dokument zu exportieren, welches für jeden Task auch die Farbe speichert. Dieses Dokument sollten sie dann importieren können und Unit-Tests für den Import und Export geschrieben haben

### Tipps
* Testen Sie __nicht__ mit der Default-Farbe.
* Die Klasse ColorConvertion.java macht Serialisierung und Deserialisierung von Farben einfach.
* Ganttproject-Options werden als .ganttproject-File in Ihrem Heimverzeichnis gespeichert. Sie müssen dieses File löschen, wenn sie etwas an der Optionen-Generierung &auml;ndern.

### Abgabe
* L&ouml;sung des Problems inklusive Unit-Tests, welche zeigen dass das Feature richtig funktioniert.