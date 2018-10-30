{% include head.html %}

# Logische Spezifikation

*In diesem Artikel sehen wir uns eine wichtige Klasse von deskriptiven Spezifikationen an, nämlich Spezifikationen, die auf Mathematischer Logik (erster Stufe) basieren. Spezifikationen in Logik lassen uns nicht nur Eigenschaften von Systemen formal ausdrücken, sondern auch neue, nicht spezifizierte
Eigenschaften durch logisches schliessen herleiten.*

## Aufbau eines logischen Ausdrucks

Genau wie ein arithemtischer Ausdruck, besteht ein logischer Ausdruck aus Variablen, Funktionen, Konstanten und Klammern. 
Das Resultat ist aber nicht eine Zahl, sondern immer ein boolscher Wert (also Wahr oder Falsch).

Einzelne Ausdrücke können wir mit den logischen Konnektoren $$\texttt{und}$$, $$\texttt{oder}$$, $$\texttt{impliziert}$$ und $$\texttt{genau dann, wenn}$$ verbunden werden. Der Wahrheitswert jedes Ausdrucks kann mittels der Negation \texttt{nicht} negiert werden. 
Mittels den *Quantoren* $$\texttt{exists}$$ und $$\texttt{forall}$$ können wir audrücken, dass eine logische Aussage für mindestens 1 oder für alle möglichen Zuweisungen an die entsprechende Variable gelten muss. 

Wir veranschaulichen dies an ein einigen Beispielsätzen:

##### Beispiel 1: $$ x > y \texttt{ and } y > z \texttt{ implies } x > z $$

Diese Aussage besagt, dass wenn $$x > y$$ und $$y > z$$ ist, dann ist auch $$x > z$$. Dies ist offensichtlich eine wahre Aussage, unabhängig davon, wie ich die Werte der Variablen $$x,y$$ und $$z$$ wähle. 

##### Beispiel 2: $$ x = y \texttt{ genau dann, wenn } y = x$$

Diese Aussage besagt, dass $$x=y$$ äquivalent ist zu $$y=x$$. Auch dies ist eine wahre Aussage. 


##### Beispiel 3: $$ x + 1 < x - 1$$

In diesem Beispiel haben wir eine Aussage, die immer falsch ist. Auch hier ist der Wahrheitswert unabhängig vom Wert der Variablen $$x$$.

##### Beispiel 4: $$ x > 3 \texttt{ or } x  < -6$$

Im Gegensatz dazu können wir den Wahrheitswert dieser Formel nur für konkrete Werte von $$x$$ bestimmen, nicht aber im allgemeinen.

##### Beispiel 5: $$ \texttt{forall } x,y,z \; (x > y \texttt{ and } y > z \texttt{ implies } x > z)$$

Diese Aussage besagt, dass für alle Werte $$x,y,z$$ gilt, dass immer
wenn $$x > y$$ ist, und $$y > z$$ gilt, dass dann $$x > z$$ gilt. 
Die Aussage ist dieselbe wie im ersten Beispiel. Jedoch haben wir hier den Quantoren $$\texttt{forall}$$ verwendet, d.h. die Aussage muss für alle Werte von $$x,y,z$$ gelten, damit die Aussage wahr ist. Wir haben hier also keine freien Variablen in der Formel, welche den Wert des Ausdrucks bestimmen. 

##### Beispiel 6: $$ \texttt{forall } x \; (\texttt{ exists } \; y \; (y=x + z))$$ 

In dieser Aussage haben wir eine freie Variable, nämlich $$z$$. 
Die Aussage besagt, dass wir, egal wie wir $x$ wählen, immer einen Wert für $y$ finden, für den gilt dass $$y=x+z$$. Dies ist
offensichtlich wahr, nämlich dann, wenn wir $$z=y-x$$ setzen.

## Spezifizieren von Programmen
Wir können nun logische Aussagen nutzen um Eigenschaften eines Programms $$P$$ 
zu spezifizieren. Wir nutzen folgende Notation:

