prim_aux(1, _):-
	!,
	1 > 2.
prim_aux(X, D):-
	D > X div 2,
	!.
prim_aux(X, D):-
	X mod D =\= 0,
	D1 is D + 1,
	prim_aux(X, D1).
	
prim(X):- prim_aux(X, 2).

dubleaza([], []).
dubleaza([H|T], [H, H|R]):-
	prim(H),
	!,
	dubleaza(T, R).
dubleaza([H|T], [H|R]):-
	dubleaza(T, R).