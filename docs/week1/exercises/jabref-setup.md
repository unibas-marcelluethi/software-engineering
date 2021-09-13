---
layout: default
title : Woche 1
---

# Praktische Übung 1: Setup von JabRef

## Administratives

* Dieses Übungsblatt wird in der Übungsstunde vom 22. September besprochen und bearbeitet. Falls die Zeit in der Übungsstunde nicht reicht, sollte das Setup bis zur Übungsstunde am 29. September fertiggestellt werden.

* Es ist keine Abgabe erforderlich.

## Einführung


Für die meisten Übungen in diesem Kurs werden Sie das Open Source Projekt [JabRef](https://www.jabref.org/) verwenden.
In dieser ersten Übung werden Sie alle wichtigen Tools und die Entwicklungsumgebung aufsetzten, um im folgenden Änderungen und Erweiterungen im Code vornehmen zu können.



## Benutzeraccount auf Github
Falls Sie noch keinen Benutzeraccount auf [Github](https://www.github.com) haben, erstellen Sie bitte einen. Teilen Sie uns Ihren Github Benutzernamen sowie Ihre Uni Basel E-Mail  Adresse via Mail an [esther.mugdan@unibas.ch](mailto:esther.mugdan@unibas.ch) mit, damit wir Ihnen Zugriff auf das Code-Repository und den Gitter Chatroom geben können.

*Auf Github ist dieser Benutzername sehr prominent und wird auch in der Projektkommunikation verwendet. Achten Sie deshalb bitte darauf, dass Sie einen Benutzernamen wählen, der professionelles Arbeiten zulässt. Gute Beispiele sind: ```andreasmeier``` oder ```andreas``` oder ```ameier```. Beispiele von ungeeigneten Namen sind ```coderking```, ```cookiemonster``` oder ```skaterboy```.*


### Gitter Chat

Nachdem Sie uns Ihren Github Benutzernamen gemeldet haben, können wir Sie zu unserem [Chat](https://gitter.im/unibas-software-engineering/software-engineering-hs21) hinzufügen. Hier können Sie Ihre Fragen stellen. Die Tutorierenden werden diesen im Auge behalten und Ihnen versuchen zu helfen. Wir möchten Sie aber auch ermutigen, sich gegenseitig zu unterstützen.


## Installation der Entwicklungswerkzeuge

### Git

Installieren Sie das Versionsverwaltungswerkzeug *Git*, welches Sie auf der offiziellen [Git Webseite] (https://git-scm.com/) herunterladen können.

#### Test der Installation

Öffnen Sie ein Terminal. Eingabe von
```bash
> git --version
```
sollte die Version von Git ausgeben, also z.B.
```bash
> git version 2.33.0.windows.1
```

#### Git Konfiguration
Als nächstes müssen Sie git noch mit ihrem Namen und Ihrer E-Mail Adresse konfigurieren. Öffnen Sie dazu ein Terminal und geben Sie folgendes ein:

```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```

Nutzen Sie hierzu die E-Mail Adresse, die Sie auch für die Erzeugung vom Github Account verwendet haben.


#### Einrichten von SSH zur sicheren Kommunikation zwischen git und github

Um via Git auf ihr Github repository zugreifen zu können, müssen Sie ssh (secure shell) einrichten.
Bitte konsultieren Sie dazu die [Github Dokumentation](
https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
), welche diesen Schritt für die drei wichtigen Betriebssysteme (Windows, Linux und MacOS) detailliert beschreibt.

### Installieren von Java und JavaFX

Für die Entwicklung von JabRef wird Java in der Version 16 sowie JavaFX benötigt.
Wir empfehlen Ihnen, die Version *Eclipse Temurin* der Eclipse foundation, die sie [hier](https://adoptium.net/?variant=openjdk16&jvmVariant=hotspot) herunterladen können. Installieren Sie dieses.

Als nächstes müssen Sie noch JavaFX zum JDK hinzufügen. Wechseln Sie in das Verzeichnis, in welches das JDK installiert wurde
(unter Windows ist dies C:\Program Files\Eclipse Foundation\jdk-16.0.2.7-hotspot).
Laden Sie dann das "jmods" JavaFX 16 zip archiv herunter ([Windows](https://download2.gluonhq.com/openjfx/16/openjfx-16_windows-x64_bin-jmods.zip), [MacOS](https://download2.gluonhq.com/openjfx/16/openjfx-16_osx-x64_bin-jmods.zip), [Linux](https://download2.gluonhq.com/openjfx/16/openjfx-16_linux-x64_bin-jmods.zip))

[https://gluonhq.com/products/javafx/](https://gluonhq.com/products/javafx/) herunter, entpacken dieses und kopieren alle .mod Dateien in das Verzeichnis jmods.

--
Um zu überprüfen ob java korrekt auf Ihrem System verfügbar ist, öffnen Sie ein Terminal, und setzen die
Umgebungsvariable ```JAVA_HOME``` und ```PATH```:
```
set JAVA_HOME=C:\Program Files\Eclipse Foundation\jdk-16.0.2.7-hotspot
set Path=%JAVA_HOME%\bin;%Path%
```
auf das neu installierte JDK. Dann geben Sie folgendes Kommando ein:

```
 java -version
```
Die Ausgabe sollte ungefähr wie folgt aussehen:
```bash
openjdk version "16.0.2" 2021-07-20
OpenJDK Runtime Environment Temurin-16.0.2+7 (build 16.0.2+7)
OpenJDK 64-Bit Server VM Temurin-16.0.2+7 (build 16.0.2+7, mixed mode, sharing)
```

## JabRef

Nachdem wir nun alle Werkzeuge installiert haben, müssen wir noch das JabRef Projekt herunterladen. Dies geschieht via Github.

### Forken des Github Repositories
Im ersten Teil dieses Kurses arbeiten wir nicht mit dem offiziellen JabRef Code repository, sondern mit einem privaten Fork. Damit sind ihre Änderungen und unsere Bemerkungen für die Öffentlichkeit nicht zugänglich.
Damit Sie auf unseren Fork von JabRef zugreifen können, müssen wir Ihnen Zugriff auf dieses Repository geben. Sie können überprüfen ob Sie Zugriff haben indem Sie auf [https://github.com/unibas-marcelluethi/jabref](https://github.com/unibas-marcelluethi/jabref) gehen.
Falls Sie bereits Zugriff haben, sollte die Seite etwa wie folgt aussehen:
![image](images/github-jabref.png)


Nun erstellen Sie, ausgehend von unserem privaten Fork,  ihren eigenen privaten fork. Dazu klicken Sie oben rechts auf den "Fork" Button klicken. Nach erfolgreichem Fork landen Sie nun auf Ihrer persönlichen Kopie des Projekts auf Github, mit der Sie von nun an arbeiten werden.

### Zugriffsrechte für Assistenten

Damit unsere Assistenten Ihre Abgaben anschauen können, müssen Sie diesen noch Zugriffsrechte auf ihr neues Repository geben. Dafür gehen Sie auf *Settings* und dann *Manage access*:
![github-manage-access](images/github-manage-access.png)

Klicken Sie dann auf *Invite Teams or people* und fügen Sie ```guenesaydin``` und ```emugdan``` und ```colinhex``` hinzu.
![github-manage-access](images/github-manage-access-invite.png)

Als Rolle im nachfolgenden Dialog wählen Sie *Write*.
![github-manage-access](images/github-manage-access-role.png)

### Klonen des Projekts

Damit Sie an dem Projekt arbeiten können müssen Sie das Repository noch auf Ihren eigenen Computer bringen (d.h. das Repository "klonen"). Drücken Sie den grünen Button mit Namen "Code" und kopieren Sie die URL.

Öffnen Sie eine Konsole, wechseln Sie in ihr gewünschtes Arbeitsverzeichnis und geben Sie folgendes ein:

```
git clone THE_URL_FOR_YOUR_PROJECT
```

### Kompilieren des Projekts von der Kommandozeile

Bevor Sie das Projekt in der IDE bearbeiten, versuchen Sie es zuerst von der Kommandozeile zu kompilieren und auszuführen.

Dazu wechseln Sie zuerst in das Verzeichnis ```jabref```:

```
cd jabref
```

Dann führen Sie folgende Kommandos aus (unter Linux und MacOS muss .\ durch ./ ersetzt werden):

```
.\gradlew compileJava
```

Mit dem Befehl
```
.\gradlew run
```
können Sie das Projekt dann starten.

## Bearbeiten des Projekts in der IDE

### IntelliJ Idea

Installieren Sie die Entwicklungsumgebung [IntelliJ IDEA](https://www.jetbrains.com/idea/). Informationen zu Download und Installation finden Sie auf der [Seite von JetBrains](https://www.jetbrains.com/idea/).

*Bemerkung 1:* Wir arbeiten in diesem Kurs mit der *Community Edition*, die als Open Source uneingeschränkt zugänglich ist.

Öffnen Sie nun Ihre JabRef Projekt in IntelliJ Idea, indem Sie auf dem *Welcome Screen* auf *Open*  gehen oder, falls Sie sich schon in der IDE befinden auf *File->Open* gehen. Dann wählen Sie die Datei ```build.gradle``` in Ihrem JabRef Verzeichnis.

Nun müssen Sie die Einstellungen in IntelliJ noch für die Entwicklung von JabRef anapssen. Wie das geht ist detailliert in der JabRef [Development Documentation](https://devdocs.jabref.org/getting-into-the-code/guidelines-for-setting-up-a-local-workspace#configure-your-ide) erklärt.
Lesen Sie die Erklärung durch und führen Sie alle Einstellungen wie angegeben durch.  Den Abschnitt *Using IntelliJ's internal build system* können Sie überspringen, da dies nicht zuverlässig funktioniert und wir das Projekt deshalb immer via Gradle bauen uns ausführen werden.
Aktivieren Sie aber Checkstyle, wie im Abschnitt *Using JabRef's code style* beschrieben. Damit wird sichergestellt, dass ihr Code jeweils nach den Projektvorgaben formatiert ist.
*Falls Sie unter *Tools* keinen Eintrag Checkstyle finden, müssen Sie zuerst noch das Checkstyle plugin installieren*(*File->Settings->Plugins*).


### Ausführen des Projekts aus der IDE

Um JabRef aus der IDE zu starten öffnen Sie das Gradle Fenster und starten die Gradle Task *jabref [run]* indem Sie diese Doppelklicken (siehe Screenshot).
![Gradle-run](images/idea-run-gradle.png)

Wenn alles funktioniert hat, sollte nun JabRef erfolgreich aus der IDE gestartet werden.

### Alles erfolgreich installiert?
Sie können uns Ihre Erfolge gerne im Chat mitteilen. Sie können nun auch gerne ihren Kolleginnen oder Kollegen, die noch mit der Installation am kämpfen sind, versuchen zu helfen.








