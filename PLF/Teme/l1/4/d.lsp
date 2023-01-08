(defun shallow_max(L)
	(cond
		((null L)
			-1
		)
		((atom (car L))
			(max (car L) (shallow_max (cdr L)))
		)
		(t
			(shallow_max (cdr L))
		)
	)
)