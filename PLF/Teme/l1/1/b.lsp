;(((A B) C) (D E) F) --> (F E D C B A)

; obtine lista atomilor de la orice nivel in ordinea in care apar
(defun atomsAux(L)
	(cond
		; am ajuns la finalul unei liste
		((null L)
			nil
		)
		; daca l1 e atom il adaug in raspuns
		((atom (car L))
			(cons (car L) (atomsAux (cdr L)))
		)
		; daca e lista, o parcurg si adaug rezultatul in raspuns
		(t
			(nconc (atomsAux (car L)) (atomsAux (cdr L)))
		)
	)
)

; inverseaza o lista
(defun rev(L col)
	(cond
		; daca s a terminat lista, rezultatul se afla in colectoare
		((null L)
			col
		)
		; daca mai am elemente in lista, le adaug la inceputul colectoarei
		(t
			(rev (cdr L) (cons (car L) col))
		)
	)
)

(defun atoms(L)
	(rev (atomsAux L) nil)
)