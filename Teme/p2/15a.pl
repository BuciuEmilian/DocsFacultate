mai_mare([], []):- !.
%'compara daca L1 are lung > L2'
mai_mare([_|_], []):- !.
mai_mare([_|T1], [_|T2]):-
	mai_mare(T1,T2).

%'gaseste prima secv para si ret si restul listei dupa prima secv para'
%'ok e 0 daca e pe secv impara si 1 daca e pe secv para'
%'(L-initiala,SecvParaRez,0,RestulListeiRez)'
prima_para([], [], _, []):-!.
prima_para([H|T], [], 1, RestulListei):-
	1 =:= H mod 2,
	!,
	RestulListei = [H|T]. %'aici a ajuns la finalul primei secv pare'
prima_para([H|T], [H|R], _, RestulListei):-
	0 =:= H mod 2,
	!,
	prima_para(T, R, 1, RestulListei).
prima_para([_|T], R, Ok, RestulListei):-
	Ok is 0,
	prima_para(T, R, 0, RestulListei).

%'apelez cu R=[] si pe ultima poz o sa fie secv pe care o vreau'
secv_pare_aux([], R, R):-!. %'ma opresc daca am ajuns la capatul listei initiale'
secv_pare_aux(L, R, Rez):-
	prima_para(L, Para, 0, RestulListei),
	mai_mare(Para, R),
	!,
	secv_pare_aux(RestulListei, Para, Rez).
secv_pare_aux(L, R, Rez):-
	prima_para(L, _, 0, RestulListei),
	secv_pare_aux(RestulListei, R, Rez).
	
secv_pare(L, R):-
	secv_pare_aux(L, [], R).
