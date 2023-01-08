(defun rev(L col)
	(cond
		((null L)
			col
		)
		(t
			(rev (cdr L) (cons (car L) col))
		)
	)
)

; (1 9 2 3) + (8 9) = (2 0 1 2)

(defun sumListAux(L1 L2 carry)
	(cond
		((and (null L1) (null L2))
			nil
		)
		; s au terminat cifrele celui de al 2 lea numar
		((null L1)
			(cond
				((> (+ (car L2) carry) 9)
					(cons (mod (+ (car L2) carry) 10) (sumListAux L1 (cdr L2) 1))
				)	
				(t
					(cons (+ (car L2) carry) (sumListAux L1 (cdr L2) 0))
				)
			)
		)
		; s au terminat cifrele primului numar
		((null L2)
			(cond
				((> (+ (car L1) carry) 9)
					(cons (mod (+ (car L1) carry) 10) (sumListAux (cdr L1) L2 1))
				)	
				(t
					(cons (+ (car L1) carry) (sumListAux (cdr L1) L2 0))
				)
			)
		)
		; depasire
		((> (+ (car L1) (car L2) carry) 9)
			(cons (mod (+ (car L1) (car L2) carry) 10) (sumListAux (cdr L1) (cdr L2) 1))
		)	
		(t
			(cons (+ (car L1) (car L2) carry) (sumListAux (cdr L1) (cdr L2) 0))
		)
	)
)

(defun sumList(L)
	(cond
		((null (cdr L))
			(car L)
		)
		(t
			(+ (* (sumList (cdr L)) 10) (car L))
		)
	)
)

(defun solve(L1 L2)
	(
		(lambda (L)
			(print L)
			(sumList L)
		)
		(sumListAux (rev L1 nil) (rev L2 nil) 0)
	)
)