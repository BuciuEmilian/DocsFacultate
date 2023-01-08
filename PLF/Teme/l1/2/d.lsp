(defun member_liniar(L el)
	(cond
		((null L) 
			nil
		)
		((equal (car L) el)
			t
		)
		(t
			(member_liniar (cdr L) el)
		)
	)
)

(defun multime(L)
	(cond
		((null L)
			nil
		)
		((member_liniar (cdr L) (car L))
			(multime (cdr L))
		)
		(t
			(cons (car L) (multime (cdr L)))
		)
	)
)