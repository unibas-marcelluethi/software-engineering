# Generische Module und Fehlerbehandlung

<section >
Generic modules
</section>




            <section>
                <h2>Exceptions und erwartete Fehler</h2>

                <ul><li>Erwartete Fehler sollten &uuml;ber R&uuml;ckgabewert angezeigt werden.</li></ul>

                Nicht ideal, da keine Ausnahme:
                <pre><code  class="java" data-trim> 
                        class List&lt;E&gt; {
                            // return position of element in list 
                            int findElement(E key) throws ElementNotFoundException;
                        }
                    </code></pre>
 
                Besser:
                <pre><code class="java" data-trim> 
                        class List&lt;E&gt; { 
                            // return position of element or -1 if element is not found
                            int findElement(E key);
                        }
                    </code></pre>           
               
 
            </section>

            <section>
                <h2>Exceptions und erwartete Fehler</h2>

                Am besten:
                <pre><code class="java" data-trim data-no-escape> 
                        class List&lt;E&gt; { 
                                Optional&lt;int&gt; findElement(E key);
                            }
                        </code></pre>

                <ul>
                    <li> Spezieller Typ markiert den Fehler </li>
                    <li> Server zwingt Client zum behandeln des Fehlers</li>
                </ul>


                <pre class="fragment"><code class="java" data-trim data-no-escape> 
                    Optional&lt;int&gt; element = list.findElement("abc");
                    if (element.isPresent()) {
                        int elementIndex = element.get(); 
                    }
                    else { 
                        // handle case that element is not found 
                    }
                        </code></pre>

            </section>


            <section>
                <h3>Unit tests</h3>
                <ul>
                    <li>Welche Vorteile bringt eine klar definierte Schnittstelle?</li>
                    <li>Wie hilft Information Hiding Software wartbar zu halten?</li>
                    <li>Was ist Kapselung und wie erreichen wir damit "Information Hiding"?</li>
                    <li>Wie kann ein Modul auf unerwartete Ereignisse reagieren? </li>
                  </ul>
            </section>

