gcd(X, 0, X):- !.
gcd(X, Y, R):-
	Y2 is X mod Y,
	gcd(Y, Y2, R). 
	
lcm(X, Y, R):- 
	R is X * Y / gcd(X, Y).
	
lcm_list([H1, H2], R):- 
	!,
	lcm(H1, H2, R1),
	R is R1.
lcm_list([H|T], R):-
	lcm_list(T, R1),
	lcm(H, R1, R).