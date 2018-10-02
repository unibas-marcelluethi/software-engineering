# Modularität
            
*Wir haben gesehen, dass das Prinzip der Modularität eine zentrale Rolle im Software Engineering einnimmt. In diesem Artikel wollen wir einige allgemeine
Aspekte von Modularität diskutieren.*            

## Top down vs Bottom up
Modularität erlaubt es uns, das Prinzip des "Teilen der Verantwortlichkeiten" in zwei Phasen durchzuführen: 

1. Das Ausarbeiten der Details eines Moduls (unter Vernachlässigung der Details anderer Module)
2. Das Integrierung der Module in ein Gesamtes, unter Berücksichtigung der Beziehungen zwischen den Modulen, aber der Vernachlässigung der Details der Module.

Wenn diese zwei Phasen so nacheinander ausgeführt werden, spricht man von einem *Bottom up* Design. Wenn diese Phasen in umgekehrter Reihenfolge 
ausgeführt werden, spricht man von einem *Top Down* Design. In der Praxis wird ein Design selten nur Top Down oder nur Bottom Up erstellt. Viel wechselt man 
zwischen den verschiedenen Ansätzen. Diese Änderung der Sichtweise ermöglicht es häufig, einen besseren Überblick über das Problem zu bekommen.

## Dekomposition und Komposition
Modularität führt in der Praxis zu 4 wichtigen Vorteilen:

1. Die Möglichkeit, ein System in einfachere Teile zu zerlegen
2. Die Möglichkeit, ein System aus einfacheren Teilen zusammenzubauen (Lego)
3. Die Möglichkeit, ein System nicht als ganzes, sondern in kleinen Blöcken verstehen zu können. 
4. Die Möglichkeit, ein System zu verändern, indem nur ein kleiner Teil (ein Modul) verändert wird. 

Man kann sich leicht überlegen, dass diese vier Vorteile zu einer höheren Softwarequalität führen.


## Kopplung und Bindung

Ein wichtiges Kriterium um ein Design auf Modularität zu prüfen ist die Kopplung und die Bindung (oder Kohäsion) der Module. Unser Designziel ist, eine möglichst
schwache *Kopplung* der Module, sowie eine möglichst starke Binding (oder Kohäsion) innerhalb der Module zu erreichen. 

Die Begriffe Kopplung und Bindung können wie folgt definiert werden:
* Kopplung: Wie stark sind die Module verknüpft?
* Bindung: Wie gut bilden die Module eine logische Einheit?

In folgender Abbildung sehen wir ein System, bestehend aus 2 Modulen (die Rechtecke) welche ihrerseits verschiedene Funktionalitäten anbieten. Eine Funktionalität (als Kreis dargestellt) kann innerhalb des Moduls, aber auch von einem anderen Modul genutzt werden. 

![Kopplung und Bindung](../../slides/images/coupling-cohesion.png)

Bei einem System mit starker Kopplung werden dabei die Funktionalitäten stark von anderen Modulen verwendet, während innerhalb eines Moduls die Funktionen nicht häufig verwendet werden. 
![Starke Kopplung, Schwache Bindung](../../slides//images/module-high-coupling.png)                    
Dem Gegenüber steht ein Design bei dem die Module schwach gekoppelt sind, jedoch die Module eine starke Bindung aufweisen. Hier wird die Funktionalität hauptsächlich innerhalb des Moduls verwendet.  
![Starke Kopplung, Schwache Bindung](../../slides//images/module-low-coupling.png)

Der zweite Fall ist offensichtlich besser. Durch die lose Kopplung gibt es weniger Abhängigkeiten zwischen den Modulen, wodurch eine Änderung an 
einem einzelnen Modul viel weniger Auswirkungen auf die anderen Module hat. Auch erleichtert diese lose Kopplung das Testen der Module, da nicht viele 
Abhängigkeiten simuliert werden müssen. 

Eine starke Bindung innerhalb eines Moduls ist ein Indiz dafür, dass das Modul nur genau für eine Aufgabe verantwortlich ist. Dies erleichtert das Verstehen des Moduls erheblich. 
  
