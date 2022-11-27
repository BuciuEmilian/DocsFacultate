(defun sub_aux(l e1 e2 f)
	(cond
		; n = 0
		((null l)
			nil
		)
		; l1 = e1 si f = 0 (nu am inlocuit inca => inlocuiesc)
		((and (= (car l) e1) (= f 0))
			(cons e2 (sub_aux (cdr l) e1 e2 1))
		)
		; altfel (e diferit de e1 sau am inlocuit deja)
		(t
			(cons (car l) (sub_aux (cdr l) e1 e2 f))
		)
	)
)

(defun sub(l e1 e2)
	(sub_aux l e1 e2 0)
)