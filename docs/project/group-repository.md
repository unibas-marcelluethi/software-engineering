---
layout: default
title : Gruppenrepository einrichten
---

# Projektschritt 0: Gruppenrepository einrichten

Nachdem Sie die Gruppen gebildet haben, müssen Sie sich auf ein Projektrepository einigen, auf welchem Sie arbeiten. Am einfachsten ist es, wenn Sie ein schon bestehendes Repository aus den Übungen nehmen, und einfach alle Teammitglieder als *Collaborators* hinzufügen (siehe [Übung 1](../exercises/jabref-setup))

Die anderen Teammitglieder können das Projekt entweder neu klonen, oder aber mittels 
```git remote add project GITHUBURL``` 
ein neues remote Repository hinzufügen. 

Erstellen Sie dann ausgehend vom main Branch einen neuen Branch mit dem Namen `project`. Dieser Branch wird für das Projekt verwendet. Wechseln Sie auf diesen Branch. 

Kreieren Sie einen Ordner `./docs/sweng`` in ihrem Projekt. Darin werden wir die ganze Projektdokumentation ablegen.

#### Anmerkung

Wir werden alle Projektdokumentation im Markdown Format erstellen. Dieses einfache Textformat wird von den meisten Editoren/IDE und auch von GitHub gut unterstützt. Insbesondere erlaubt es uns, Ihren Pull Request direkt im Text zu annotieren/kommentieren. 
Auch lassen sich Änderungen in der Dokumentation sehr viel einfacher nachverfolgen als wenn wir pdf oder Word Dateien nutzen würden.