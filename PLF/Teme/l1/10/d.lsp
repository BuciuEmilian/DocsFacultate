(defun myCount(L el)
	(cond
		((null L)
			0
		)
		((equal (car L) el)
			(+ 1 (myCount (cdr L) el))
		)
		(t
			(myCount (cdr L) el)
		)
	)
)

(defun myRemove(L el)
	(cond
		((null L)
			nil
		)
		((equal (car L) el)
			(myRemove (cdr L) el)
		)
		(t
			(cons (car L) (myRemove (cdr L) el))
		)
	)
)

(defun solve(L)
	(cond
		((null L)
			nil
		)
		(t
			(cons (list (car L) (myCount L (car L))) (solve (myRemove L (car L))))
		)
	)
)

(print (myCount '(1 2 1 3 4 1) '1))
(print (myRemove '(1 2 1 3 4 1) '1))
(print (solve '(A B A B A C A)))