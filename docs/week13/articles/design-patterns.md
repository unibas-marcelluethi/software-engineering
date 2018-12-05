       <section>
                <h3>Designproblem 1</h3>
                <blockquote>
                    Manchmal darf es nur eine Instanz von einem Objekt geben.
                </blockquote>

                Beispiele:
                <ul>
                    <li>Es gibt viele Drucker aber nur einen Druckerspooler</li>
                    <li>Es sollte nur ein Windowmanagement geben</li>
                    <li>Ein Buchhaltungssytem dient nur genau einer Firma</li>
                </ul>
            </section>
      
   
      <section>
                <h3>Singleton Pattern</h3>
                <ul>
                    <li>Es soll genau eine Instanz einer Klasse geben</li>
                    <li>Diese soll durch Unterklassen erweiterbar sein</li>
                </ul>
                <figure>
                    <img src="images/patterns-singleton-class.png" class="plain" />
                </figure>
            </section>

            <section>
                <h3>Singleton Pattern </h3>

                Definition:
                <pre><code data-trim>
                    public final class Singleton {
                        private static final Singleton instance = new Singleton();
                        
                        private Singleton() {}
                        
                        public static Singleton getInstance() {
                            return instance;
                        }
                    }
                </code></pre> Nutzung:
                <pre><code data-trim>
                    Singleton singletonInstance = Singleton.getInstance()
                </code></pre>

            </section>


            <section>
                    <h3>Designproblem 3</h3>
                    <blockquote style="width:100%">
                        Der Algorithmus zum Erzeugen eines komplexen Objekts soll unabh&auml;ngig von 
                        den Teilen sein, aus denen das Objekt besteht und wie sie zusammengesetzt werden.
                    </blockquote>
    
                    <pre><code data-trim>
                        class Task {
                            private int a;
                            private String b;
                            ...
                            private double z;

                            public Task(int a, String b, ..., double z)
                        }
                    </code></pre>
                    <ul>
                        <li>Kann ich ein Objekt kreieren, indem ich nur Wert f&uuml;r b angebe?</li>
                    </ul>
                  
                </section>
            <section>
                <h3>Builder Pattern</h3>
                <ul>
                    <li>Vereinfacht Erzeugung von komplexen Objekten</li>
                </ul>

                <figure style="width:50%;float:left">
                    <img src="images/patterns-builder-class.png" class="plain" />

                </figure>
                <figure style="width:50%;float:right">
                        <img src="images/patterns-builder-seq.png" class="plain" />
                    </figure>
    
            </section>

            <section>
                <h3>Builder Pattern</h3>
                <ul>
                    <li>Beispiel adaptiert aus Ganttproject</li>
                </ul>
                <pre style="width:100%"><code data-trim>
                            abstract class TaskBuilder {                        
                                Integer myId;
                                TimeDuration myDuration;
                                ...
                            
                                public TaskBuilder withId(int id) {
                                    myId = id;  return this;
                                }                    
                                public TaskBuilder withDuration(TimeDuration duration) {
                                  myDuration = duration;   return this;
                                }
                                ...
                                public abstract Task build();
                                }                        
                            }
                    </code></pre>
            </section>

            <section>
                <h3>Builder Pattern</h3>
                <ul>
                    <li>Beispiel adaptiert aus Ganttproject</li>
                </ul>
                <pre style="width:100%; font-size:x-large"><code data-trim>
        
                                class TaskBuilderImpl extends TaskBuilder {
                                  @override public Task build() {                                
                                    if (myId == null || myTaskMap.getTask(myId) != null) {
                                      myId = getAndIncrementId();
                                    }                                
                                    if (myDuration != null) {
                                      duration = myDuration;
                                    } else {
                                      duration = (myEndDate == null) ? createLength(defaultTimeUnit(), 1.0f) 
                                          : createLength(defaultTimeUnit(), myStartDate, myEndDate);
                                    }
                                    ...
                                  }
                                }
                        </code></pre> Nutzung:
                <pre style="width:100%; font-size:x-large"><code data-trim>
                                Task newTask = new TaskBuilderImp().withId(1).withDuration(10).build();
                                </code></pre>
            </section>


            <section>
                    <h3>Designproblem 4</h3>
                    <blockquote style="width:100%">
                        Wenn ein Projekt stark modularisiert ist, eine Klasse jedoch viele 
                        Module nutzen muss, kommt es zu einer starken Kopplung der Klassen
                    </blockquote>
    
                    Beispiel:
                    <ul>
                        <li>Um eine GUI anzusteuern braucht man gleichzeitig Window, Statusbar, Menubar, ... </li>
                        <li>Klient koppelt sich an alle diese GUI Elemente</li>
                        <li>Schnittstellen sind e.v. auch inkonsistent</li>
                    </ul>
                  
                </section>

            <section>
                <h3>Facade Pattern</h3>
                <ul>
                    <li>Bietet einheitliche Schnittstelle zu verschiedenen Subsystemen an.</li>
                    <li>Reduziert Kopplung.</li>
                </ul>

                <figure>
                    <img src="images/patterns-facade-uml.jpg" class="plain" />
                    <figcaption style="font-size:x-small"> By Vanderjoe - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=61495624</figcaption>
                </figure>
            </section>




            <section>
                <h3>Facade Pattern</h3>
                <ul>
                    <li>Adaptiert aus Ganttproject</li>
                </ul>
                <pre style="width:100%"><code data-trim>
                                class UIFacade {
                                    private final JFrame myMainFrame;
                                    ...
                                    private final GanttStatusBar myStatusBar
    
                                    public void setStatusText(String text) {
                                        myStatusBar.setFirstText(text, 2000);
                                    }
    
                                    public void setWorkbenchTitle(String title) {
                                        myMainFrame.setTitle(title);
                                      }
                                    
                                }
                            </code></pre>
            </section>

            <section>
                    <h3>Designproblem 5</h3>
                    <blockquote style="width:100%">
                        Eine Menge von Objekten muss &uuml;ber Zustands&auml;nderungen informiert werden, 
                        jedoch m&ouml;chte man die Klassen nicht eng aneinander koppeln.                         
                    </blockquote>
    
                    <div style="text-align:left">
                    Beispiel Tabellenkalkulation:
                    <ul>
                        <li>Trennung von GUI (Anzeige) und Datenhaltung</li>                        
                        <li>Wenn sich Daten &auml;dern sollen sich folgende Dinge &auml;ndern</li>
                        <ul>
                        <li>Darstellung der entsprechenden Zelle</li>
                        <li>Diagramme die auf Daten zugreifen</li>
                        <li>Berechnete Zellen</li>
                        </ul>
                    </ul>
                </div>
                </section>

            <section>
                <h3>Observer Pattern</h3>

                <ul>
                    <li>Automatische Benachrichtigung von $n$ Objekten </li>
                </ul>

                <figure>
                    <img src="images/patterns-observer-uml.jpg" class="plain" />
                    <figcaption style="font-size:x-small"> By Vanderjoe - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=61495624</figcaption>
                </figure>

            </section>

            <section>
                    <h3>Observer Pattern</h3>
                    <ul>
                        <li>Adaptiert aus Ganttproject</li>
                    </ul>
                    <pre style="width:100%; font-size:x-large"><code data-trim>
                public interface RoleManager {
    
                    public interface Listener extends EventListener {
                        public void rolesChanged(RoleEvent e);
                    }                                      
                    private final List&lt;Listener&gt; myListeners  = new ArrayList&lt;Listener&gt;();
                    public void addRoleListener(Listener listener) { myListeners.add(listener);}
                                                    
                    void fireRolesChanged(RoleSet changedRoleSet) {
                        for (Listener l : myListeners) {
                            l.rolesChanged(new RoleEvent(this, changedRoleSet));
                        }
                    }                   
                    public Role createRole(String name, int persistentID) {
                        ...
                        myRoleManager.fireRolesChanged(this);
                    }
                }
                    </code></pre>
                </section>
    
                <section>
                    <h3>Observer Pattern</h3>
                    <ul>
                        <li>Adaptiert aus Ganttproject</li>
                    </ul>
                    <pre style="width:100%; font-size:x-large"><code data-trim>
                    public class ResourceTreeTable extends GPTreeTableBase {
                        ...
                      public ResourceTreeTable(IGanttProject project, ...) {
                        myRoleManager = project.getRoleManager();
                        myRoleManager.addRoleListener(new RoleManager.Listener() {
                        
                            @Override public void rolesChanged(RoleEvent e) {
                               setEditor(getTableHeaderUiFacade().findColumnByID(
                                ResourceDefaultColumn.ROLE.getStub().getID()));
                            }
                        });
                        ...
                     }        
                    </code></pre>
                </section>