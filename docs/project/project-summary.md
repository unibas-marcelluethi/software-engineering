---
layout: default
title : Übersicht
---

# Projektübersicht

Nachdem Sie sich als Gruppe ein Projekt ausgesucht haben, sollen Sie dies strukturiert realisieren.

Wir gehen dabei in mehreren Schritten vor:


## Projektübersicht

| Aufgabe |  Abgabe | Besprechung | Finale Version | Bemerkung |
|---------|--------|---------------------|---------|-----------|
| [Pflichtenheft/Projektplan erstellen](week6/exercises) | 31. Oktober | 3. November  | 10. November | |
| [Design und Prototyp erstellen](week8/exercises) | 14. November | 17. November | 24. November | |
| [Testplan erstellen](week10/exercises) | 28. November | 1. Dezember | 8. Dezember| |
| [Abschlusspräsentation](week12/exercises) | 15. Dezember |  --  |  |
| [Finale Abgabe ganzes Projekt](week12/exercises) | 22. Dezember | -- |  |

Für detaillierte Instruktionen zu jedem Projektschritt folgen Sie den Links in obiger Tabelle.

## Organisatorisches

#### Github Repository
Benutzen sie ein bestehendes Repository von ihrer Gruppe. Geben sie allen Gruppenmitgliedern entsprechende Zugriffsrechte (via Settings->Collaborators).
Bitte fügen Sie auch die Entwickler ```koppor```, ```Siedlerchr```, ```calixtus``` und ```btut``` von JabRef zum Repository hinzu. So können diese früh eingreifen, falls Sie eine Anforderung ganz falsch verstanden haben, und Ihnen somit viel Arbeit ersparen.


Da Sie von nun an gegen die offizielle Version von JabRef programmieren, müssen Sie Ihr Repository auch immer aktuell halten und die Änderungen der JabRef Entwickler. Dazu gehen Sie wie folgt vor:
1. Wechseln Sie auf den main branch:
```git checkout main```
2. Löschen Sie das bisherige ```upstream``` repository: ```git remote rm upstream```
4. Fügen sie das JabRef Repository als neues upstream repository hinzu:
```git remote add upstream git@github.com:JabRef/jabref.git``` (oder ```https://github.com/JabRef/jabref.git``` falls Sie über https synchronisieren)
5. Holen Sie die Commits und Änderungen vom offiziellen Repository ab:
```git fetch upstream```
6. Ersetzen Sie die Commits in Ihrem Main Branch durch die vom JabRef Main Branch:
```git reset --hard upstream/main```


<!--Kreieren sie ausgehend vom master branch einen branch `develop`. Für jede Abgabe (und jedes Feature) kreieren sie ausgehend vom branch `develop` einen neuen Featurebranch. Der Pull Request hat jeweils den `develop` branch als Ziel. Damit haben sie am Ende alle projektrelevanten Änderungen im `develop` branch. -->



#### Dokumentation
Wir führen die Dokumentation als Teil vom Projekt und speichern diese im selben Repository.
Kreieren Sie einen Ordner `./docs/sweng` in ihrem Projekt, der alle zu produzierenden Dokumente enthält. Erstellen Sie die Dokumentation in [Markdown](https://help.github.com/categories/writing-on-github/) Format. Dieses einfache Textformat wird von den meisten Editoren/IDE und auch von GitHub gut unterstützt. Ausserdem lassen sich Änderungen in der Dokumentation sehr viel einfacher nachverfolgen als in PDF Dateien.




