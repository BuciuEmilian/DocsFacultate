(defun preordine(arb)
	(cond
		; frunza
		((null (cdr arb))
			(list (car arb))
		)
		(t
			(append
				(list (car arb))
				(preordine (cadr arb))
				(preordine (caddr arb))
			)
		)
	)
)

(print (preordine '(A (B) (C (D) (E)))))