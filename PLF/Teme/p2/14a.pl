invers_aux(C, [], C):- !.
invers_aux(C, [H|T], R):-
	invers_aux([H|C], T, R).
	
invers(L, R):- invers_aux([], L, R).

predecesor_aux([], _, []).
predecesor_aux([0|T], 1, [9|R]):-
	!,
	predecesor_aux(T, 1, R).
predecesor_aux([H|T], 1, [H1|R]):-
	!,
	H1 is H - 1,
	predecesor_aux(T, 0, R).
predecesor_aux([H|T], 0, [H|R]):-
	!,
	predecesor_aux(T, 0, R).	

predecesor(L, R):-
	invers(L, I),
	predecesor_aux(I, 1, R1),
	invers(R1, R).