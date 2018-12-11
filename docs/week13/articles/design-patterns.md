
# Weitere wichtige Design Patterns

*In diesem Artikel schauen wir uns einige weitere wichtige Design Patterns an, die Sie wahrscheinlich in der Praxis immer wieder antreffen werden, und die auch in Ganttproject eingesetzt wurden. 
Es handelt sich aber nur um eine kleine Auswahl von der grossen Anzahl von Patterns, die in der Praxis eingesetzt werden. Im Verlauf Ihrer Karriere werden Sie wahrscheinlich noch viele weitere Patterns kennenlernen.
Da der Katalog der relevanten Patterns sich laufend ändert, gehört das Erlernen der aktuell relevanten Patterns zum Berufsalltag von Softwareingenieuren.*

## Singleton Pattern

Das allereinfachste Designpattern ist das *Singleton Pattern*. Es wird angewendet, wenn wir sicher stellen wollen, dass nur eine Instanz von einer Klasse erstellt wird. Das *Singleton* Pattern ist also ein weiteres Beispiel eines Erzeugungsmusters.

Beispiele von Designproblemen wo der Einsatz eines Singletons Sinn macht gibt es viele: So sollte in einem Betriebssystem immer nur ein Window-Management-System aktiv sein, das alle Fenster verwaltet. Beim Drucken laufen alle Aufträge über genau einen *Druckerspooler*. Oder wir wollen, dass wir genau über ein Objekt Zugriff auf die Konfiguration eines Systems haben. 

#### Klassen- und Sequenzdiagramm

Die Struktur dieses Patterns ist sehr einfach. Das Klassendiagramm besteht nur aus einer Klasse, nämlich die, von der die Instanz erstellt werden soll. 
<figure>
    <img src="../../slides/images/patterns-singleton-class.png" class="plain" />
</figure>

Um eine Instanz der Klasse zu erstellen, wird die statische Methode ```getInstance``` benutzt. Der Konstruktor ist ```private```, so dass der Nutzer der Klasse gezwungen wird, die ```getInstance``` Methode zu verwenden, um eine Referenz auf die Klasse zu erlangen.

Üblicherweise gehört zur Beschreibung eines Design Patterns auch noch ein Sequenzdiagramm, welches die Dynamik erklärt. Auch dies ist beim Singleton Pattern trivial. Wir geben das Sequenzdiagramm der  vollständigkeithalber hier trotzdem an:

<figure>
    <img src="../../slides/images/patterns-singleton-sequence.png" class="plain" />
</figure>

#### Beispielcode

Die einfachste Implementation des Singleton Patterns ist hier gezeigt:
```java
public final class Singleton {
    private static final Singleton instance = new Singleton();
    
    private Singleton() {}
    
    public static Singleton getInstance() {
        return instance;
    }
}
``` 

Eine Referenz eines Singleton Objekts wird, wie bereits besprochen, durch den Aufruf der ```getInstance``` Methode erlangt.
```java
Singleton singletonInstance = Singleton.getInstance()
```


## Builder Pattern

Ein weiteres Beispiel eines Erzeugungsmusters ist das *Builder Pattern*. Das Builder Pattern wird immer dann eingesetzt wenn die Erzeugung eines Objekts umständlich oder komplex ist. Das Builder Pattern erreicht, dass die Erzeugung des Objekts unabh&auml;ngig von den Teilen ist, aus denen das Objekt besteht. Der Nutzer soll auch nicht wissen müssen, wie die Teile intern zusammengesetzt sind.
                 
Als Beispiel schauen wir uns folgendes Objekt an:
```java
class Task {
    private int a;
    private String b;
    ...
    private double z;

    public Task(int a, String b, ..., double z)
}
```
Um ein Objekt via dem Konstruktor zu konstruieren, müssten wir nun 26 Argumente angeben. Auch wenn die Sprache mehrere Konstruktoren in einer Klasse unterstützt, ist es nicht möglich, für alle möglichen Untermengen spezielle Konstruktoren anzubieten. Die Anzahl der Konstruktoren würde explodieren. 

Mit dem Builder Pattern können wir dieses Problem auf elegante Weise lösen. Wir stellen eine Schnittstelle zur Verfügung, mit dem der Benutzer nur die von ihm gewünschten Teile (Hier Teil A und Teil Z) initialisieren kann. Das gesamte Objekte wird dann intern beim Aufruf der Methode ```getResult``` erstellt. 
```
new Builder().createPartA("5").createPartZ(1.0).getResult();
```

 
#### Klassen- und Sequenzdiagramm

