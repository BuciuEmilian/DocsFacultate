nrAparitii([], _, 0).
nrAparitii([H|T], E, R):-
	H == E,
	!,
	nrAparitii(T, E, R1),
	R is R1 + 1.
nrAparitii([_|T], E, R):-
	nrAparitii(T, E, R).

perechi_aux([], _, _, []).
perechi_aux([H|T], L, M, [[H, NR2]|R]):-
	nrAparitii(M, H, NR1),
	NR1 == 0,
	!,
	nrAparitii(L, H, NR2),
	perechi_aux(T, L, [H|M], R).
perechi_aux([_|T], L, M, R):-
	perechi_aux(T, L, M, R).
	
perechi(L, R):- perechi_aux(L, L, [], R).

