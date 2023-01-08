(defun atoms(L)
	(cond
		((null L)
			nil
		)
		((atom (car L))
			(cons (car L) (atoms (cdr L)))
		)
		(t
			(nconc (atoms (car L)) (atoms (cdr L)))
		)
	)
)
