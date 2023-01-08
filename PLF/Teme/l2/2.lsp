(defun nodesAux(tree level curr)
	(cond
		((null tree)
			nil
		)
		((= level curr)
			(list (car tree))
		)
		(t
			(nconc 
			(nodesAux (cadr tree) level (+ curr 1)) 
			(nodesAux (caddr tree) level (+ curr 1))
			)
		)
	)
)

(defun nodes(tree level)
	(nodesAux tree level 0)
)

(print (nodes '(A (B) (C (D) (E))) '1))