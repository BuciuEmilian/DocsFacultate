(defun depthAux(L d)
	(cond
		((atom L)
			d
		)
		(t
			(max (depthAux (car L) (+ d 1)) (depthAux (cdr L) d))
		)
	)
)

(defun depth(L)
	(depthAux L -1)
)