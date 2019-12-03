
# Weitere wichtige Design Patterns

*In diesem Artikel schauen wir uns einige weitere wichtige Design Patterns an, die Sie wahrscheinlich in der Praxis immer wieder antreffen werden. 
Moderne Anwendungen wie JabRef setzen eine Vielzahl von solchen Patterns ein und wir können auch hier nur eine kleine Auswahl geben.*

Im Verlauf Ihrer Karriere werden Sie wahrscheinlich noch viele weitere Patterns kennenlernen.
Da der Katalog der relevanten Patterns sich laufend ändert, gehört das Erlernen der aktuell relevanten Patterns zum Berufsalltag von Softwareingenieuren.

## Singleton Pattern

Das allereinfachste Designpattern ist das *Singleton Pattern*. Es wird angewendet, wenn wir sicher stellen wollen, dass nur eine Instanz von einer Klasse erstellt wird. Das *Singleton* Pattern ist also ein weiteres Beispiel eines Erzeugungsmusters.

Beispiele von Designproblemen wo der Einsatz eines Singletons Sinn macht gibt es Viele: So sollte in einem Betriebssystem immer nur ein Window-Management-System aktiv sein, das alle Fenster verwaltet. Beim Drucken laufen alle Aufträge über genau einen *Druckerspooler*. Oder wir wollen, dass wir genau über ein Objekt Zugriff auf die Konfiguration eines Systems haben. 

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

#### Beispielcode in Jabref

In Jabref wird das Singleton pattern zum Beispiel in der Klasse ```org.jabref.logic.logging.LogMessages``` eingesetzt. Die Umsetzung ist klassisch: Die einzige Instanz eines Objekts vom Typ ```LogMessages``` kann über die statische Methode ```getInstance``` erlangt werden. 



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

#### Beispiel aus Jabref

Das Builder Pattern wird in JabRef zum Beispiel beim Erstellen von BibTex Einträgen in der Klasse ```org.jabref.model.entry.BibEntryTypeBuilder``` eingesetzt.  In der in Jabref verwendeten Variante, wird kein 
Director eingesetzt, sondern die *create* Methoden werden direkt vom Benutzer aufgerufen. Die *create* Methoden heissen hier ```withType```, ```withImportantFields``` und ```withRequiredFields```. Um das Objekt zu bauen, wird dann die Methode ```build``` aufgerufen.  

```java

public class BibEntryTypeBuilder {
    private EntryType type = StandardEntryType.Misc;
    private Set<BibField> fields = new HashSet<>();
    private Set<OrFields> requiredFields = new HashSet<>();

    public BibEntryTypeBuilder withType(EntryType type) {
        this.type = type;
        return this;
    }


    public BibEntryTypeBuilder withImportantFields(Collection<Field> newFields) {
        this.fields = Streams.concat(fields.stream(), newFields.stream().map(field -> new BibField(field, FieldPriority.IMPORTANT)))
                            .collect(Collectors.toSet());
        return this;
    }

    
    public BibEntryTypeBuilder withRequiredFields(Set<OrFields> requiredFields) {
        this.requiredFields = requiredFields;
        return this;
    }

    ...

    public BibEntryType build() {
        Stream<BibField> requiredAsImportant = requiredFields.stream()
                                                             .flatMap(TreeSet::stream)
                                                             .map(field -> new BibField(field, FieldPriority.IMPORTANT));
        Set<BibField> allFields = Stream.concat(fields.stream(), requiredAsImportant).collect(Collectors.toSet());
        return new BibEntryType(type, allFields, requiredFields);
    }
```



Eine Beispielanwendung findet man zum Beispiel in der Klasse ```org.jabref.model.entry.BibEntryTypesManager```. Der Aufruf sieht dann wie folgt aus:
```java

... 

BibEntryTypeBuilder entryTypeBuilder = new BibEntryTypeBuilder()
                .withType(type)
                .withImportantFields(FieldFactory.parseFieldList(optFields))
                .withRequiredFields(FieldFactory.parseOrFieldsList(reqFields));
entryTypeBuilder.build();

... 
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


#### Beispiel aus Jabref

Ein Beispiel des Facade Pattern in Jabref ist der ```org.jabref.logic.citationstyle.CitationStyleGenerator```. Diese Klasse implementiert keine eigene Funktionalität, sondern stellt nur 
verschiedene Methoden zur Verfügung, um dieselbe Funktionalität (das generieren von Zitationsstile) komfortabel anzusprechen. 

```java
public class CitationStyleGenerator {

    // Interen Klasse die die Funktionalität übernimmt
    private static final CSLAdapter CSL_ADAPTER = new CSLAdapter();

    ...

    protected static String generateCitation(BibEntry entry, CitationStyle style) {
        return generateCitation(entry, style.getSource(), CitationStyleOutputFormat.HTML);
    }

    protected static String generateCitation(BibEntry entry, String style) {
        return generateCitation(entry, style, CitationStyleOutputFormat.HTML);
    }

    public static String generateCitation(BibEntry entry, String style, CitationStyleOutputFormat outputFormat) {
        return generateCitations(Collections.singletonList(entry), style, outputFormat).stream().findFirst().orElse("");
    }

    public static List<String> generateCitations(List<BibEntry> bibEntries, String style, CitationStyleOutputFormat outputFormat) {
        ...
            return CSL_ADAPTER.makeBibliography(bibEntries, style, outputFormat);
        ...
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

#### Beispiel aus Jabref

Ein Beispiel, wo dieses Pattern in Jabref eingesetzt ist, ist der Eventbus. Das Folgende Beispiel aus dem JabRef Wiki illustriert das Prinzip. Der Observer wird hier Listener genannt.

```java
public class Listener {
   
   private int value = 0;
   
   @Subscribe
   public void listen(int value) {
      this.value = value;
   }

   public int getValue() {
      return this.value;
   }
}
```

Der Listener wird beim Eventbus registriert. Wenn ein Event mittels der Methode ```post``` an den Eventbus gesendet wird, werden alle registrierten Listeners entsprechend 
informiert.

```java
public class Main {
   private static EventBus eventBus = new EventBus();
   
   public static void main(String[] args) {
      Main main = new Main();
      Listener listener = new Listener();
      eventBus.register(listener);
      eventBus.post(1); // 1 represents the passed event

      // Output should be 1
      System.out.println(listener.getValue());
   }
}
``` 