Die Implementation besteht aus einer abstrakten Klasse Builder, die die Konstruktion steuert. Konkrete Builder Implementationen können die Kreierung des Objekts unterschiedlich implementieren. Für jedes Teil gibt es eine separate *create* Methode. Häufig wird in diese *create* Methode wieder das Builder Objekt zurückgegeben, damit man die Methodenaufrufe wie in obigem Beispiel direkt hintereinander angeben kann. Wenn das Produkt erstellt ist, kann mit der Methode ```getResult``` eine Referenz auf das konstruierte Objekt erlangt werden.

Es gibt verschiedene Varianten des Builder Patterns. Im allgemeinsten Fall wird zusätzlich noch eine separate Klasse *Director* eingeführt, die die Konstruktion, das heisst die Aufrufe der verschiedenen *create* Methoden durchführt. Dies kann aber auch, wie in obigem Beispiel, direkt vom Nutzer gemacht werden.

<img src="../../slides/images/patterns-builder-class.png" class="plain" />

<img src="../../slides/images/patterns-builder-seq.png" class="plain" />

#### Beispiel (adaptiert aus Ganttproject)

Das Builder Pattern wird in Ganttproject an verschiedenen Stellen eingesetzt. Wir zeigen hier die wichtigsten Teile vom ```TaskBuilder```. In der in Ganttproject verwendeten Variante wird kein Director eingesetzt, sondern die *create* Methoden (also ```withId```, ```withDuration```, ...) werden direkt vom Nutzer der Klasse aufgerufen.


 ```java
abstract class TaskBuilder {                        
    Integer myId;
    TimeDuration myDuration;
    ...

    public TaskBuilder withId(int id) {
        myId = id;  return this;
    }                    
    public TaskBuilder withDuration(TimeDuration duration) {
        myDuration = duration;   return this;
    }
    ...
    public abstract Task build();
    }                        
}
``` 

```java
class TaskBuilderImpl extends TaskBuilder {
    @override public Task build() {                                
        if (myId == null || myTaskMap.getTask(myId) != null) {
            myId = getAndIncrementId();
        }                                
        if (myDuration != null) {
            duration = myDuration;
        } else {
            duration = (myEndDate == null) ? createLength(defaultTimeUnit(), 1.0f) 
                : createLength(defaultTimeUnit(), myStartDate, myEndDate);
        }
        ...
    }
}
```

Nutzung:
```java
Task newTask = new TaskBuilderImp().withId(1).withDuration(10).build();
```              

## Facade Pattern
 
Wir kommen nun zu einem Beispiel eines Strukturmusters. 
Das *Facade Pattern* löst dabei folgendes Problem:
Wenn ein Projekt stark modularisiert ist, muss eine Klasse unter Umständen viele andere Module nutzen, um ihre Funktionalität zu erfüllen. Das bedeutet, die Klasse wird eine hohe Kopplung aufweisen, was wir ja eigentlich vermeiden möchten.

Als konkretes Beispiel nehmen wir eine GUI Anwendung. Wenn ein Client eine GUI ansteuern möchte, braucht dieser oft gleichzeitig Window, Statusbar, Menubar, etc. Das heisst, der Client koppelt sich an alle diese GUI Elemente. Erschwerend kommt hinzu, dass die Schnittstellen eventuell auch noch inkonsistent sind. 

Das *Facade Pattern* führt hier eine neue Klasse ein, die eine einheitliche Schnittstelle zu den verschiedenen Subsystemen anbietet, und Funktionalität aus mehreren Subsystemen zusammenfasst. Die Nutzung der Fassade führt also zu einer tieferen Kopplung, wobei jedoch die ursprüngliche Modularisierung beibehalten wird. 

#### Klassen- und Sequenzdiagramm

Die Struktur des Facade Patterns ist extrem einfach. 
Wie in folgendem Klassendiagramm gezeigt, wird eine 
neue Klasse ```Facade``` eingefügt, welche die benötigten Klassen der Subsysteme nutzt. Anstatt dass der Client nun direkt mit den Subsystemen interagiert, interagiert der Client nur mit der ```Facade``` Klasse. 

<img src="../../slides/images/patterns-facade-class.png" class="plain" />

