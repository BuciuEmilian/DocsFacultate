(defun height(arb)
	(cond
		((null arb)
			-1
		)
		(t
			(+ 1 (max (height (cadr arb)) (height  (caddr arb))))
		)
	)
)

(defun echilibrat(arb)
	(cond
		((null arb)
			T
		)
		((> (abs (- (height (cadr arb)) (height (caddr arb)))) 1)
			nil
		)
		(t
			(and (echilibrat (cadr arb)) (echilibrat (caddr arb)))
		)
	)
)

(print (echilibrat '(A (B) (C (D) (E))))) 