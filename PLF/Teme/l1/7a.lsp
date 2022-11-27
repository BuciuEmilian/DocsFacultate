(defun liniara(l) 
	(cond 
		; n = 0 (e liniara)
		((null l) 
			T
		)
		; l1 e atom (trec mai departe)
		((atom (car l))
			(liniara (cdr l))
		)
		; altfel (l1 nu e atom => lista neliniara)
		(t
			NIL
		)
	)
)
