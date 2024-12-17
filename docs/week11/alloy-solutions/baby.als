/*

Everybody loves my baby but my baby don’t love nobody but me
*/

sig Person {
  loves: set Person
}

one sig Me extends Person {}


pred my_baby[b: Person] {
  (all p: Person | b in p.loves) and b.loves = Me
}

assert song {
  all p: Person| my_baby[p] implies Me = p
}

run my_baby for 5

//check song for 5
