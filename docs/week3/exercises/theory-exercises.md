# Übungsaufgaben Woche 3:

## 1. Beziehungen zwischen den Prinzipien
1.1  Wie beeinflussen sich die Prinzipien *Allgemeinheit* und *Voraussehen von Veränderungen*?

1.2 Wie beeinflussen sich *Allgemeinheit* und *Abstraktion*

1.3  Wie beeinflussen sich *exaktes Vorgehen (formality / rigor)* und *Voraussehen von Veränderungen*?

## 2. Separieren der Verantwortlichkeiten

2.1 Betrachten Sie folgendes Programm und beschreiben Sie, wie Sie die Aspekte *Korrektheit* und *Effizienz* separat behandeln können. 

```python
def quicksort(x):
      if len(x) < 2:
          return x
      else:
          pivot = x[0]
          less = [i for i in x[1:] if i <= pivot]
          greater = [i for i in x[1:] if i > pivot]
          return quicksort(less) + [pivot] + quicksort(greater)
```

2.2 Lesen sie im Internet über *Aspektorientierte Programmierung* und
    Beschreiben Sie, wie damit das Prinzip der *Teilung der Verantwortlichkeiten* umgesetzt wird.



## 3. Modularisierung

3.1 Angenommen, Sie entscheiden Sich ein Auto zu modularisieren, indem Sie dieses in kleine Würfel von 15 $cm^3$   schneiden. 
    
    * Was können Sie über Kopplung und Bindung sagen? 
    * Was wäre eine bessere Dekomposition in Module?

3.2 Was können Gründe sein, dass ein Programm eine eine schwache Bindung und starke Kopplung aufweist?
    
3.3 Was können Gründe sein, dass eine Software eine hohe Kopplung zwischen zwei Modulen aufweist?




