(defun makePairs(L el)
	(cond
		((null L)
			nil
		)
		(t
			(cons (list el (car L)) (makePairs (cdr L) el))
		)
	)
)

(defun pairs(L)
	(cond
		((null L)
			nil
		)
		(t
			(nconc (makePairs (cdr L) (car L)) (pairs (cdr L)))
		)
	)
)

(print (makePairs '(1 2 3 4) '5))
(print (pairs '(a b c d)))
