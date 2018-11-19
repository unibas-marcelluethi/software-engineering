# Agile Softwareentwicklung

*Die Softwareprozess die wir uns bisher angeschaut haben, versuchen die Prozesse, und auch die während dem Prozess definierten Artefakte, stark zu strukturieren. Damit erreichen wir 
die im vorigen Video diskutierten Qualitätsmerkmale von Softwareprozessen. Ein Nachteil dieser Prozesse ist, dass sie eine gewisse Schwerfälligkeit haben und sich nicht optimal an veränderte Anforderungen 
anpassen können. Für kleine bis mittelgrosse Projekte führen diese Methoden auch zu einem gewissen *Overhead*. Viel Zeit wird damit verbracht zu entscheiden, wie das System entwickelt wird, und verhältnismässig wenig Zeit mit der eigentlichen Entwicklung und dem Testen der Software. 
Durch das Internet ist in den 90er Jahren ein sehr dynamisches Umfeld entstanden, in dem sich Anforderungen an Anwendungen innerhalb kurzer Zeit
radikal ändern konnten. Es ist also nicht erstaunlich, dass sich in dieser Zeit eine Gegenbewegung entwickelt hat, die die Flexibilität in der Entwicklung, aber auch die Rolle der Entwickler, wieder in den Vordergrund gestellt hat. Es sind dabei verschiedene Methodologien, wie Extreme Programming, Kanban oder Scrum entstanden. Alle diese Methoden wurden sind nun als *Agile* Methoden der Softwareentwicklung bekannt.*

## Das Agile Manifest
Im Jahre 2001 haben sich eine Gruppe von Vertretern von verschiedenen Agilen Methodologien getroffen und versucht, die Werte die 
all diesen Methoden zugrunde liegen in einem Manifest festzuhalten. Dabei ist das *Agile Manifest* entstanden. 

Die deutsche Übersetzung lautet wie folgt:

> Wir erschließen bessere Wege, Software zu entwickeln, indem wir es selbst tun und anderen dabei helfen. Durch diese Tätigkeit haben wir diese Werte zu schätzen 
> gelernt: 
> * Individuen und Interaktionen stehen über Prozessen und Werkzeugen
> * Funktionierende Software steht über einer umfassenden Dokumentation
> * Zusammenarbeit mit dem Kunden steht über der Vertragsverhandlung
> * Reagieren auf Veränderung steht über dem Befolgen eines Plans.
> 
> Das heißt, obwohl wir die Werte auf der rechten Seite wichtig finden, schätzen wir die Werte auf der linken Seite höher ein.


## Methodologien

Es gibt ganz verschiedene Methodologien, die diese Werte so umsetzen. Die einflussreichste Methodologie war sicherlich *Extreme Programming*. 
Die heute am weitesten verbreitete Methodologie ist sicherlich *Scrum*. Wir werden uns Scrum in dieser Vorlesung noch genauer anschauen. 

Um einen kurzen Eindruck zu erhalten, was für Methoden eingesetzt werden können, um die Werte im Agilen Manifest umzusetzen, schauen wir uns hier kurz 
einige Methoden von Extreme Programming an:

#### Extreme Programming

*Extreme Programming* ist eine spezielle Form einer agilen Methodologie. Es werden vier fundamentale Charakteristiken definiert, um agilität zu erreichen, nämlich 
*Kommunikation*, *Einfachheit*, *Mut* und *Feedback loops*. Diese Charakteristiken werden via den folgenden Methoden umgesetzt:

##### Planungsspiel (Planing game)

Zusammen mit dem Kunden, der im Extreme Programming immer vor Ort sein sollte, werden in einem Plannungsspiel die wichtigsten Anforderungen identifiziert. 
Wie wichtig eine Anforderung ist, wird daran gemessen, wie viel Wert sie dem Kunden bringt. Die Anforderungen werden mithilfe von *User-Stories* ermittelt. 
*User Stories* sind Use-Cases sehr ähnlich, sind aber vom Umfang her deutlich kleiner. Jede User Story soll in 2-3 Sätzen eine Anforderung beschreiben und dabei erklären, wie eine Interaktion  eines Nutzers mit dem System von sich geht und welchen Wert sie dem Kunden bringt.  Wenn alle Stories geschrieben sind, werden diese
Priorisiert und daraus werden die Anforderungen für den nächsten Release bestimmt.

##### Kleine Releases
 Eine wichtige Methode um schnelle Feedback Loops zu erreichen ist es, dass wir nur kleine Releases machen. Im Extreme Programming verfolgen wir also ein 
 inkrementelles oder iteratives Prozessmodell. In jedem Release wird die Software einen Schritt in Richtung Gesamtsystem erweitert.

##### Metapher
Das Team einigt sich auf deine gemeinsame Vision, wie das System funktionieren soll. Um diese Vision zu unterstützen, wird eine entsprechende Metaphor gesucht
(also zum Beispiel, das System funktioniert wie ein Bienennest). Auch wenn keine so bildliche Metaphor gefunden wird, sollte sich das Team zumindest auf 
gemeinsame Terminologie einigen, damit alle Teammitglieder genau wissen, wie die Teile vom System funktionieren, und keine Kommunikationsprobleme auftauchen.

