(defun vectorSum(L1 L2)
	(cond
		((null L1)
			nil
		)
		(
			(cons (+ (car L1) (car L2)) (vectorSum (cdr L1) (cdr L2)))
		)
	)
)