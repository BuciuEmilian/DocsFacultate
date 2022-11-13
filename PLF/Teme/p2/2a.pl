minim([H], H):- !.
minim([H|T], R):-
	minim(T, R1),
	R is min(H, R1).
	
% 'e ok sa elimin => ok = 1, altfel ok = 0'
elimina([], _, _, []).
elimina([H|T], E, OK, [H|R]):-
	H \== E,
	!,
	elimina(T, E, OK, R).
elimina([H|T], H, 1, R):-
	!,
	elimina(T, H, 0, R).
elimina([H|T], H, 0, [H|R]):-
	!,
	elimina(T, H, 0, R).
	
sorteaza([], []):- !.
sorteaza(L, [M|R]):-
	minim(L, M),
	elimina(L, M, 1, L1),
	sorteaza(L1, R).