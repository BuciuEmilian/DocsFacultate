(defun apartine(e l)
	(cond
		; n = 0 (nu l am gasit)
		((null l)
			nil
		)
		; l1 = e (am gasit)
		((= (car l) e)
			T
		)
		; l1 != e (trec mai departe)
		(t
			(apartine e (cdr l))
		)
	)
)

(defun multime(l)
	(cond
		((null l)
			nil
		)
		; l1 e in l2...ln (nu l pastrez) 
		((apartine (car l) (cdr l))
			(multime (cdr l))
		)
		; l1 NU e in l2...ln (il pastrez)
		(t
			(cons (car l) (multime (cdr l)))
		)
	)
)

(defun interclasare_aux(l1 l2)
	(cond
		; n = 0 si m = 0
		((and (null l1) (null l2))
			;(format t "n = 0 si m = 0 ~%")
			nil
		)
		; n = 0 si m != 0
		((and (null l1) (not (null l2)))
			;(format t "n = 0 si m != 0 - l2 = ~a ~%" l2)
			l2
		)
		; n != 0 si m = 0
		((and (not (null l1)) (null l2))
			;(format t "n != 0 si m = 0 - l1 = ~a ~%" l1)
			l1
		)
		; l1 < l1'
		((< (car l1) (car l2))
			;(format t "l1 < l1' ~%")
			(cons (car l1) (interclasare_aux (cdr l1) l2))
		)
		; l1 > l1'
		((> (car l1) (car l2))
			;(format t "l1 > l1' ~%")
			(cons (car l2) (interclasare_aux l1 (cdr l2)))
		)
		; l1 = l1'
		(t
			;(format t "l1 = l1' ~%")
			(cons (car l1) (interclasare_aux (cdr l1) (cdr l2)))
		)
	)
)

(defun interclasare(l1 l2)
	(interclasare_aux (multime l1) (multime l2))
)