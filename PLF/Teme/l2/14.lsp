(defun postordine(arb)
	(cond
		; frunza
		((null (cdr arb))
			(list (car arb))
		)
		(t
			(append
				(list (car arb))
				(postordine (cadr arb))
				(postordine (caddr arb))
			)
		)
	)
)

(print (postordine '(A (B) (C (D) (E)))))