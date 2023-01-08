(defun myInsert(L n el)
	(cond 
		((= n 1)
			(cons el L)
		)
		(t
			(cons (car L) (myInsert (cdr L) (- n 1) el))
		)
	)
)

(defun insertEvAux(L n el)
	(cond
		((= n 0)
			nil
		)
		(t
			(cons (myInsert L n el) (insertEvAux L (- n 1) el))
		)
	)
)

(defun insertEv(L el)
	(insertEvAux L (+ (length L) 1) el)
)

(defun permutari(L)
	(cond
		((null L)
			nil
		)
		(t
			(insertEv (cdr L) (car L))
		)
	)
)

(print (permutari '(1 2 3)))
