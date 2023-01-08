
; (a b c (d (e f) g h i) j k (l m)) -> (c b a (d (f e) i h g) k j (m l))


; (d (e f) g h) -> (d (f e) h g)



(defun atomsSeqAux(L col)
	(cond
		((null L)
			col
		)
		((atom (car L))
			(atomsSeqAux (cdr L) (cons (car L) col))
		)
		(t
			(append col (list (atomsSeqAux (car L) nil)) (atomsSeqAux (cdr L) nil))
		)
	)
)

(defun atomsSeq(L)
	(atomsSeqAux L nil)
)