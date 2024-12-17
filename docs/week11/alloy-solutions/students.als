abstract sig Student {
	enrolledAt : lone University,
	major : one Major,
	id : one Id,
	classmates : set Student
}


sig Bachelorstudent extends Student {}
sig Masterstudent extends Student {}

sig Major {}
sig Id {}

sig LegalStudent in Student { }


sig University {}

fact all_ids_belong_to_one_student {
	all i : Id | some s : Student | s.id = i
}


fact allLegaltudents {
	all s : Student | s in LegalStudent iff some s.enrolledAt
}

fact unique_ids {
  all disj s, t: Student {
    s.id != t.id
  }
}

pred sameUniversity[s : Student, t : Student] {
	some u : University | s.enrolledAt = u and t.enrolledAt = u
}

fact classmates_have_same_major {
	all disj s, t : Student | s in t.classmates iff s.major = t.major and sameUniversity[s,t] 
	all s : Student | s not in s.classmates
}

run {} for 3 but exactly 3 Student
