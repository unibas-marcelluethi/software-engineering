      
  
            <section>
                <h3>Neue Beziehung: "Inherits from"</h3>
            
                <ul>
                    <li>ADTs k&ouml;nnen in Hierarchien organisiert werden.</li>
                    <li> Klasse B "spezialisiert" Klasse A</li>
                    <ul><li> Klasse B "erbt von" Klasse A</li>
                    <li>Klasse A generalisiert Klasse B</li></ul>
                    <li>A ist Superklasse</li> 
                    <li>B ist Subklasse</li>
                </ul>
            </section>

        

            <section>
                <h1> Beispiel: "Inherits from" </h1>
                <pre><code data-trim>
                    class EMPLOYEE
                        exports
                            function FIRST_NAME(): STRING;
                            function LAST_NAME(): STRING;
                            function AGE(): INTEGER;
                            procedure HIRE (FIRST_N: STRING, LAST_N: STRING; age : INTEGER);
                            procedure FIRE();    
                        implementation 
                            var firstName : STRING;
                            var lastName : STRING;
                            var age : INTEGER;
                        end EMPLOYEE                            
                </code></pre>                
            </section>


            <section>
                    <h1> Beispiel: "Inherits from" </h1>
                    <pre><code data-trim>
                        class ADMINISTRATIVE_STAFF inherits EMPLOYEE
                        exports 
                            procedure DO_THIS (F: FOLDER);
                        end ADMINISTRATIVE_STAFF
                    </code></pre>               
                    <pre><code data-trim>
                        class TECHNICAL_STAFF inherits EMPLOYEE
                        exports 
                            function GET_SKILL(): SKILL;
                            procedure DEF_SKILL (SK: SKILL);
                        end TECHNICAL_STAFF                                            
                    </code></pre>                
                </section>

        
      
        <section>
                <h3>Komposition und Vererbung</h3>
                <div style="float:left;width:70%">
                <ul>
                    <ul>
                    <li><mark class="highlight">Vererbung:</mark> Eine neue Klasse erbt Implementation von Superklasse.</li>
                    <ul class="fragment"><li> Bricht Kapselung auf / verletzt Information Hiding</li></ul>
                    <li><mark class="highlight">Komposition:</mark> Neue Klassen werden aus anderen Klassen zusammengesetzt.</li>    
                </ul>
                </ul>                
            </div>
            <div style="float:right;width:30%">
                <img src="http://jestergoblin.com/wp-content/uploads/2012/03/2012-03-15_13-14-09_298-250x141.jpg" class="plain"/>
                </div>

                <blockquote class="fragment" style="display:inline-block">
                        Komposition sollte wenn  m&ouml;glich bevorzugt werden. Vererbung nur von Interfaces. 
                    </blockquote>
            </section>

            <section>
                <h3>Quiz: Probleme mit Vererbung</h3>
                <ul><li>Was passiert mit counter wenn addAll aufgerufen wird?</li></ul>

                <pre><code data-trim class="java">
                        public class CountingList&lt;T&gt; extends ArrayList&lt;T&gt; {
                                private int counter = 0;
                               
                                @Override
                                public void add(T elem) {
                                  super.add(elem);
                                  counter++;
                                }
                               
                                @Override
                                public void addAll(Collection&lt;T&gt; other) {
                                  super.addAll(other);
                                  counter += other.size();
                                } 
                              }
                    </code></pre>
            </section>

            <section>
                <h3>L&ouml;sung durch Komposition</h3>
                <pre><code data-trim class="java">
                        public class CountingList&lt;T&gt; implements List&lt;T&gt; {
                                private final List&lt;T&gt; list = new ArrayList&lt;T&gt;();
                                private int counter = 0;
                               
                                @Override
                                public void add(T elem) {
                                  list.add(elem);
                                  counter++;
                                }
                               
                                @Override
                                public void addAll(Collection&lt;T&gt; other) {
                                  list.addAll(other);
                                  counter += other.size();
                                } 
                               
                                ...
                              }
                    </code></pre>
            </section>
    


           