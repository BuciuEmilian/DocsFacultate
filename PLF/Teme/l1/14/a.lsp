(defun elimAux(L n poz)
	(cond
		((null L)
			nil
		)
		((and (= (mod poz n) 0) (not (= poz 1)))
			(elimAux (cdr L) n (+ poz 1))
		)
		(t
			(cons (car L) (elimAux (cdr L) n (+ poz 1)))
		)
	)
)

(defun elim(L n)
	(elimAux L n 1)
)

(print (elim '(1 2 3 4 5 6 7 8 9 10) 2))
(print (elim '(1 2 3 4 5 6 7 8 9 10) 3))
(print (elim '(1 2 3 4 5 6 7 8 9 10) 4))