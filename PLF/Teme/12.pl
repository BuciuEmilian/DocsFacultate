% 'subm(L:list, Subm:list)'
% '(i, o) - nedeterminist'
% 'L - lista din care se genereaza submultimi'
% 'R - lista care va reprezenta pe rand fiecare submultime a listei L'
subm([], []).
subm([_|T], R):- 	  % 'nu adaug capul listei in submultime'
	subm(T, R).
subm([H|T], [H|R]):-  % 'adaug capul listei in submultime'
	subm(T, R).
	
% 'munte_aux(L:list, F:integer)'
% '(i,i) - determinist'
% 'L - lista pentru care verificam daca are aspect de munte'
% 'F - variabila care indica daca suntem pe partea de crestere sau descrestere'
munte_aux([_], 1).			% 'ultimul element din munte'
munte_aux([H1, H2|T], 0):-	% 'partea crescatoare'
	H1 < H2,
	munte_aux([H2|T], 0).
munte_aux([H1, H2|T], 0):-  % 'sunt in varf'
	H1 > H2,
	munte_aux([H2|T], 1).
munte_aux([H1, H2|T], 1):- 	% 'partea descrescatoare'
	H1 > H2,
	munte_aux([H2|T], 1).

% 'munte(L:list)'
% 'model de flux: (i) - determinist'
% 'L - lista pe care o verificam daca are aspect de munte'
munte([H1, H2|T]):-				% 'trebuie sa avem cel putin 2 elemente'
	H1 < H2,					% 'trebuie sa inceapa crescator'
	munte_aux([H1, H2|T], 0).	% 'porneste crescator'
	
% 'subm_munte(L:list, R:list)'
% '(i, o) - nedeterminist'
% 'L - sirul care se da'
% 'R - lista care va reprezenta pe rand submultimea munte'
subm_munte(L, R):-
	subm(L, R), 	% 'generez o submultime'
	munte(R).		% 'verific daca e munte iar daca da, acela e un rezultat'