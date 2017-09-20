# &Uuml;bung 1 Ganttproject:  Setup der Umgebung

## Administratives

* Dieses &Uuml;bungsblatt sollte bis  27. September 2017 bearbeitet werden.  
* Fragen und Probleme k&ouml;nnen in der  &Uuml;bungsstunde am 27. September besprochen werden.   
* Es ist keine Abgabe erforderlich

## Einf&uuml;hrung

F&uuml;r die meisten &Uuml;bungen in diesem Kurs werden wir das Open Source Projekt [Ganttproject](http://www.ganttproject.biz/) verwenden. 
In dieser ersten &Uuml;bung werden Sie die Umgebung (Werkzeuge, Entwicklungsumgebung) aufsetzten, damit sie im folgenden &Auml;nderungen und Erweiterungen im Code vornehmen k&ouml;nnen. 

## Vorbereitung

Falls sie noch keinen Benutzeraccount auf [Github](https://www.github.com) haben, erstellen sie bitte einen. Teilen sie mir Ihren Benutzernamen via Mail an marcel.luethi@unibas.ch mit, damit wir Ihnen Zugriff auf das Code-Repository geben k&ouml;nnen.  

Treten sie dem [Gitter Chatroom](https://gitter.im/unibas-sweng/discussion?utm_source=share-link&utm_medium=link&utm_campaign=share-link) bei.

## Installation der Werkzeuge

### Git 

Installieren sie das Versionsverwaltungswerkzeug [Git](https://git-scm.com/). Informationen zu Download und Installation finden sie auf der Git [Homepage](https://git-scm.com/).

#### Test der Installation

&Ouml;ffnen sie eine Konsole. Eingabe von
``` 
git --version 
```
sollte die Version von Git ausgeben, also z.B.
```
> git version 1.9.5.msysgit.1
```

### IntelliJ Idea

Installieren sie die Entwicklungsumgebung [IntelliJ IDEA](https://www.jetbrains.com/idea/). Informationen zu Download und Installation finden sie auf der [Homepage](https://www.jetbrains.com/idea/). 

*Bemerkung:* Wir arbeiten in diesem Kurs mit der *Community Edition*.

#### Test der Installation

Sie k&ouml;nnen die Entwicklungsumgebung starten (eine grafische Oberfl&auml;che sollte erscheinen).

### Fork von Ganttproject

Dieser Schritt setzt voraus, dass wir Ihnen bereits Zugriff auf unser privates Repository von ganttproject gegeben haben. Sie k&ouml;nnen dies &Uuml;berpr&uuml;fen indem sie auf [https://github.com/unibas-sweng/ganttproject](https://github.com/unibas-sweng/ganttproject) gehen. 
Falls sie bereits Zugriff haben, sollte die Seite wie folgt aussehen:
![image](images/github-ganttproject.png)


Sie k&ouml;nnen das Projekt forken indem sie oben rechts auf den "Fork" Button klicken.    Nach erfolgreichem Fork landen sie nun auf ihrer pers&ouml;nlichen Kopie des Projekts, auf der sie von nun an arbeiten werden. 

##### Setzen der Projektzugriffsrechte

Wird ein Fork eines Projekts erstellt, wird nicht nur das ganze Coderepository, sondern auch alle Zugriffsrechte kopiert. Da alles Studierenden im Kurs auf das Original Repository zugreifen konnten, ist das also nun auch bei ihrem Repository der Fall. Deshalb m&uuml;ssen sie im n&auml;chsten Schritt noch die Zugriffsrechte anpassen. 
Dazu gehen sie auf ```Settings->Collaborators & Teams``` und entfernen das Team ```students``` durch Klicken auf das kleine Kreuz (siehe Screenshot).

![image](images/github-collaborators.png)

### Klonen des Projekts

Damit sie an dem Projekt arbeiten k&ouml;nnen m&uuml;ssen sie das Repository noch auf Ihren eigenen Computer bringen (d.h. das Repository "klonen"). Dr&uuml;cken sie den gr&uuml;nen Button "Clone or Download" und kopieren sie die URL.
 
&Ouml;ffnen sie eine Konsole, welchseln sie in ihr gew&uuml;nschtes Arbeitsverzeichnis und geben sie folgendes ein:

```
git clone THE_URL_FOR_YOUR_PROJECT ganttproject
```

### Kompilieren des Projekts von der Kommandozeile

Bevor wir das Projekt in der IDE bearbeiten, versuchen wir es zuerst von der Kommandozeile zu kompilieren und auszuf&uuml;hren. 

Dazu wechseln sie zuerst in das Verzeichnis ```ganttproject-builder```:

```
cd ganttproject
cd ganttproject-builder
```

Dann f&uuml;hren sie folgende Kommandos aus (unter Windows muss ./ durch .\ ersetzt werden):

```
./gradlew updateLibs
./gradlew distBin
```

Diese Befehle holen sich die ben&ouml;tigten Bibliotheken aus dem Internet und kompilieren das Projekt. 

Mit dem Befehl
```
./gradlew runApp   
```
k&ouml;nnen wir das Projekt dann starten. 

### Bearbeiten des Projekts in der IDE

Wir werden in diesem Kurs haupts&auml;chlich von der IDE arbeiten. Um das Projekt in Idea zu &ouml;ffnen, m&uuml;ssen die gradle build Definition &ouml;ffnen 
```
ganttproject\ganttproject-builder\build.gradle
```
Die Datei &ouml;ffnen sie mittels ```File->Open``` oder dem ```Open``` Button auf dem Startscreen von Idea.


W&auml;hlen sie nun "Open as project". Sie sollten nun mit dem Projekt arbeiten k&ouml;nnen. Um das Projekt zu kompilieren, w&auml;hlen sie ```Build->Build Project```. 

Um das Projekt zu starten, &ouml;ffnen sie die GradleView (Taskleiste rechts) und w&auml;hlen sie die Task RunApp (siehe Screenshot):

![image](images/idea-run-ganttproject.png)



Herzliche Gratulation! Sie sind nun in der Lage das Projekt nach ihren W&uuml;nschen zu ver&auml;ndern. Mehr dazu in der n&auml;chsten &Uuml;bung. 




