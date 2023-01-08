(defun munteAux(L f)
	(cond
		; finalul listei
		((null (cdr L))
			(cond
				; regiune descrescatoare
				((= f -1)
					t
				)
				; regiune crescatoare
				(t
					nil
				)
			)
		)
		((< (car L) (cadr L))
			(cond
				; regiune crescatoare => continuam
				((= f 1)
					(munteAux (cdr L) f)
				)
				; regiune descrescatoare => ne oprim (nu putem creste de 2 ori)
				(t
					nil
				)
			)
		)
		((> (car L) (cadr L))
			(cond
				; am ajuns in varf => continuam pe regiunea descrescatoare
				((= f 1)
					(munteAux (cdr L) -1)
				)
				; regiune descrescatoare => continuam
				(t
					(munteAux (cdr L) f)
				)
			)
		)
	)
)

(defun munte(L)
	(cond
		((< (car L) (cadr L))
			(munteAux L 1)
		)
		(t
			nil
		)
	)
)

(print (munte '(13 11 10)))