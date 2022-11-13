minim([H], H):- !.
minim([H|T], R):-
	minim(T, R1),
	R is min(R1, H).
	
elimina([], _, []).
elimina([H|T], E, [H|R]):-
	H \== E,
	!,
	elimina(T, E, R).
elimina([H|T], H, R):-
	elimina(T, H, R).
	
sorteaza([], []):- !.
sorteaza(L, [M|R]):-
	minim(L, M),
	elimina(L, M, R1),
	sorteaza(R1, R).