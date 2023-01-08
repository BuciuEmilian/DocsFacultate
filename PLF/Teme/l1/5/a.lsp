(defun _merge(L1 L2)
	(cond
		((and (null L1) (null L2))
			nil;
		)
		((null L1)
			L2
		)
		((null L2)
			L1
		)
		((< (car L1) (car L2))
			(cons (car L1) (_merge (cdr L1) L2))
		)
		(t
			(cons (car L2) (_merge L1 (cdr L2)))
		)
	)
)