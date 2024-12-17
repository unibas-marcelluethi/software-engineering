
/*
sig Man {shaves: set Man}
one sig Barber extends Man {}
*/

/*
abstract sig Person {shaves: set Man}
sig Man, Woman extends Person{}
one sig Barber in Person {} // must be 'in' not 'extends':
*/

/* (c) A more drastic solution, noted by Edsger Dijkstra, is to allow the
 *     possibility of there being no barber. Modify the original model
 *     accordingly, and show that there is now a solution.
 */

/*
sig Man {shaves: set Man}
lone sig Barber extends Man {}
*/

/* (d) Finally, make a variant of the original model that allows for multiple
 *     barbers. Show that there is again a solution.
 */

sig Man {shaves: set Man}
some sig Barber extends Man {}


fact {
  Barber.shaves = {m: Man | m not in m.shaves}
}

run { }
