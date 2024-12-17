abstract sig Light {}
one sig Green, Yellow, Red extends Light {}

 sig TrafficLight {
	var light : set Light
}

pred change[current : TrafficLight] {
	current.light = Red implies current.light' = Red + Yellow
	current.light = Red + Yellow implies current.light' = Green
	current.light = Green implies  current.light' = Yellow
	current.light = Yellow implies current.light' = Red
	all tl : TrafficLight - current | tl.light' = tl.light
}

fact {
	some TrafficLight
	all l : TrafficLight | l.light = Red
	always some l : TrafficLight | change[l]
	always lone {l : TrafficLight | l.light != Red}
	all l: TrafficLight | eventually l.light = Green
}

run {} for 2..20 steps, exactly 5 TrafficLight	 