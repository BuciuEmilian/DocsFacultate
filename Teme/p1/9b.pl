construieste_aux(X, X, [X]):-!.
construieste_aux(X, N, [X|R]):-
	X1 is X + 1,
	construieste_aux(X1, N, R).
