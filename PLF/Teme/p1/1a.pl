apare([E|_], E):- !.
apare([_|T], E):-
	apare(T, E).
	
diferenta([], _, []).
diferenta([H|T], L, [H|R]):-
	not(apare(L, H)),
	!,
	diferenta(T, L, R).
diferenta([_|T], L, R):-
	diferenta(T, L, R).