adauga([], []).
adauga([H|T], [H, 1|R]):-
	H mod 2 =:= 0,
	!,
	adauga(T, R).
adauga([H|T], [H|R]):-
	adauga(T, R).
	