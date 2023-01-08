(defun myMember(L el)
	(cond
		((null L)
			nil
		)
		((equal (car L) el)
			T
		)
		(t
			(myMember (cdr L) el)
		)
	)
)

(defun setDiff(L1 L2)
	(cond
		((null L1)
			nil
		)
		((myMember L2 (car L1))
			(setDiff (cdr L1) L2)
		)
		(t
			(cons (car L1) (setDiff (cdr L1) L2))
		)
	)
)

(print (setDiff '(1 2 3 4 5 6) '(2 5 6)))
(print (setDiff '(1 2 3 4 5 6) '(0 8 9)))
(print (setDiff '(1 2 3 4 5 6) '(1 2 3 4 5 6)))
