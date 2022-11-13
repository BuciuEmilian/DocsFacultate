maxim([H], H):- !.
maxim([H|T], R):-
	maxim(T, R1),
	R1 > H,
	!,
	R is R1.
maxim([H|_], R):-
	R is H.
	
elimina_max_aux([], _, []).
elimina_max_aux([H|T], E, R):-
	H == E,
	!,
	elimina_max_aux(T, E, R).
elimina_max_aux([H|T], E, [H|R]):-
	elimina_max_aux(T, E, R).
	
elimina_max(L, R):-
	maxim(L, E),
	elimina_max_aux(L, E, R).