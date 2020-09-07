---
layout: default
title : Woche 1
---

# Praktische Übung 1: Setup von JabRef

## Administratives

* Dieses Übungsblatt wird in der Übungsstunde vom 16. September besprochen und bearbeitet. Falls die Zeit in der Übungsstunde nicht reicht, sollte 
  das Setup bis zum 23. September fertiggestellt werden. 
* Es ist keine Abgabe erforderlich.

## Einführung


Für die meisten Übungen in diesem Kurs werden Sie das Open Source Projekt [JabRef](https://www.jabref.org/) verwenden. 
In dieser ersten Übung werden Sie alle wichtigen Tools und die Entwicklungsumgebung aufsetzten, um im folgenden Änderungen und Erweiterungen im Code vornehmen zu können. 



## Benutzeraccount auf Github
Falls Sie noch keinen Benutzeraccount auf [Github](https://www.github.com) haben, erstellen Sie bitte einen. Teilen Sie uns Ihren Github Benutzernamen sowie Ihre Uni Basel E-Mail  Adresse via Mail an [guenes.aydin@unibas.ch](mailto:guenes.aydin@unibas.ch) mit, damit wir Ihnen Zugriff auf das Code-Repository und den Gitter Chatroom geben können.  

*Auf Github ist dieser Benutzername sehr prominent und wird auch in der Projektkommunikation verwendet. Achten Sie deshalb bitte darauf, dass Sie einen Benutzernamen wählen, der professionelles Arbeiten zulässt. Gute Beispiele sind: ```andreasmeier``` oder ```andreas``` oder ```ameier```. Beispiele von ungeeigneten Namen sind ```coderking```, ```cookiemonster``` oder ```skaterboy```.*


### Gitter Chat

Nachdem Sie uns Ihren Github Benutzernamen gemeldet haben, können wir Sie zu unserem [Chat](https://gitter.im/unibas-10915-01/software-engineering) hinzufügen. Hier können Sie Ihre Fragen stellen. Unsere Tutoren werden diesen im Auge behalten und Ihnen so schnell als möglich versuchen zu helfen.
Natürlich freuen wir uns, wenn Sie sich auch gegenseitig helfen. 


## Installation der Werkzeuge

### Git 

Installieren Sie das Versionsverwaltungswerkzeug *Git*, welches Sie auf der offiziellen [Git Webseite] (https://git-scm.com/) herunterladen können.

#### Test der Installation

Öffnen Sie ein Terminal. Eingabe von
```bash
> git --version 
```
sollte die Version von Git ausgeben, also z.B.
```bash
> git version 2.18.0.windows.1
```

#### Git Konfiguration
Als nächstes müssen Sie git noch mit ihrem Namen und Ihrer E-Mail Adresse konfigurieren. Öffnen Sie dazu ein Terminal und geben Sie folgendes ein:

```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```

Nutzen Sie hierzu die E-Mail Adresse, die Sie auch für die Erzeugung vom Github Account verwendet haben. 

### Installieren von Java und JavaFX

Für die Entwicklung von JabRef benötigt Java in der Version 14 sowie JavaFX. Wir empfehlen Ihnen, die [Liberica OpenJDK](https://bell-sw.com/pages/downloads/) version zu installieren, welches das OpenJDK zusammen mit JavaFX bündelt. 
Um zu überprüfen ob java als auch JavaFX korrekt auf Ihrem System verfügbar ist, können Sie folgendes Kommando eingeben:
```
 java -d javafx.controls
``` 
Die Ausgabe sollte ungefähr wie folgt aussehen:
```bash
javafx.controls@14.0.2
exports javafx.scene.chart
exports javafx.scene.control
exports javafx.scene.control.cell
exports javafx.scene.control.skin
requires javafx.base transitive
requires javafx.graphics transitive
requires java.base mandated
qualified exports com.sun.javafx.scene.control.skin to javafx.web javafx.graphics
qualified exports com.sun.javafx.scene.control to javafx.web
qualified exports com.sun.javafx.scene.control.behavior to javafx.web
qualified exports com.sun.javafx.scene.control.inputmap to javafx.web
contains com.sun.javafx.charts
contains com.sun.javafx.scene.control.skin.caspian
contains com.sun.javafx.scene.control.skin.caspian.images
contains com.sun.javafx.scene.control.skin.modena
contains com.sun.javafx.scene.control.skin.resources
```


### IntelliJ Idea

Installieren Sie die Entwicklungsumgebung [IntelliJ IDEA](https://www.jetbrains.com/idea/). Informationen zu Download und Installation finden Sie auf der [Homepage](https://www.jetbrains.com/idea/). 

*Bemerkung 1:* Wir arbeiten in diesem Kurs mit der *Community Edition*, die als Open Source uneingeschränkt zugänglich ist. 

#### Test der Installation

Sie können die Entwicklungsumgebung starten. Eine grafische Oberfläche sollte erscheinen.

## JabRef

Nachdem wir nun alle Werkzeuge installiert haben, müssen wir noch das JabRef Projekt herunterladen. Dies geschieht via Github.

### Forken des Github Repositories
Im ersten Teil dieses Kurses arbeiten wir nicht mit dem offiziellen JabRef Code repository, sondern mit einem privaten Fork. Damit sind ihre Änderungen und unsere Bemerkungen für die Öffentlichkeit nicht zugänglich.  
Damit Sie auf unseren Fork von JabRef zugreifen können, müssen wir Ihnen Zugriff auf dieses Repository geben. Sie können überprüfen ob Sie Zugriff haben indem Sie auf [https://github.com/unibas-marcelluethi/jabref](https://github.com/unibas-marcelluethi/jabref) gehen. 
Falls Sie bereits Zugriff haben, sollte die Seite etwa wie folgt aussehen:
![image](images/github-jabref.png)
 

Nun erstellen Sie, ausgehend von unserem privaten Fork,  ihren eigenen privaten fork. Dazu klicken Sie oben rechts auf den "Fork" Button klicken. Nach erfolgreichem Fork landen Sie nun auf Ihrer persönlichen Kopie des Projekts auf Github, mit der Sie von nun an arbeiten werden. 


### Klonen des Projekts

Damit Sie an dem Projekt arbeiten können müssen Sie das Repository noch auf Ihren eigenen Computer bringen (d.h. das Repository "klonen"). Drücken Sie den grünen Button mit Namen "Code" und kopieren Sie die URL.
 
Öffnen Sie eine Konsole, wechseln Sie in ihr gewünschtes Arbeitsverzeichnis und geben Sie folgendes ein:

```
git clone --depth=10 THE_URL_FOR_YOUR_PROJECT
```

Die Option ```--depth=10``` bewirkt, dass nur ein Teil der langen *git history* heruntergeladen wird. Damit wird der Download von ca 800MB auf 20MB reduziert.


### Kompilieren des Projekts von der Kommandozeile

Bevor Sie das Projekt in der IDE bearbeiten, versuchen Sie es zuerst von der Kommandozeile zu kompilieren und auszuführen. 

Dazu wechseln Sie zuerst in das Verzeichnis ```jabref```:

```
cd jabref
```

Dann führen Sie folgende Kommandos aus (unter Windows muss ./ durch .\ ersetzt werden):

```
./gradlew compileJava
```

Mit dem Befehl
```
./gradlew run
```
können Sie das Projekt dann starten. 

## Bearbeiten des Projekts in der IDE

Von nun an werden Sie hautsächlich mit der IDE arbeiten. Wie sie JabRef einrichten, ist detailliert in der JabRef [Development Documentatation](https://devdocs.jabref.org/getting-into-the-code/guidelines-for-setting-up-a-local-workspace#configure-your-ide) erklärt.
Lesen Sie die Erklärung durch und führen Sie alle Einstellungen wie angegeben durch.  Den Abschnitt *Using IntelliJ's internal build system* können Sie überspringen, da dies nicht zuverlässig funktioniert und wir das Projekt deshalb immer via Gradle bauen uns ausführen werden.
Aktivieren Sie aber Checkstyle, wie im Abschnitt *Using JabRef's code style* beschrieben. Damit wird sichergestellt, dass ihr Code jeweils nach den Projektvorgaben formatiert ist. 


### Ausführen des Projekts aus der IDE

Um JabRef aus der IDE zu starten öffnen Sie das Gradle Fenster und starten die Gradle Task *jabref [run]* indem Sie diese Doppelklicken (siehe Screenshot).
![Gradle-run](images/idea-run-gradle.png)

Wenn alles funktioniert hat, sollte nun JabRef erfolgreich aus der IDE gestartet werden. 

### Alles erfolgreich installiert?
Sie können uns Ihre Erfolge gerne im Chat mitteilen. Falls Sie Lust haben, können Sie nun auch gerne ihren Kolleginnen oder Kollegen, die noch mit der Installation am kämpfen sind, versuchen zu helfen.








