(defun min_list(L)
	(cond
		((null (cdr L))
			(car L)
		)
		(t
			(min (car L) (min_list (cdr L)))
		)
	)
)

(defun elimina(L el)
	(cond
		((null L)
			nil
		)
		((= (car L) el)
			(elimina (cdr L) el)
		)	
		(t
			(cons (car L) (elimina (cdr L) el))
		)
	)
)

(defun sorteaza(L)
	(cond
		((null L)
			nil
		)
		(t
			((lambda (m) 
				(cons m (sorteaza (elimina L m)))
				(min_list L))
			)
		)
	)
)