$$
 \{\texttt{pre}(i_1, i_2, \ldots, i_n\} \\ P \\ \{\texttt{post}(o_1, o_2, \ldots, o_m,
                i_1, i_2, \ldots, i_n\} 
$$

wobei $$i_1, \ldots, i_n$$ die Eingaben und $$o_1, \ldots, o_m$$ die Ausgaben bezeichnen, $$\texttt{pre}$$ die *Vorbedingung* (precondition) und
$$\texttt{post}$$ (postcondition) die Nachbedingung bezeichnet. Die VorBedingungen sind die Bedingungen, die für das Programm vor dem Aufruf gelten müssen. Die Nachbedingungen spezifizieren, was nach erfolgreichem Aufruf des Programms gilt.

#### Beispiel 1: Ganzzahldivision

$$
\{ \texttt{ exists } z \; (i_1 = z \cdot i_2) \} \\ P \\ \{ o_1 = i_1 / i_2\} 
$$

In diesem Beispiel wird als Vorbedingung verlangt, dass die Zahl Teilbar ist. Als Nachbedingung wird angegeben, dass die Ausgabe $$o_1$$ genau der Quotient vom ersten und zweiten Eingabeargument $$i_1, i_2$$ ist. 

#### Beispiel 2: Ganzzahldivision mit stärkeren Anforderungen an das Programm
Wir können die Anforderung an das Programm auch erhöhen. Die Anforderungen an ein Programm werden höher, wenn  wir die Vorbedingungen abschwächen, aber die Nachbedingungen verstärken. Das Programm muss also mehr leisten:

$$ 
\{ i_1 > i_2 \} \\ P \\ \{ i_1 = i_2 \cdot o_1 + o_2 \texttt{ and } o_2 \ge 0 \wedge o_2 \le i_2\} 
$$

In diesem Beispiel hier erlauben wir also nun auch ganzzahlige Division für zwei Zahlen, die nicht ganzzahlig Teilbar sind. Das Programm muss also für eine grössere Klasse von Eingabewerten die spezifizierten Resultate liefern. 
                
####  Beispiel 3: Grösster gemeinsamer Teiler
Das folgende, etwas kompliziertere Beispiel zeigt ein Programm, 
das den grössten gemeinsamen Teiler zweier Zahlen berechnet. 

$$
    \begin{split} \{ & i_1 > 0 \texttt { and } i_2 > 0 \} \\ &P \\ \{ & \\ & (\texttt{ exists } z_1, z_2 \; (i_1 = o \cdot z_1 \texttt{ and } i_2 = o \cdot
                    z_2) \\ & \texttt{ and } \texttt{ not } \\
                    & (\texttt{exists } h  ( \texttt { exists } z_1, z_2 \\ &  (i_1 = h \cdot z_1 \texttt{ and } i_2 = h \cdot z_2)
                     \texttt{ and } h > o)) \\ &\} \end{split}
$$

## Spezifizieren von Prozeduren und Funktionen

Prozeduren und Funktionen können genau wie Programme spezifiziert werden. Im Gegensatz zur Spezifikation von Programmen, können die Vor und Nachbedingungen aber Zugriff 
auf Programmvariablen bekommen. 

$$
\begin{split} &\{n > 0\} \\ &\text{procedure reverse(a: in out IntArray; n : in Integer)} \\ &\{\forall i (1 \le i \le n)
\texttt{ implies } (a(i) = \text{old_a}(n-i+1) ) \}
\end{split} 
$$

## Spezifizieren von Invarianten in Klassen

Wenn wir objektorientiert Programmieren, möchten wir nicht nur 
Funktionen und Prozeduren, sondern auch Klassen spezifizieren können. Dabei reichen und Vor- und Nachbedingungen nicht aus. 
Wir brauchen auch ein Konstrukt um zu sagen, was im Kontext dieser Klasse immer gilt, also auch über mehreren Methodenaufrufen hinweg. Das spezifizieren wir mittels Invarianten. Die Invarianten gelten, unabhängig von der Reihenfolge und der Anzahl Aufrufe von Methoden einer Klasse.
Wir schauen uns hier ein Beispiel für die Klasse ```Set``` an, 
die eine Menge von Elementen definiert. Unsere Klasse sollte
also sicherstellen, dass kein Element mehrmals vorkommen kann. 

$$
    \begin{split} &\text{// Invariante in Klasse Set} \\ &\text{ // Set wird mit Array impl definiert } \\ &\forall i, j \; (1
    \le i \le \text{ length } \texttt{ and } 1 \le j \le \text{ length } \texttt{ and } i \neq j) \\ &\texttt{ implies } \text{impl}[i]
    \neq \text{impl}[j] \end{split}
$$
     