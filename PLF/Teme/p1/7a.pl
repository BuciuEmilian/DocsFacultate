apare([E|_], E).
apare([_|T], E):-
	apare(T, E).

reuniune([], L2, L2).
reuniune([H|T], L2, R):-
	apare(L2, H),
	!,
	reuniune(T, L2, R).
reuniune([H|T], L2, [H|R]):-
	reuniune(T, L2, R).