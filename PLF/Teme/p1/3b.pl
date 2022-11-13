descompune_aux([], [], [], 0, 0).
descompune_aux([H|T], [H|R1], R2, P, I):-
	H mod 2 =:= 0,
	!,
	descompune_aux(T, R1, R2, P1, I),
	P is P1 + 1.
descompune_aux([H|T], R1, [H|R2], P, I):-
	descompune_aux(T, R1, R2, P, I1),
	I is I1 + 1.
	
descompune(L, R, P, I):- 
	descompune_aux(L, R1, R2, P, I),
	R = [R1, R2].