##### Einfaches Design

Das Design soll so einfach wie möglich gehalten werden. Es wird immer das im Moment einfachst mögliche Design gewählt, ohne bereits mögliche zukünftige Änderungen 
miteinzubeziehen. Die Philosophie dahinter ist, dass wenn wir bereits für die Zukunft designen, wird unser System schnell komplex und enthält Funktionalität, die 
wir nie brauchen werden. (Das ist auch unter dem Akronym YAGNI, *You aint gonna need it* bekannt).

##### Test First Ansatz

Bevor eine Funktionalität implementiert wird, müssen immer zuerst Testfälle geschrieben werden. Damit wird der Kunde gezwungen, die Anforderungen genau 
zu spezifizieren. Das Ziel des Entwicklers ist es dann, das einfachstmögliche System, welches die Tests erfüllt, zu implementieren.

##### Refactoring

Während das System wächst, ändern sich häufig auch die Anforderungen an das System. Da man in Extreme Programming nur immer das 
einfachste Design wählt, und nie künftige Anforderungen miteinbezieht, kommt es häufig vor, dass das gewählte Design geändert werden muss, wenn 
neue Anforderungen hinzukommen. Das *Code refactoring*, also das überarbeiten und verbessern des bestehenden Codes, ohne die Funktionalität zu ändern, 
ist deshalb ein wichtiger Teil vom Projekt. Refactoring sollte in kleinen Schritten durchgeführt werden. Durch die Umfangreiche Testabdeckung wird sichergestellt, dass auch nach dem Refactoring die Anforderungen noch immer erfüllt sind.


##### Pair Programming

An der Entwicklung von jeder Funktionalität sind immer zwei Entwickler beteiligt. Dabei sitzen diese immer vor demselben Computer und teilen sich eine Tastatur. 
Damit wird nicht nur die Code-qualität verbessert, sondern es wissen auch immer mehrere Personen bescheid, wie ein Stück software funktioniert. Wenn immer ein 
erfahrenerer Entwickler mit einem weniger Erfahrenen Entwickler zusammenarbeitet, kann Pair Programming auch als Ausbildungprozess und Wissenstransfer gesehen werden.

##### Kollektive Verantwortung (Ownership) 

Im Extreme Programming kann jeder Programmieren jeden Teil vom Programm ändern. Es gibt also keine Programmieren, die für nur einen Teil vom Programm verantwortlich sind. 

##### Kontinuierliche Integration

Damit schnelle Feedback loops möglich sind, sollte es immer möglich sein eine lauffähige (und getestete) Version eines Systems innerhalb kurzer Zeit zu erstellen. 
Dazu werden Systems genutzt, die automatisiert die Module integrieren und die entsprechenden Integrationstests ausführen. 

##### Nachhaltiges Arbeitstempo

Der Fokus von Extreme Programming auf Personen und nicht Prozesse äussert sich auch dadurch, dass die Gesundheit und Bedürfnisse der involvierten Personen geschützt werden sollen. Deshalb gibt es im Extereme Programming die Regel, dass niemand länger als 40 Stunden pro Woche arbeiten sollte.

##### Kunde an Ort

Idealerweise sollte der Kunde immer vor Ort sein und direkt mit dem Entwicklungsteam zusammenarbeiten. Damit können Anforderungen zusammen erfasst werden und der
Kunde kann auch Input und Feedback geben, wie das System getestet werden kann.

##### Entwicklungsstandards

Damit alle Entwickler im Team reibungslos zusammenarbeiten können, werden im Extreme Programming klar definierte Coding Standards eingesetzt. Das Ziel ist, 
dass obwohl ein System von vielen Leuten in enger Kooperation entwickelt wird, der Code aussehen sollte, als wäre er von einer Person entwickelt worden.


## Agil oder traditionell

Wir haben nun kurz mögliche Methoden gesehen, wie man agile Prinzipien und Werte umsetzen kann. Extreme Programming ist nur eine von vielen Möglichkeiten, und wir werden sehen, dass zum Beispiel Scrum, zum Teil abweichende Methoden propagiert. Allen agilen Methoden ist aber gemeinsam, dass die Flexibilität im Vordergrund steht und insbesondere die Dokumentation eine viel kleinere Rolle einnimmt als in traditionellen Entwicklungsprozessen. 

Wie so häufig, wenn eine neue Methode als Gegenreaktion auf eine traditionellen und etablierten Ablauf entwickelt wird, gibt es die Tendenz, dass das
Pendel zu sehr auf die Gegenseite ausschwingt, und auch die guten Seiten der traditionellen Methoden mit überboard geworfen werden. Obwohl Agile Methoden inzwischen erfolgreich in vielen Projekten eingesetzt werden, gibt es auch viele kritische Stimmen zu diesem Ansatz. Wir werden im nächsten Artikel eine solche Kritik lesen. 


