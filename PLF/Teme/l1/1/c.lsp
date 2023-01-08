; (((24 9) 12) (99 33) 12) -> 3

(defun gcd_list(L)
	(cond
		; lista e goala deci returnez element neutru pt gcd
		((null L)
			0
		)
		; primul element e un numar deci il "adaug" la raspuns
		((atom (car L))
			(gcd (car L) (gcd_list (cdr L)))
		)
		; primul element e lista deci calculez gcd-ul ei si apoi "adaug" la rasp
		(t
			(gcd (gcd_list (car L)) (gcd_list (cdr L)))
		)
	)
)