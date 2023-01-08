(defun depthAux(arb node d)
	(cond
		((null arb)
			0
		)
		((equal (car arb) node)
			d
		)
		(t
			(+ (depthAux (cadr arb) node (+ d 1)) (depthAux (caddr arb) node (+ d 1)))
		)
	)
)

(defun depth(arb node)
	(depthAux arb node 0)
)

(print (depth '(A (B) (C (D) (E))) 'C))