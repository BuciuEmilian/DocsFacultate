(defun inordine(arb)
	(cond
		; frunza
		((null (cdr arb))
			(list (car arb))
		)
		(t
			(append
				(inordine (cadr arb))
				(list (car arb))
				(inordine (caddr arb))
			)
		)
	)
)

(print (inordine '(A (B) (C (D) (E)))))