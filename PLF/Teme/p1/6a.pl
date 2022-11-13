nrAparitii([], _, 0).
nrAparitii([H|T], E, R):-
	H == E,
	!,
	nrAparitii(T, E, R1),
	R is R1 + 1.
nrAparitii([_|T], E, R):-
	nrAparitii(T, E, R).
	
elimina_aux([], _, []).
elimina_aux([H|T], L, [H|R]):-
	nrAparitii(L, H, NR),
	NR == 1,
	!,
	elimina_aux(T, L, R).
elimina_aux([_|T], L, R):-
	elimina_aux(T, L, R).
	
elimina(L, R):- elimina_aux(L, L, R).
	