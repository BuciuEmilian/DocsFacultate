;(((A B) A) (D E) A)

(defun _count(L el)
	(cond
		; lista e goala deci raspunsul e 0 (nu apare niciodata)
		((null L)
			0
		)
		;  primul element este atom
		((atom (car L))
			(cond
				; poate fi egal cu el => incrementam count ul cu 1
				((equal (car L) el)
					(+ (_count (cdr L) el) 1)
				)
				; sau diferit => nu incrementam
				(t
					(+ (_count (cdr L) el) 0)
				)
			)
		)
		; primul element este lista => calculam count ul pt ea
		(t
			(+ (_count (car L) el) (_count (cdr L) el))
		)
	)
)