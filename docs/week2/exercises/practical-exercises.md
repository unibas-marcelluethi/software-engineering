# Praktische Übung 2: Erste Codeänderungen und Pull Requests

## Administratives

* Vorbesprechung, eine kurze Einführung in Git/Github und Hilfestellungen zu den Aufgaben gibt es in der Übungsstunde vom 26. September 2018
* Dieses Übungsblatt sollte bis am 2. Oktober 2018 bearbeitet werden.  
* Abgabe via Pull Request bis spätestens 2. Oktober, 23.59.

## Einführung

In dieser Übung werden Sie einen typischen Arbeitsablauf mit Git durchspielen. Dieser Ablauf wird in ähnlicher Form immer dann vorkommen, wenn Sie ein neues Feature 
für eine auf Github gehostete Software entwickeln wollen. Das Ziel dieser Übung ist, dass Sie sich mit den wichtigsten Befehlen und Abläufen in Git vertraut machen und auch das Zusammenspiel verschiedener lokaler und verteilter Repositories besser verstehen. 

Sie werden zudem auch ihre ersten kleinen Änderungen im Ganttproject vornehmen. Dabei werden Sie lernen, relevante Konzepte im Code zu lokalisieren und bestehenden Code zu imitieren.  


## Upstream Repository hinzufügen
In der ersten Übung haben Sie das Ganttproject Repository via Github "Fork" geklont. Das Repository, welches durch Ihren Fork auf github entstanden ist, nennen wir im folgenden *origin*. Das ursprüngliche Repository nennen wir *upstream*. Die Repositories *origin* und *upstream* sind völlig getrennt. Wenn im upstream Repository eine Änderungen vorgenommen wird, hat dies keine Auswirkungen auf das Repository *origin*. Das bedeutet, wenn Sie die Änderungen im *upstream* Repository bei Ihnen einbauen möchten, dann müssen Sie diese manuell einpflegen. 

Durch das Klonen von ihrem *origin* Repository mittels ```git clone```, haben Sie git bereits mitgeteilt, wo ihr *origin* Repository liegt. 
Mit dem Befehl 
```
git remote -v
```
können Sie sich die URL davon anzeigen lassen. 

Damit Sie auf die Änderungen vom *upstream* Repository zugreifen können, müssen Sie dies als weiteres remote Repository hinzufügen. Das machen Sie via:
```
git remote add upstream https://github.com/unibas-sweng/ganttproject-hs18.git
```

Verifizieren Sie, dass das Hinzufügen erfolgreich war, mithilfe dem Befehl:
```
git remote -v
```
Sie sollten nun nicht nur das *origin* sondern auch das *upstream* Repository sehen. 


* *Bemerkung 1:*  Upstream ist hier nur ein Alias für die URL. Sie könnten auch direkt mit der URL arbeiten.
* *Bemerkung 2:*  Der Name vom Alias ist beliebig. Git nennt das Repository, von welchem man klont automatisch *origin*, es wäre aber möglich dies umzubenennen. Das  Ursprungsrepository wird typischerweise *upstream* genannt. 


## Synchronisieren ihres Repositories mit dem Upstream

Als nächstes können sie die neusten Änderungen im *upstream* Repository via ```git pull``` zu sich ins Repository bringen. 
In unserem Fall möchten wir die Änderungen vom *master* Branch holen. Wir benutzen dazu das Kommando: 
```
git pull upstream master
```
Dieser Befehl kopiert die Commits vom *master* Branch des *upstream* Repositories in den aktuellen Branch in ihrem lokalen Git Repository. 


Falls sich nichts geändert hat, sollten Sie folgende Ausgabe sehen:
```
From https://github.com/unibas-sweng/ganttproject-hs18
 * branch              master     -> FETCH_HEAD
 * [new branch]        master     -> upstream/master
Already up to date.
```
Falls es neue Commits gegeben hat, sieht die Ausgabe wie folgt aus:
```
From https://github.com/unibas-sweng/ganttproject
 * branch            master     -> FETCH_HEAD
Updating 9ab9542..ff7726f
Fast-forward
 .gitignore | 163 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 163 insertions(+)
 create mode 100644 .gitignore
```
Die Zeile ```Updating 9ab9542..ff7726f``` gibt ihnen die Commit Ids der ersten und letzten Änderung an. 
Um zu sehen welche Änderungen mit diesem Pull vorgenommen wurden, nutzen sie folgende git Kommandos:
```
git log 9ab9542..ff7726f
```
oder
```
git diff 9ab9542..ff7726f
```
Das Erste gibt Ihnen alle Commit Messages der neuen Änderungen aus. Das Letzere zeigt die "Diffs" der Dateien an.   

In jedem Fall ist Ihr (lokaler) master Branch nun wieder auf dem aktuellen Stand und Sie können damit beginnen Ihre erste Änderung zu implementieren. 

