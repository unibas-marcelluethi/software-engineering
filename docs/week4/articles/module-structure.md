# Modulstruktur

*Eine Software besteht aus Teilen - den Modulen -. Diese Teile stehen nicht alleine, 
sondern in Beziehung zueinander. In diesem Artikel schauen wir uns an, wie wir 
diese Beziehung formalisieren können.*

## Modulbeziehung als Zweistellige (binäre) Relation 

Gegeben sei eine Menge von Modulen $M = \{ M_1, \ldots, M_n \}$ 
<!-- 
                <div style="text-align: left">
                <p>Module: \[ S = \{M_1, \ldots, M_n\} \] 
                </p>
                <p>
                Eine <mark class="highlight"> binäre Relation r</mark> ist        
                eine Teilmenge \[ r \subset S \times S. \]
                </p>    
                <p>Wir schreiben
                    <p>
                        \[ M_i\, r\, M_j \text{ falls } (M_i, M_j) \in r \]
                </div>
            </section>

            <section>
                <h1> Transitive H&uuml;lle</h1>
                
                <div style="text-align: left">
                Die <mark class="highlight">Transitive Hülle</mark> ist wie folgt definiert: 
                \[ \begin{align} &M_i\, r^+\, M_j \text{ genau dann, wenn } \\ &M_i\, r \, M_j \\ &\text{ oder } \\ &\exists M_k \in S \;
                \text{so dass} \; M_i r M_k \text{ und } M_k r^+ M_j \end{align} \]
            </div>
            </section>

## Hierarchien und Ebenen

Wie wir später sehen werden, gibt es gewisse Anordnungen von Modulen, die spezielle geeignet sind
für Software Engineering. Insbesondere möchten wir häufig, das Module in Hierarchien angeordnet sind. Hierarchien sind anordnungen, wo wir jedem Modul eine Ebene zuweisen können. Wir definieren nun  die Begriffe Hierarchie und Ebene formal. 

            <section>
                <h1> Hierarchien </h1>
                Eine binäre Relation $r$ ist eine
                <mark class="highlight">Hierarchie</mark> genau dann, wenn 
                \[ \nexists (M_i, M_j)  \text{ so dass }  M_i \, r^+ \, M_j
                \text{ und } M_j \, r^+ \, M_i \]
            </section>

            <section>
                <h1> Quiz </h1>
                <ul><li>
                    Was ist die transitive H&uuml;lle von M2?</li>
                    <li>Welche Graph beschreibt eine Hierarchie?</li>
                </ul>
                <div style="width:50%;float:left">
                    <img src="../../slides/images/module-dag.png" class="plain"/>
                </div>
                <div style="width:50%;float:right">
                    <img src="../../slides/images/module-hierarchy.png" class="plain"/>
                </div>

            </section>


            <section>
                <h1>Abstraktionsebenen </h1>
                <div style="padding-bottom:5mm">
                    <ul>
                        <li> Hierarchien organisieren Module als "Abstraktionsebenen"</li>
                        <li> Jede Ebene definiert "Abstrakte Maschine" </li>
                    </ul>
                </div>
                <div class="fragment framebox" style="text-align:left">
                    <h2>Formale Definition</h2>
                    <ul>
                        <li>
                            $M_i$ ist auf Ebene 0, falls \[ \nexists M_j, \text{ so dass } M_i r M_j \]
                        </li>
                        <li>
                            Sei $k$ die h&ouml;chste Ebene aller Module $M_j$, so dass $M_i r M_j$. Dann ist $M_i$ auf Ebene $k+1$
                    </ul>
                </div>
            </section>


            <section>
                <h1> Quiz </h1>
                <ul>
                    <li>Auf welcher Ebene ist Knoten $M_3$?</li>
                </ul>
                <div style="width:50%;float:none;margin-left:auto;margin-right:auto">
                    <img src="../../slides/images/module-hierarchy.png" class="plain"/>
                </div>

            </section>

 -->
