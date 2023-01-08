;(1 2 (3 (4 5) (6 7)) 8 (9 10))
; ->
;(
;	(1 2 (3 (4 5) (6 7)) 8 (9 10)),
;	(3 (4 5) (6 7)), 
;	(4 5),
; 	(6 7), 
;   (9 10) 
;)

(defun sublistsAux(L)
	(cond
		((null L)
			nil
		)
		((listp (car L))
			(nconc (cons (car L) (sublistsAux (car L))) (sublistsAux (cdr L)))
		)
		(t
			(sublistsAux (cdr L))
		)
	)
)

(defun sublists(L)
	(cons L (sublistsAux L))
)