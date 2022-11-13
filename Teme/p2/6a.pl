adauga([], L2, L2).
adauga([H|T], L2, [H|R]):-
	adauga(T, L2, R).

inloc([], _, _, []).
inloc([H|T], E, L, R):-
	H == E,
	!,
	inloc(T, E, L, R1),
	adauga(L, R1, R).
inloc([H|T], E, L, [H|R]):-
	inloc(T, E, L, R).