Dieses Verhalten ist auch nochmals im Sequenzdiagramm dargestellt.

<img src="../../slides/images/patterns-facade-sequence.png" class="plain" />


#### Beispiel aus Ganttproject

In Ganttproject wird das Facade Pattern unter anderem für die Ansteuerung der UI genutzt. Die Klasse ```UIFacade``` stellt eine einfach zu benutzende Schnittstelle zur Verfügung, um 
mit der UI zu interagieren.

```java
class UIFacade {
    private final JFrame myMainFrame;
    ...
    private final GanttStatusBar myStatusBar

    public void setStatusText(String text) {
        myStatusBar.setFirstText(text, 2000);
    }

    public void setWorkbenchTitle(String title) {
        myMainFrame.setTitle(title);
    }
    
}
 ```


 ## Observer Pattern

Das letzte Muster, das wir uns anschauen, ist ein Beispiel eines 
Verhaltensmusters. Das *Observer Pattern* wird häufig in GUI Bibliotheken, wie zum Beispiels *Java Swing* eingesetzt. 

Das *Observer Pattern* kann immer dann eingesetzt werden, wenn 
eine Menge von Objekten über eine Zustands&auml;nderung informiert werden muss, ohne dass man die Klassen eng aneinander koppeln will.                         
Als Beispiel können wir dafür eine Tabellenkalkulation nehmen. 
Hier werden die Daten (die Inhalte der Zellen) von der graphischen Darstellung getrennt. Wenn sich die Daten ändern, sollten folgende Objekte aktualisiert werden:
* Alle den Daten entsprechenden Zellen
* Alle Diagramme, die auf die Daten zugreifen 
* Alle Berechnungen, die auf die entsprechenden Zellen zugreifen. 

Da diese Objekte aber sonst semantisch nichts miteinander zu tun haben, möchte man diese nicht stark koppeln. 

#### Klassen- und Sequenzdiagramm

Das Problem wird gelöst, indem eine Klasse (hier ```Subject```) Methoden zur Registrierung von beliebig vielen ```Observern```  anbietet. Alle Observer werden in einer Liste verwaltet. 

<img src="../../slides/images/patterns-observer-class.png" class="plain" />

Wenn sich der Zustand eines Objekts vom Typ ```Subject``` ändert, wird die Methode ```notifyObservers``` aufgerufen. Diese informiert, via der ```update``` Methode, alle registrierten Observer, dass sich 
der Zustand des Objekts verändert hat. Die Observer können dann den neuen Zustand abfragen und die entsprechenden Aktionen durchführen. 

<img src="../../slides/images/patterns-observer-sequence.png" class="plain" />

#### Beispiel aus Ganttproject

Ein Beispiel, wo dieses Pattern in Ganttproject eingesetzt ist, ist die Klasse ```RoleManager```. Hier können sich Objekte via der Methode ```addRoleListener``` als Observer eintragen und 
werden dann über entsprechende Änderungen in der Rolle informiert (Methode ```fireRolesChanges```).

```java
public interface RoleManager {

    public interface Listener extends EventListener {
        public void rolesChanged(RoleEvent e);
    }
    
    private final List<Listener> myListeners  = new ArrayList<Listener>();
    public void addRoleListener(Listener listener) { myListeners.add(listener);}
                                    
    void fireRolesChanged(RoleSet changedRoleSet) {
        for (Listener l : myListeners) {
            l.rolesChanged(new RoleEvent(this, changedRoleSet));
        }
    }
    
    public Role createRole(String name, int persistentID) {
        ...
        myRoleManager.fireRolesChanged(this);
    }
}
```
Ein Beispiel eines Observers ist in diesem Fall ```ResourceTreeTable```. Diese Klasse registriert einen Observer (hier die anonyme Klasse ```RoleManager.Listener```), welche 
dann in der Methode ```rolesChanged``` die entsprechenden Aktionen definiert. 
```java
public class ResourceTreeTable extends GPTreeTableBase {
    ...
    public ResourceTreeTable(IGanttProject project, ...) {
        myRoleManager = project.getRoleManager();
        myRoleManager.addRoleListener(new RoleManager.Listener() {
        
            @Override public void rolesChanged(RoleEvent e) {
                setEditor(getTableHeaderUiFacade().findColumnByID(
                ResourceDefaultColumn.ROLE.getStub().getID()));
            }
        });
    }
...
}
``` 