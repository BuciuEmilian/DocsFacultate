; numara nodurile de pe un nivel
; tree - arborele de tipul (2) 
; level - nivelul de pe care se numara nodurile
; curr - nivelul pe care ne aflam la un moment dat
(defun countNodesLevelAux(tree level curr)
	(cond
		((null (car tree))
			0  
		)
		((= curr level)
			1
		)
		(t
			;(+ 
			;(countNodesLevelAux (cadr tree) level (+ curr 1))
			;(countNodesLevelAux (caddr tree) level (+ curr 1))
			; ...
			;)
			
			(apply #'+ (mapcar #'(lambda (tree)
									(countNodesLevelAux tree level (+ curr 1))
								)
					(cdr tree)
				)
			)
		)
	)
) 


; wrapper pentru countNodesLevelAux
(defun countNodesLevel(tree level)
	(countNodesLevelAux tree level 0)
)
