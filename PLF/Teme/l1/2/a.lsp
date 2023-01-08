(defun select(L n)
	(cond
		((= n 1)
			(car L)
		)
		((null L)
			nil
		)
		(t
			(select (cdr L) (- n 1))
		)
	)
)