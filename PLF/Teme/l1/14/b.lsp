(defun valeAux(L f)
	(cond
		((null (cdr L))
			(cond
				((= f 1)
					t
				)
				(t
					nil
				)
			)
		)
		((> (car L) (cadr L))
			(cond
				; regiune descrescatoare => continui
				((= f -1)
					(valeAux (cdr L) f)
				)
				; pe regiune crescatoare nu mai pot scadea => stop
				(t
					nil
				)
			)
		)
		((< (car L) (cadr L))
			(cond
				; regiune crescatoare => continui
				((= f 1)
					(valeAux (cdr L) f)
				)
				; se schimba sensul
				(t
					(valeAux (cdr L) 1)
				)
			)
		)
	)
)

(defun vale(L)
	(cond
		((> (car L) (cadr L))
			(valeAux L -1)
		)
		(t
			nil
		)
	)
)

(print (vale '(9 6 8 10)))