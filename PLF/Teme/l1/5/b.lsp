; (a b c (d (e b) g b i))

(defun sub(L el L1)
	(print L)
	(cond
		((null L)
			nil
		)
		((equal (car L) el)
			(append L1 (sub (cdr L) el L1))
		)
		((listp (car L))
			(cons (sub (car L) el L1) (sub (cdr L) el L1))
		)
		(t	
			(cons (car L) (sub (cdr L) el L1))
		)
	)
)