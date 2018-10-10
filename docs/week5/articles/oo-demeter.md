 <section>
                <h3> Gesetz von Demeter </h3>
                <blockquote>
                    "Only talk to your friends"
                </blockquote>
                <li>Eine Methode m einer Klasse K soll nur auf folgende Elemente Zugreifen:</li>
                <ul>
                    <li>Methoden von K selbst</li>
                    <li>Methoden von Objekten, die als Parameter an m übergeben werden</li>
                    <li>Methoden von Objekten, die in Instanzvariablen von K abgelegt sind</li>
                    <li>Methoden von Objekten, die m erzeugt</li>
                </ul>
                </section>

                <section>
                    <h3>Gesetz von Demeter</h3> 


                    <ul>                  
                    <li> Minimiert Kopplung von Objekten</li>
                    <li> Interne Struktur von Objekten wird nicht ausgenutzt</li>
                    <ul><li>Objekte delegiert Verantwortlichkeit</li></ul>
                    <li> Nat&uuml;rliche Implementation: Layering  </li>                    
                </ul>
            </section>

            <section>
                <h3>Beispiel: Gesetz von Demeter </h3>
                Schlechtes Beispiel
                <pre><code data-trim>
                        class Engine {
                            public void start() {}
                        }
                        class Car {
                            public Engine engine;
                            public Car() {
                                engine = new Engine();
                            }
                        }
                        class Driver {
                            public void drive() {
                                Car car = new Car();
                                car.engine.start(); // !!! Verstoss gegen Gesetz von Demeter
                            }
                        }    
                </code></pre>
                <p style="font-size:medium">Quelle: Wikipedia, Gesetz_von_Demeter</p>
            </section>

            <section>
                    <h3>Beispiel: Gesetz von Demeter</h3>
                    M&ouml;gliche L&ouml;sung
                    <pre><code data-trim>
                            class Engine {
                                public void start() {}
                            }
                            class Car {
                                private Engine engine; // !!! Engine ist private
                                public Car() {  engine = new Engine();  }
                                public start() {engine.start();   } // !!! Wrapper methode
                            }
                            class Driver {
                                public void drive() {
                                    Car car = new Car();
                                }
                            }    
                    </code></pre>
                    <p style="font-size:medium">Quelle: Wikipedia, Gesetz_von_Demeter</p>
                </section>
