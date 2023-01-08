(defun height(arb)
	(cond
		((null arb)
			-1
		)
		(
			(+ 1 (max (height (cadr arb)) (height (caddr arb))))
		)
	)
)

(defun levels(arb)
	(+ (height arb) 1)
)

(print (levels '(A (B) (C (D) (E)))))