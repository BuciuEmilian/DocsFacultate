apare([E|_], E):- !.
apare([_|T], E):-
	apare(T, E).

multime_aux([], _, []).
multime_aux([H|T], M, [H|R]):-
	not(apare(M, H)),
	!,
	multime_aux(T, [H|M], R).
multime_aux([_|T], M, R):-
	multime_aux(T, M, R).
	
multime(L, R):- multime_aux(L, [], R).	