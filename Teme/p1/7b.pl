% 'toata perechile cu A pe prima pozitie'
pereche(A, [B|_], [A, B]). % 'adaug capul listei la pereche'
pereche(A, [_|T], P):-
	pereche(A, T, P). % 'nu adaug capul listei la pereche'

% 'generez toate perechile'
perechi([H|T], P):- % 'adaug primul element din lista in pereche'
	pereche(H, T, P).
perechi([_|T], P):- % 'nu adaug primul element in pereche'
	perechi(T, P).
	
% 'colectez toate perechile intr-o singura lista'
fa_perechi(L, R):- findall(P, perechi(L, P), R).
