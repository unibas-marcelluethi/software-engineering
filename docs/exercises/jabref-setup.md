---
layout: default
title : Woche 1
---

# Praktische Übung 1: Setup von JabRef

## Administratives

* Dieses Übungsblatt wird in der Übungsstunde vom 20. September eingeführt und bearbeitet. Falls die Zeit in der Übungsstunde nicht reicht, sollte das Setup bis zur Übungsstunde am 27. September fertiggestellt werden.

* Es ist keine Abgabe erforderlich.

## Einführung

Für die meisten Übungen in diesem Kurs werden Sie das Open Source Projekt [JabRef](https://www.jabref.org/) verwenden.
In dieser ersten Übung werden Sie alle wichtigen Tools und die Entwicklungsumgebung aufsetzten, um im folgenden Änderungen und Erweiterungen im Code vornehmen zu können.


## Benutzeraccount auf Github
Falls Sie noch keinen Benutzeraccount auf [Github](https://www.github.com) haben, erstellen Sie bitte einen. Teilen Sie uns Ihren Github Benutzernamen via E-Mail an [marcel.luethi@unibas.ch](mailto:marcel.luethi@unibas.ch) mit, damit wir Ihnen Zugriff auf das Code-Repository geben können.

*Auf Github ist dieser Benutzername sehr prominent und wird auch in der Projektkommunikation verwendet. Achten Sie deshalb bitte darauf, dass Sie einen Benutzernamen wählen, der professionelles Arbeiten zulässt. Gute Beispiele sind: ```andreasmeier``` oder ```andreas``` oder ```ameier```. Beispiele von ungeeigneten Namen sind ```coderking```, ```cookiemonster``` oder ```skaterboy```.*



## Installation der Entwicklungswerkzeuge

### Git

Installieren Sie das Versionsverwaltungswerkzeug *Git*, welches Sie auf der offiziellen [Git Webseite](https://git-scm.com/) herunterladen können.

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

Falls Sie Probleme haben SSH einzurichten, können Sie alternativ auch ein Access Token erstellen und 
mit diesem Arbeiten. Eine Anleitung dazu finden Sie [hier](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token). 

### Installieren von Java und JavaFX

Für die Entwicklung von JabRef nutzen wir Java in der Version 19. Wir empfehlen Ihnen die Version 
von Eclipse Temurin, die Sie [hier](https://adoptium.net/temurin/releases?version=19) herunterladen
können. 

--
Um zu überprüfen ob Java korrekt auf Ihrem System verfügbar ist, öffnen Sie ein Terminal, und setzen die
Umgebungsvariable ```JAVA_HOME``` und ```PATH``` auf das neu installierte JDK.

Unter Windows (Powershell) machen Sie das wie folgt:
```
$env:JAVA_HOME="C:\Program Files\Eclipse Adoptium\jdk-19.0.2.7-hotspot"
$env:PATH="$env:JAVA_HOME\bin:$PATH" 
```
*Achtung:* Der Pfad kann sich je nach Version unterscheiden. Bitte passen Sie den Pfad entsprechend an.

Unter MacOS sollte das folgende Kommando funktionieren:
```
export "JAVA_HOME=$(/usr/libexec/java_home)"
export "PATH=$JAVA_HOME/bin:$PATH"
```

und unter Linux setzen Sie diese Variablen wie folgt:
```
export JAVA_HOME=PFAD_ZU_IHRER_JAVA_19_INSTALLATION
export “PATH=$JAVA_HOME/bin:$PATH”
```

Danach geben Sie folgendes Kommando ein:
```
 java -version
```
Die Ausgabe sollte ungefähr wie folgt aussehen:
```bash
openjdk version "19.0.2" 2023-01-17
OpenJDK Runtime Environment Temurin-19.0.2+7 (build 19.0.2+7)
OpenJDK 64-Bit Server VM Temurin-19.0.2+7 (build 19.0.2+7, mixed mode, sharing)
```
*Anmerkung:* Das Buildsystem Gradle, welches wir für das kompilieren und ausführen von JabRef verwenden, nutzt die Umgebungsvariable ```JAVA_HOME``` um das JDK zu finden. Diese Umgebungsvariable muss also immer richtig gesetzt sein, wenn Sie JabRef aus einem Terminal kompilieren oder ausführen wollen.

## JabRef

Nachdem wir nun alle Werkzeuge installiert haben, müssen wir noch das JabRef Projekt herunterladen. Dies geschieht via Github.


### Forken des Github Repositories

In diesem Kurs arbeiten wir nicht mit dem offiziellen JabRef Code Repository, sondern mit einem privaten Fork. Damit sind ihre Änderungen und unsere Bemerkungen für die Öffentlichkeit nicht zugänglich.
Damit Sie auf unseren Fork von JabRef zugreifen können, müssen wir Ihnen Zugriff auf dieses Repository geben. Sie können überprüfen ob Sie Zugriff haben indem Sie auf [https://github.com/unibas-marcelluethi/jabref](https://github.com/unibas-marcelluethi/jabref) gehen.
Falls Sie bereits Zugriff haben, sollte die Seite etwa wie folgt aussehen:
![image](images/github-jabref.png)


Nun erstellen Sie, ausgehend von unserem privaten Fork, ihren eigenen privaten Fork. Dazu klicken Sie oben rechts auf den "Fork" Button. Nach erfolgreichem Fork landen Sie nun auf Ihrer persönlichen Kopie des Projekts auf Github, mit der Sie von nun an arbeiten werden.

### Zugriffsrechte für Assistenten

Damit unsere Assistenten Ihre Abgaben anschauen können, müssen Sie diesen noch Zugriffsrechte auf ihr neues Repository geben. Dafür gehen Sie auf *Settings* und dann *Manage access*:
![github-manage-access](images/github-manage-access.png)

Klicken Sie dann auf *Add people* und fügen Sie `fabiandudler`, `Giovvvvva` und `josphstar` hinzu.
![github-manage-access](images/github-manage-access-invite.png)

Als Rolle im nachfolgenden Dialog wählen Sie *Write*.


### Klonen des Projekts

Damit Sie an dem Projekt arbeiten können müssen Sie das Repository noch auf Ihren eigenen Computer bringen (d.h. das Repository "klonen"). Drücken Sie den grünen Button mit Namen "Code", wählen Sie *SSH* und und kopieren Sie die URL. (Anmerkung: Falls Sie statt mit SSH mit einem Access-token arbeiten, müssen Sie an dieser Stelle statt *SSH* *HTTPS* wählen).

Öffnen Sie eine Konsole, wechseln Sie in ihr gewünschtes Arbeitsverzeichnis und geben Sie folgendes ein:

```
git clone THE_URL_FOR_YOUR_PROJECT JabRef
```

***Warnung:* Das Arbeitsverzeichnis darf nicht auf einem synchronisiert Drive sein. Dies führt zum einen zu Problemen mit JabRef selbst, vor allem aber auch mit git.** 

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

Wenn Sie nun das JabRef Programm sehen, dann konnten Sie ihr Projekt erfolgreich kompilieren und ausführen. Herzlichen Glückwunsch!
Sie werden in der Praxis aber nie direkt mit Gradle arbeiten, sondern meist über die IDE. Falls aber mal etwas nicht funktioniert (was bei so einem so grossen Projekt immer mal wieder vorkommt), können Sie mit diesen Kommandos von der Kommandozeile aus das Projekt bauen und ausführen, und so herausfinden, ob das Problem bei der IDE liegt.

## Öffnen des Projekts in der IDE

### IntelliJ Idea

Installieren Sie die Entwicklungsumgebung [IntelliJ IDEA](https://www.jetbrains.com/idea/). Informationen zu Download und Installation finden Sie auf der [Seite von JetBrains](https://www.jetbrains.com/idea/).

*Bemerkung 1:* Wir arbeiten in diesem Kurs mit der *Community Edition*, die als Open Source uneingeschränkt zugänglich ist.

Folgen Sie dann der Anleitung [Setup a local workspace](https://devdocs.jabref.org/getting-into-the-code/guidelines-for-setting-up-a-local-workspace/) in der JabRef [Development Documentation](https://devdocs.jabref.org/). 
Die ersten 3 Schritte, die mit *Pre condition* beginnen, können Sie überspringen, da Sie diese bereits erfüllt haben.

*Bemerkung 2:* In der Anleitung wird bereits Java 20 verwendet. Wir verwenden aber Java 19. Sie müssen also bei der Auswahl des JDKs die Version 19 wählen.	


### Ausführen des Projekts aus der IDE

Um JabRef aus der IDE zu starten öffnen Sie das Gradle Fenster und starten die Gradle Task *jabref [run]* indem Sie diese Doppelklicken (siehe Screenshot).
![Gradle-run](images/idea-run-gradle.png)

Wenn alles funktioniert hat, sollte nun JabRef erfolgreich aus der IDE gestartet werden können.

### Alles erfolgreich installiert?
Sie können uns Ihren Erfolg gerne im [Diskussionforum](https://github.com/unibas-marcelluethi/jabref/discussions) mitteilen. 









