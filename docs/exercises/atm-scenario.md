# Bankomat Szenario

Die Software die geschrieben werden muss, simuliert die Funktionalit&auml;t eines
Bankomaten. Der Bankomat hat einen Kartenleser und ein Fach um Geld (d.h. Banknoten) einzuzahlen. Der Kunde interagierte via einer Konsole bestehend aus Tastatur
und Display. Im Innern des Bankomaten befindet sich ein Drucker um Quittungen zu 
drucken sowie ein Schalter, um den Bankomaten an und auszuschalten. 
Der Bankomat kommuniziert mit dem Bankensystem via einem Kommunikationslink. 

Zu jedem Zeitpunkt kann nur 1 Kunde bedient werden. Ein Kunde muss seine Bankkarte in den 
Kartenleser einf&uuml;hren und einen Pin eingeben. Die Information auf der Karte sowie der 
Pin wird,  als Teil einer Transaktion, zur Pr&uuml;fung an die Bank gesendet.  

Der Kunde kann dann verschiedene Transaktionen ausf&uuml;hren. Die Karte bleibt 
im Bankomaten bis der Kunde keine weiteren Transaktionen mehr ausf&uuml;hren will. 
Zu diesem Zeitpunkt wird die Karte zur&uuml;ckgegeben. 

Ein Bankomat bietet folgende Dienstleistungen an:

* Ein Kunde kann Geld von einem Konto (dem Konto das auf der Karte codiert ist) abheben. Bevor das Geld ausgegeben wird, muss die Bank pr&uuml;fen ob gen&uuml;gend Geld vorhanden ist. 
* Ein Kunde kann Geld auf das Konto einzahlen. Dazu wird das Geld in das Einzahlungsfach gelegt. Das Geld wird automatisch vom Bankomaten gez&auml;hlt. Wenn das Geld auf Echtheit gepr&uuml;ft 
wurde und als korrekt erkannt wurde, wird das Geld auf das Konto einbezahlt. 
* Ein Kunde kann den Kontostand abfragen
* Jede Transaktion kann vom Kunden zu jeder Zeit abgebrochen werden. 
* Jede Transaktion wird an die Bank kommuniziert und nur abgeschlossen, nachdem sie von der Bank 
freigegeben wird. 
* Falls der Pin (von der Bank) als falsch beurteilt wird, muss der Kunde den Pin nochmals eingeben. Nach drei Fehlversuchen wird die Karte eingezogen. Der Kunde muss dann die Bank 
kontaktieren. 
* Falls die Transaktion aus anderem Grund fehlschl&auml;gt, wird dem Kunde eine Fehlermeldung angezeigt. Der Kunde wird dann gefragt, ob er eine andere Transaktion machen m&ouml;chte. 

* Am Ende der Transaktion wird dem Kunden eine Quittung ausgedruckt. Auf der Quittung wird f&uuml;r jede Transaktion eine kurze Beschreibung (mit Zeit/Datum und Name) ausgedruckt. Am Ende wir der neue Kontostand ausgedruckt.  


<sup>*Quelle: Das Beispiel ist eine freie Adaption des von Russel Bjork, Gordon College, vorgeschlagenen [Bankomatenszenario.](http://www.math-cs.gordon.edu/courses/cs211/ATMExample/)*</sup>

