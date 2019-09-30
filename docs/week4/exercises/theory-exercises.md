# Übungsblatt Woche 4: Modularität


## 1. Uses Graphen
1. Schauen Sie sich den Dependency Graphen für das Jabref package ```org.jabref.model.entry``` an, den Sie [hier](../../exercises/images/dependency-graph.png) finden. 
Beschreiben Sie ihre Beobachtung und bewerten Sie die Modulstruktur. 

## 2. Beziehungen
1.  Angenommen die USES beziehung ist ein Baum. Was sagt das Über die Modulstruktur aus? Möchten Sie lieber einen Baum oder einen DAG?
2. In vielen Sprachen können Module als Argumente an Funktionen/Methoden übergeben werden. Angenommen ein Modul A ruft eine Funktion 
  f von Modul B auf, die dann ein Modul C als Parameter nimmt. Wie sieht der Uses Graph aus? Ist er in diesem Fall noch immer statisch bestimmt? Warum, warum nicht?


## 3. Kategorien von Modulen

Schauen Sie sich nochmals die Kategorien von Module an, die [hier](../slides/module-categories.html) besprochen wurde. Wählen Sie eine Programmiersprache die Sie gut kennen (z.B. Java, Python, Javascript, Scala, Go, Ruby, Bash, PhP, ...)

1. Beschreiben Sie, wie die Kategorien von Modulen in dieser Programmiersprache umgesetzt sind. 
2. Welche Arten von Modulen können an andere Module übergeben werden?
3. Gibt es in Ihrer Programmiersprache einen Unterschied zwischen Funktionen und Prozeduren?
4. Unterstützt Ihre Programmiersprache generische Module? Wie sind diese umgesetzt? 
    * Was können Sie über den generischen Typ T eines Moduls annehmen? Welche Einschränkungen können Sie spezifizieren?
    * Wie implementieren Sie eine Vergleichsfunktion ```compare(T a, T b)``` zwischen zwei Argumenten vom Typ ```T``` in dieser Sprache?

    
## 4. Modulsystem in Java
Lesen Sie diesen [Artikel](https://www.oracle.com/corporate/features/understanding-java-9-modules.html) zum Thema Java 9 Module.

Beantworten Sie folgende Fragen:
1. Welches Problem lösen Java Module?  Was ist der Unterschied zu Packages?
2. Was machen die Keywords *export*, *uses* und *provides ... with*
3. Welches Problem wird mit der *Open* Klausel gelöst?  Warum will man Reflection überhaupt einschränken?

