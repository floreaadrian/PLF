;d) Write a function to test whether a linear list is a set.

;
;               { 0, l=[]
;contine(l,e) = | 1, h(l)=e
;               { contine()
;
(defun contine(l e)
    (cond
    ((null l) 0)
    ((=(car l) e) 1)
    (T (contine (cdr l) e))
    )
)
;
;               { 1, l=[]
; checkSet(l) = | 0, contine(t(l),h(l))=0
;               { checkSet(t(l)), otherwise
;
(defun checkSet(l)
    (cond
    ((null l) 1)
    ((=(contine (cdr l) (car l))1) 0)
    (T (checkSet (cdr l)))
    )
)

(write(checkSet '(1 2 3 4 2)))