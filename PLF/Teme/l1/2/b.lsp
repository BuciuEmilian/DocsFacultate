; (((A B) C) (D E)) E -> T
; (((A B) C) (D E)) F -> nil

(defun _member(L el)
	(cond
		; lista vida nu contine nimic
		((null L)
			nil
		)
		; primul element e atom
		((atom (car L))
			(cond
				; e elementul cautat
				((equal (car L) el)
					t
				)
				; nu e => cautam mai departe
				(t 
					(_member (cdr L) el)
				)
			)
		)
		; primul element nu e atom => cautam in primul element si in restu listei
		(t
			(or (_member (car L) el) (_member (cdr L) el))
		)
	)
)