(defun countListsAux(L)
	(cond
		((null L)
			0
		)
		((listp (car L))
			(+ 1 (countListsAux (car L)) (countListsAux (cdr L))) 
		)
		(t
			(countListsAux (cdr L))
		)
	)
)

(defun countLists(L)
	(+ 1 (countListsAux L))
)