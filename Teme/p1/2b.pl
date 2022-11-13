putere(1, _):- !.
putere(A, B):-
	A mod B =:= 0,
	A1 is A div B,
	putere(A1, B).
	
adauga_aux([], _, _, []).
adauga_aux([H|T], E, K, [H, E|R]):-
	putere(K, 2),
	!,
	K1 is K + 1,
	adauga_aux(T, E, K1, R).
adauga_aux([H|T], E, K, [H|R]):-
	K1 is K + 1,
	adauga_aux(T, E, K1, R).

adauga(L, E, R):- adauga_aux(L, E, 1, R).