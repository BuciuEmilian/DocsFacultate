(defun myLength(L)
	(cond
		((null L)
			0
		)
		(t
			(+ 1 (myLength (cdr L)))
		)
	)
)

(defun buildList(L)
	(cond
		((null L)
			nil
		)
		((atom (car L))
			(cond
				; lungime impara => adaug in rezultat elementul
				((= (mod (myLength L) 2) 1)
					(cons (car L) (buildList (cdr L)))
				)
				; trec mai departe
				(t
					(buildList (cdr L))
				)
			)
		)
		; primul element e o lista => verific daca e de lungime impara
		(t
			(cond
				; lungime impara => adaug in rezultat elementul
				((= (mod (myLength (car L)) 2) 1)
					(cons (caar L) (buildList (cdr L)))
				)
				; trec mai departe
				(t
					(buildList (cdr L))
				)
			)
		)
	)
)

(print (myLength '(1 2 3 4)))
(print (myLength '(1)))

(print (buildList '(1 2 ((3 5) (4 5) (6 7)) 8 (9 10 11))))