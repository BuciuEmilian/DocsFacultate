sterg([], []):- !.
sterg([H], [H]):- !.
sterg([H1, H2], [H1, H2]):-
	H1 =\= H2 - 1,
	!.
sterg([H1, H2], []):-
	H1 =:= H2 - 1,
	!.
sterg([H1,H2,H3|T], R):-
	H1 =:= H2 - 1,
	H2 =:= H3 - 1,
	!,
	sterg([H2,H3|T], R).
sterg([H1,H2,H3|T], R):-
	H1 =:= H2 - 1,
	H2 =\= H3 - 1,
	!,
	sterg([H3|T], R).
sterg([H1,H2,H3|T], [H1|R]):-
	H1 =\= H2 - 1,
	!,
	sterg([H2,H3|T], R).