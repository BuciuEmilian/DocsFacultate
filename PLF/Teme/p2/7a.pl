invers_aux(C, [], C):- !.
invers_aux(C, [H|T], R):-
	invers_aux([H|C], T, R).
	
invers(L, R):- invers_aux([], L, R).

multiply_aux([], _, []).
multiply_aux([H|T], C, [U|R]):-
	Rez is H * 2 + C,
	U is Rez mod 10,
	Z is Rez div 10,
	multiply_aux(T, Z, R).
	
multiply(L, R):-
	invers(L, I),
	multiply_aux(I, 0, R1),
	invers(R1, R).