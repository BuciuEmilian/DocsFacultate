test1 :- elimina(1, [1, 2, 1, 1, 3, 4], R).       % = [2, 3, 4]- fix cu 3
test2 :- elimina(1, [1, 2, 1, 3, 4], R).          % = [2, 3, 4] - mai putin de 3 
test3 :- elimina(1, [1, 2, 1, 1, 3, 1, 4], R). % = [2, 3, 1, 4] - mai mult de 3
test4 :- elimina(1, [2, 3, 4, 5], [2, 3, 4, 5]).          %  - niciuna

% el = integer
% list = el*

% elimina(E:el, K:integer, L:list, R:list)
% modele de flux:
% E - elementul care se elimina din lista L
% K - de cate ori se elimina E din lista L
% L - lista din care se elimina E de K ori
% R - lista rezultata in urma eliminarii lui E din lista L de K ori
eliminak(E, K, [], []).
eliminak(E, K, [H|T], R):-
	H = E, 
	K > 0,
	!,
	K1 is K-1,
	eliminak(E, K1, T, R).
	
eliminak(E, K, [H|T], [H|R]):-
	H \= E,
	!,
	eliminak(E, K, T, R).

eliminak(E, K, [H|T], [H|R]):-
	K =< 0,
	!,
	eliminak(E, K, T, R).

elimina(E, [H|T], R):- 
	eliminak(E, 3, [H|T], R).