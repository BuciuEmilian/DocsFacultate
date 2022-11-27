; (a (b c) (d ((e) f))) 

; (a b c d)

(defun ultim(l)
	(cond
		; n = 1 (ultimul element)
		((null (cdr l))
			(cond
				; l1 e atom (returnez l1)
				((atom (car l))
					(car l)
				)
				; altfel (nu e atom => avansez in adancime)
				(t 
					(ultim (car l))
				)
			)
		)
		; altfel (nu am ajuns la ultimul element)
		(t 
			(ultim (cdr l))
		)
	)
)

(defun sub_list(l)
	(cond
		; n = 0
		((null l)
			nil
		)
		; l1 e lista (inlocuiesc sublista cu ultimul ei atom
		((listp (car l))
			(cons (ultim (car l)) (sub_list (cdr l)))
		)
		; altfel (l1 e atom deci nu inlocuiesc)
		(t 
			(cons (car l) (sub_list (cdr l)))
		)
	)
)