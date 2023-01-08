(defun double(L n)
	(cond
		((null L)
			nil
		)
		((= n 1)
			(cons (car L) L)
		)
		(t
			(cons (car L) (double (cdr L) (- n 1)))
		)
	)
)