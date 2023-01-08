; 1 2 3 4 5 6 -> 1 2 * 3 4 * 5 6 * 
; 1 2 3 4 5   -> 1 2 * 3 4 * 5

(defun insertAux(L el poz)
	(cond 
		; lista este vida
		((null L)
			nil
		)
		; am ajuns "pe" un element dupa care trebuie sa adaugam 
		((= (mod poz 2) 0)
			(cons (car L) (cons el (insertAux (cdr L) el (+ poz 1))))
		)
		; nu trebuie sa adaugam
		(t
			(cons (car L) (insertAux (cdr L) el (+ poz 1)))
		)
	)
) 

(defun insert(L el)
	(insertAux L el 1)
)