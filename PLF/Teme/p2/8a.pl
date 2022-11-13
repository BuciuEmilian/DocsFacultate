invers_aux(C, [], C):- !.
invers_aux(C, [H|T], R):-
	invers_aux([H|C], T, R).

invers(L, R):- invers_aux([], L, R).

succesor_aux([], _, []).
succesor_aux([H|T], C, [0|R]):-
	H == 9,
	C == 1,
	!,
	succesor_aux(T, 1, R).
succesor_aux([H|T], C, [H1|R]):-
	H \= 9,
	C == 1,
	!,
	H1 is H + 1,
	succesor_aux(T, 0, R).
succesor_aux([H|T], C, [H|R]):-
	C = 0,
	!,
	succesor_aux(T, 0, R).

succesor(L, R):-
	invers(L, I),
	succesor_aux(I, 1, R1),
	invers(R1, R).