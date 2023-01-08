(defun levelAux(arb node d)
	(cond
		((null arb)
			0
		)
		((equal (car arb) node)
			d
		)
		(t
			(+ (levelAux (cadr arb) node (+ d 1)) (levelAux (caddr arb) node (+ d 1)))
		)
	)
)

(defun level(arb node)
	(levelAux arb node 0)
)

(print (level '(A (B) (C (D) (E))) 'A))
(print (level '(A (B) (C (D) (E))) 'B))
(print (level '(A (B) (C (D) (E))) 'C))
(print (level '(A (B) (C (D) (E))) 'D))
(print (level '(A (B) (C (D) (E))) 'E))