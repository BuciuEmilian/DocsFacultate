gcd(X, 0, X):- !.
gcd(X, Y, R):-
	Y1 is X mod Y,
	gcd(Y, Y1, R).

gcd_list([H], H):- !.
gcd_list([H|T], R):-
	gcd_list(T, R1),
	gcd(H, R1, R).
