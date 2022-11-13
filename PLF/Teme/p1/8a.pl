% el = integer
% list = el*
%
% apare(X:el, L:list)
% model de flux: (i, i)
% X - elementul pe care-l cautam in lista L
% L - lista in care cautam pe X

nuApare(X, []).
nuApare(X, [H|T]):- 
	H \= X, 
	nuApare(X, T).
	
% multime(L:list)
% L - lista care se verifica daca e multime
multime([]).
multime([H|T]):-
	nuApare(H, T),
	multime(T).