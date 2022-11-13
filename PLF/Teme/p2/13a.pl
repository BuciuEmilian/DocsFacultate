divizori(X, D, []):- 
	D > X div 2,
	!.
divizori(X, D, [D|L]):-
	X mod D =:= 0,
	!,
	D1 is D + 1,
	divizori(X, D1, L).
divizori(X, D, L):-
	D1 is D + 1,
	divizori(X, D1, L).
	
adauga([], L2, L2).
adauga([H|T], L2, [H|R]):-
	adauga(T, L2, R).
	
adauga_div([], []).
adauga_div([H|T], [H|R]):-
	divizori(H, 2, L),
	adauga_div(T, R1),
	adauga(L, R1, R).