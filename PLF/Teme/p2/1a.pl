invers_aux(C, [], C):- !.
invers_aux(C, [H|T], R):-
	invers_aux([H|C], T, R).
	
invers(L, R):- invers_aux([], L, R).


suma_aux([], [], 0, []):- !.
suma_aux([], [], C, [C]):- !.
suma_aux([], [H|T], C, [U|R]):-
	Rez is H + C,
	U is Rez mod 10,
	Z is Rez div 10,
	suma_aux([], T, Z, R).
suma_aux([H|T], [], C, [U|R]):-
	Rez is H + C,
	U is Rez mod 10,
	Z is Rez div 10,
	suma_aux(T, [], Z, R).
suma_aux([H1|T1], [H2|T2], C, [U|R]):-
	Rez is H1 + H2 + C,
	U is Rez mod 10,
	Z is Rez div 10,
	suma_aux(T1, T2, Z, R).
	

suma(L1, L2, R):-
	invers(L1, I1),
	invers(L2, I2),
	suma_aux(I1, I2, 0, R1),
	invers(R1, R).