## Einen Featurebranch erstellen

Bevor Sie irgendeine Änderung am Projekt vornehmen, sollten Sie immer mit git einen neuen Feature Branch erstellen. Damit sind immer alle 
Änderungen, die zu einem Feature gehören, klar getrennt. Das gibt Ihnen die Möglichkeit an mehreren unterschiedlichen Aspekten des Projekts parallel zu arbeiten, 
ohne dass sich die jeweiligen Änderungen beeinflussen. Ausserdem werden so Ihre Änderungen auch logisch strukturiert, was es später einfacher macht die *Git History*, also den Verlauf der Änderungen, zu verstehen. 

Um einen Branch zu erstellen wechseln Sie in Ihr Projektverzeichnis und geben folgende Kommandos ein:
```
git branch uebung2     
git checkout uebung2
```

```git branch``` erstellt den Branch ```uebung2``` und mittels ```git checkout``` können wir auf den entsprechenden Branch wechseln.

Mit 
``` 
git status 
```
können sie überprüfen auf welchem Branch sie gerade sind. Der Output sollte nun wie folgt aussehen:
```
On branch uebung2
Untracked files:
  (use "git add <file>..." to include in what will be committed)
  ...
  ...
  ````

## Erste Änderungen 

#### Änderung 1:
* Ändern Sie Ganttproject so ab, dass ein von Ihnen gewähltes Bild im Splashscreen angezeigt wird. 

*Tip:* Verwenden Sie die Suchfunktionen *Search Everywhere* (```Shift Shift```) oder *Find in Path* (```Ctrl-Shift-F```) um die entsprechenden Stellen im Code zu finden.  

Wenn Sie die Änderung erfolgreich implementiert und getestet haben, können Sie diese committen. Als erstes fügen Sie das neue Bild mit 
```
git add FILENAME
```
ihrem lokalen Git Repository hinzu. 
Mit 
```
git commit -a -m "Ihre message"
```
können Sie die Änderung committen. Bitte schreiben Sie eine sinnvolle Commit Message. Einige Hinweise wie gute Commit Messages aussehen sollen finden sie in diesem [Artikel](https://chris.beams.io/posts/git-commit/). 


#### Änderung 2
* Schreiben Sie Ihren Namen in den *About* Dialog (Help->About) und Committen Sie auch diese Änderung. 


## Abgabe Ihrer Änderung

Um ihre Änderung einzureichen, "pushen" Sie den aktuellen Branch mittels dem Kommando
```
git push origin uebung2
```
zurück auf github. Wenn Sie jetzt auf ihre Github Projektseite gehen (also https://github.com/YOUR_USERNAME/ganttproject-hs18), sollte Ihnen Github anzeigen, dass Sie 
soeben den neuen Branch ```uebung_2``` auf Github gepushed haben.

In einem realen Open Source Projekt möchten Sie jetzt Ihre Änderungen wieder in das *upstream* Repository einfliessen lassen. Dies macht man via einem *Pull Request*, 
welcher den Maintainer des *upstream* Repositories darüber informiert, dass man Änderungen vorgenommen hat, die man gerne zurückführen möchte. 

Dazu zeigen Sie sich zuerst alle verfügbaren Branches an: 
![](../../exercises/images/github-branches.png)


Wählen Sie beim Branch uebung_2 ```New pull request```.
![image](../../exercises/images/github-branch-view.png)
Auf der folgenden Seite können sie das Zielrepository auswählen. Hier würden Sie normalerweise das Upstream repository wählen. 

*WICHTIG! Da wir in diesem Projekt nicht alle Ihre Änderungen im upstream Repository wollen, wählen Sie hier stattdessen Ihr eigenes Repository (also ```YOUR_USERNAME/ganttproject-hs18```).*

![image](../../exercises/images/github-pr-repo.png)
Auf der folgenden Seite können Sie nun Ihre Änderung kurz beschreiben, sowie die Reviewers angeben. Als Reviewers geben sie bitte ```michaelPluess``` und ```schoenja``` an. 
![image](../../exercises/images/github-pr.png)
Danach schliessen Sie den Pull Request ab indem Sie ```Create Pull Request``` wählen.

Damit werden die von Ihnen angegebenen Reviewers darüber informiert, dass Sie gerne Ihren Code in den ```master``` Branch mergen wollen, und dass zuvor eine Review durchgeführt werden soll. In einem richtigen Projekt hätten die Reviewer nun die Aufgabe, die Codequalität zu prüfen bevor der Code in den Zielbranch gemerged wird. Die Reviewer könnten gegebenenfalls auch Änderungen verlangen. 

In unserem Fall dient der Pull Request als Abgabe und erlaubt uns Ihre Änderungen komfortabel durchzuschauen. Sie erhalten das Feedback dann direkt via Github. 


