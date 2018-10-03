# Einige wichtige Architekturmuster

* Im folgenden werden wir einige wichtige Architekturmuster, also verbreitete Strukturierungen von "uses" Graphen anschauen.*

## Layering

Das erste wichtige Muster ist das *Layering*. Hier werden die Module in verschiedene Ebenen eingeteilt. 
Die Kommunikation zwischen den Modulen findet nur zwischen den Ebenen, und immer nur mit der nächst tieferen Ebene statt. 
Das klassische Beispiel ist die sogenannte 3-Tier Architektur. Hier gibt es 3 Ebenen.

1. Die Präsentationsschicht. Die Präsentationsschicht entspricht der Benutzerschnittstelle. 
2. Die Anwendungslogik. Module auf dieser Ebene sind für die Anwendungslogik zuständig. 
3. Die Datenhaltungschicht: Module auf dieser Ebene kümmern sich um das Laden und Speichern von Daten. 
			
<img src="../../slides/images/module-layering.png" class="plain" />

<!-- Ein weiteres klassisches Beispiel, diesmal aus dem Netzwerkbereich, ist das ISO/OSI Referenzmodell. 

<img src="../../slides/images/osi-model.png" />

Es teilt die Kommunkation in verschiedene Ebenen ein. Auf der Ebenen 0 haben wir den Physical Layer. Die Aufgabe dieser Ebene ist 
das  -->

## Pipelines

Die nächste wichtige Architekturvariante ist die Pipeline. Bei der Pipeline wird jedes Modul nur von jeweils einem Vorgängermodul benutzt. Das Modul selbst
benutzt auch jeweils nur ein weiteres Modul. Diese Architektur ist sehr einfach zu verstehen und warten, da die Abhängigkeiten zwischen den Modulen minimal sind. 

<img src="../../slides/images/module-pipeline.png" class="plain" />

Pipelines sind immer dann die Richtige Architekturmethode, wenn Daten Schritt für Schritt bearbeitet und transformiert werden müssen. 
Ein typisches Beispiel ist die Bildverarbeitung. 
TODO expand

Pipelines ind auch im Betriebssystem Unix weit verbreitet. 
```
$ cat /etc/passwd | cut -d":" -f1 | grep marcel | less 
```
Bei obigem Kommando wird zuerst ein Text durch das Modul ```cat``` dargestellt. Das Modul ```cat``` nimmt diesen Input und schneidet die erste, durch : getrennte Spalte 
ab. Das Modul ```grep``` filtert alle Zeilen raus, die den Teilstring "marcel" beinhalten. Schlussendlich zeigt das Modul ```less``` den Ouput Zeilenweise an. 


## Blackboard

            </div>
            </section>

            <section>
                <h3>Beispielarchitektur: Blackboard </h3>
                <div>
                        <img src="../../slides/images/module-blackboard.png" class="plain" />
                    </div>

                    <ul>
                        <li>Kommunikation via zentrale Kommunikationsstelle.</li>
                        <li>N&uuml;tzlich wenn viele Subsysteme miteinander kommunizieren m&uuml;ssen.</li>
                    </ul>
            </section>



	