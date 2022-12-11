; numara nodurile de pe un nivel
; arb - arborele de tipul (2) 
; level - nivelul de pe care se numara nodurile
; curr - nivelul pe care ne aflam la un moment dat
(defun countNodesLevelAux(arb level curr)
	(cond
		((null (car arb))
			0  
		)
		((= curr level)
			1
		)
		(t
			(+ 
			(countNodesLevelAux (cadr arb) level (+ curr 1))
			(countNodesLevelAux (caddr arb) level (+ curr 1))
			)
		)
	)
) 


; wrapper pentru countNodesLevelAux
(defun countNodesLevel(arb level)
	(countNodesLevelAux arb level 0)
)


; calculeaza inaltimea unui arbore
; arb - arborele de tip (2)
(defun height(arb)
	(cond
		((null (car arb))
			-1
		)
		(t
			(+ 1 (max (height (cadr arb)) (height (caddr arb))))
		)
	)
)


; [functia auxiliara]
; returneaza perechea care are al 2-lea element mai mare
; L1 - lista 1 (a1 b1)
; L2 - lista 2 (a2 b2)
(defun maxPair(L1 L2)
	(cond
		((> (cadr L1) (cadr L2))
			L1
		)
		(t
			L2
		)
	)
)


; calculeaza nivelul cu numarul maxim de noduri si returneaza
; o lista de forma (nivel, nr_noduri)
; arb - arborele de tip (2)
; h - inaltimea lui arb
; curr - nivelul curent
(defun levelMostNodesAux(arb h curr)
	(cond
		((> curr h)
			(list curr -1)
		)
		(t 
			(maxPair 
			(list curr (countNodesLevel arb curr))
			(levelMostNodesAux arb h (+ curr 1))
			)
		)
	)

)


; wrapper pentru levelMostNodesAux
(defun levelMostNodes(arb)
	(car (levelMostNodesAux arb (height arb) 0))
)


; returneaza nodurile de pe un nivel
; arb - arborele de tipul (2)
; level - nivelul de pe care se iau nodurile
; curr - nivelul pe care ne aflam la un moment dat
(defun nodesLevelAux(arb level curr)
	(cond
		((null (car arb))
			nil
		)
		((= curr level)
			(list (car arb))
		)
		(t 
			(append
			(nodesLevelAux (cadr arb) level (+ curr 1))
			(nodesLevelAux (caddr arb) level (+ curr 1))
			)
		)
	)
)

; wrapper pentru nodesLevelAux
(defun nodesLevel(arb level)
	(nodeLevelAux arb level 0)
)


; [functie auxiliara]
; creeaza o lista cu nodurile de pe nivelul dat si returneaza 
; o pereche de forma (nivel, noduri_nivel)
; arb - arborele de tip (2)
; level - nivelul de pe care se iau nodurile
(defun solve_aux(arb, level)
	(list level (nodesLevel arb level))
)

; creeaza o lista cu nodurile de pe nivelul cu cele mai multe noduri si returneaza 
; o pereche de forma (nivel, noduri_nivel)
; arb - arborele de tip (2)
(defun solve(arb)
	(solve_aux arb (levelMostNodes arb))
)
