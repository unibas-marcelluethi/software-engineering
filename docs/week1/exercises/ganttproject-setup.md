# Praktische Übung 1: Setup von Ganttproject

## Administratives

* Dieses Übungsblatt wird in der Übungsstunde vom 19. September besprochen und bearbeitet. Falls die Zeit in der Übungsstunde nicht reicht, sollte 
  das Setup bis zum 25. September 2018 fertiggestellt werden. 
* Es ist keine Abgabe erforderlich.

## Einführung


Für die meisten Übungen in diesem Kurs werden Sie das Open Source Projekt [Ganttproject](http://www.ganttproject.biz/) verwenden. 
In dieser ersten Übung werden Sie die Umgebung (Werkzeuge, Entwicklungsumgebung) aufsetzten, damit Sie im folgenden Änderungen und Erweiterungen im Code vornehmen können. 
*Bemerkung: Wir nutzen in diesem Kurs einen Fork vom offiziellen Ganttproject. Unser Code basiert auf der Version 2.8.5 von Ganttproject, verfügt aber über ein stark vereinfachtes und verbessertes Buildsystem, welches von Teilnehmern vom letztjährigen Kurs entwickelt wurde.*

## Vorbereitung

Falls Sie noch keinen Benutzeraccount auf [Github](https://www.github.com) haben, erstellen Sie bitte einen. Teilen Sie uns Ihren Benutzernamen via Mail an 
[jan.schoenholz@unibas.ch](mailto:jan.schoenholz@unibas.ch) mit, damit wir Ihnen Zugriff auf das Code-Repository geben können.  

## Installation der Werkzeuge

### Git 

Installieren Sie das Versionsverwaltungswerkzeug [Git](https://git-scm.com/). Informationen zu Download und Installation finden Sie auf der Git [Homepage](https://git-scm.com/).

#### Test der Installation

Öffnen Sie eine Konsole. Eingabe von
``` 
git --version 
```
sollte die Version von Git ausgeben, also z.B.
```
> git version 2.18.0.windows.1
```

### IntelliJ Idea

Installieren Sie die Entwicklungsumgebung [IntelliJ IDEA](https://www.jetbrains.com/idea/). Informationen zu Download und Installation finden Sie auf der [Homepage](https://www.jetbrains.com/idea/). 

*Bemerkung 1:* Wir arbeiten in diesem Kurs mit der *Community Edition*, die als Open Source uneingeschränkt zugänglich ist. 

*Bemerkung 2:* Falls Sie bereits mit Java 10 arbeiten, sollten sie die aktuellste Version von IntelliJ (2.18.2.3) verwenden. Ansonsten können Probleme mit JavaFX auftreten. 

#### Test der Installation

Sie können die Entwicklungsumgebung starten (eine grafische Oberfläche sollte erscheinen).

### Fork von Ganttproject

Dieser Schritt setzt voraus, dass wir Ihnen bereits Zugriff auf unser privates Repository von ganttproject gegeben haben. Sie können dies überprüfen indem Sie auf [https://github.com/unibas-sweng/ganttproject-hs18](https://github.com/unibas-sweng/ganttproject-18) gehen. 
Falls Sie bereits Zugriff haben, sollte die Seite wie folgt aussehen:
![image](../../exercises/images/github-ganttproject.png)


Sie können das Projekt forken indem Sie oben rechts auf den "Fork" Button klicken. Nach erfolgreichem Fork landen Sie nun auf Ihrer persönlichen Kopie des Projekts, auf der Sie von nun an arbeiten werden. 

##### Setzen der Projektzugriffsrechte

Wird ein Fork eines Projekts erstellt, wird nicht nur das ganze Coderepository, sondern auch alle Zugriffsrechte kopiert. Da alle Studierenden im Kurs auf das Original Repository zugreifen konnten, ist das also nun auch bei Ihrem Repository der Fall. Deshalb müssen Sie im nächsten Schritt noch die Zugriffsrechte anpassen. 
Dazu gehen Sie auf ```Settings->Collaborators & Teams``` und entfernen das Team ```students-hs18``` durch Klicken auf das kleine Kreuz (siehe Screenshot).

![image](../../exercises/images/github-collaborators.png)

### Klonen des Projekts

Damit Sie an dem Projekt arbeiten können müssen Sie das Repository noch auf Ihren eigenen Computer bringen (d.h. das Repository "klonen"). Drücken Sie den grünen Button "Clone or Download" und kopieren Sie die URL.
 
Öffnen Sie eine Konsole, wechseln Sie in ihr gewünschtes Arbeitsverzeichnis und geben Sie folgendes ein:

```
git clone THE_URL_FOR_YOUR_PROJECT ganttproject
```

### Kompilieren des Projekts von der Kommandozeile

Bevor Sie das Projekt in der IDE bearbeiten, versuchen Sie es zuerst von der Kommandozeile zu kompilieren und auszuführen. 

Dazu wechseln Sie zuerst in das Verzeichnis ```ganttproject```:

```
cd ganttproject
```

Dann führen Sie folgende Kommandos aus (unter Windows muss ./ durch .\ ersetzt werden):

```
./gradlew distBin
```

Mit dem Befehl
```
./gradlew runApp   
```
können Sie das Projekt dann starten. 

### Bearbeiten des Projekts in der IDE

Sie werden in diesem Kurs hauptsächlich von der IDE arbeiten. Um das Projekt in Idea zu öffnen, müssen die gradle build Definition öffnen 
```
ganttproject\build.gradle
```
Die Datei öffnen Sie mittels ```File->Open``` oder dem ```Open``` Button auf dem Startscreen von Idea.


Wählen Sie nun "Open as project". Sie sollten nun mit dem Projekt arbeiten können. Um das Projekt zu kompilieren, wählen Sie ```Build->Build Project```. 

Um das Projekt zu starten, öffnen Sie die GradleView (Taskleiste rechts) und wählen Sie die Task RunApp (siehe Screenshot):

![image](../../exercises/images/idea-run-ganttproject.png) 



Herzliche Gratulation! Sie sind nun in der Lage das Projekt nach ihren Wünschen zu verändern. Mehr dazu in den nächsten Übungen. 




