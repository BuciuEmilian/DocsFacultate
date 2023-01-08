(defun myGcd(a b)
	(cond
		((= b 0)
			a
		)
		(t
			(myGcd b (mod a b))
		)
	)
)

(defun myLcm(a b)
	(/ (* a b) (myGcd a b))
)

(defun lcmList(L)
	(cond
		((null (cdr L))
			(car L)
		)
		(t
			(myLcm (car L) (lcmList (cdr L)))
		)
	)
)

(print (myLcm '5 '2))
(print (myLcm '12 '8))
(print (lcmList '(5 2 3)))