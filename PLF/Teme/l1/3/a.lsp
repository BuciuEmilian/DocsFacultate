(defun dotProduct(L1 L2)
	(cond
		; oricare (trebuie sa aiba aceasi dimensiune)
		((null L1)
			0
		)
		(t
			(+ (* (car L1) (car L2)) (dotProduct (cdr L1) (cdr L2)))
		)
	)
)