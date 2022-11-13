maxim([H], H):- !.
maxim([H|T], R):-
	maxim(T, R1),
	R is max(H, R1).
	
poz_aux([], _, _, []).
poz_aux([H|T], P, M, [P|R]):-
	H == M,
	!,
	P1 is P + 1,
	poz_aux(T, P1, M, R).
poz_aux([_|T], P, M, R):-
	P1 is P + 1,
	poz_aux(T, P1, M, R).
	
poz(L, R):-
	maxim(L, M),
	poz_aux(L, 1, M, R).
	