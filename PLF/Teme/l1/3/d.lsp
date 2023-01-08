(defun _member(L el)
	(cond
		((null L)
			nil
		)
		((equal (car L) el)
			T
		)
		(t
			(_member (cdr L) el)
		)
		
	)
)

; (3 1 4 6 2) (3 2 1 9)


(defun intersect(L1 L2)
	(cond
		((null L1)
			nil
		)
		((_member L2 (car L1))
			(cons (car L1) (intersect (cdr L1) L2))
		)
		(t
			(intersect (cdr L1) L2)
		)
	)
)