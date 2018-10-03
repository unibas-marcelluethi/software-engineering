# Abstrakte Datentypen und Objektorientierte Programmierung 

*Wir haben in unserer Abstrakten Textuellen Beschreibung bereits gesehen, dass 
Abstrakte Datentypen sehr starke Ähnlichkeit mit den Konstrukten haben, die wie von der
Objektorientierung kennen.*



In objektorientierten Programmiersprachen wie Java oder Python, wird das Konzept des Abstrakten Datentypen umgesetzt und durch 
verschiedene Sprachkonstrukte unterstützt. 
Die Klasse entspricht dabei einem Spezialfall vom ADT Modul, welches wir in vorigem Video gesehen haben. 
Die Operationen die dem Benutzer angeboten werden, werden hier Methoden genannt. Gleichzeitig bieten Objektorientierte Sprachen auch eine standardisierte 
Funktion an (die wir Konstruktor nennen), um Instanzen (also Objekte) von einem ADT zu kreieren. Um die Verwendung der Objekte angenehmer zu machen, müssen die 
Objektinstanzen nicht jedesmal dem Objekt übergeben werden, sondern werden direkt mitgegeben. 
Als Beispiel schauen wir uns folgende Python Klasse an:
```python
class A:
    attribute = "bar"

    def __init__():  # Konstruktor
        ...
    def foo(self): 
        print(self.attribute)        
```

Wie wir hier sehen, bekommt die methode ```A.foo``` ein Argument ```self```, welches der Objektinstanz entspricht. Dies ist genau 
wie in unserem ADT Module. Jedoch bietet Python hier eine kurze Schreibweise um die Methode aufzurufen. Statt ```A.foo(a)``` kann ich schreiben
```a.foo()```. Die Objektreferenz wird intern verwaltet. 

Bei Java geht die Umsetztung noch einen Schritt weiter. Die Referenz auf die Objektinstanz wird in der Methodendefinition nicht mehr explizit angegeben. 
Wir definieren die Klasse wie folgt: 
```java
class A {

    String attribute = new String("bar");

    public A() { // Konstruktor }
    
    void foo() { System.out.println(this.attribute); }
}
```
Um die Klasse zu nutzen, können wir auch hier direkt auf dem Objekt arbeiten
```java
 A a = new A(); 
 a.foo(); 
```
```
Obwohl sich die Umsetzung in einigen Details unterscheidet, sehen wir hier also deutlich wie das ADT Modul, und entsprechend das Prinzip des *Information Hiding* hier umgesetzt wurde. 