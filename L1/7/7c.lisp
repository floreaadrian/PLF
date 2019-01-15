;c) Write a function to return the set of all the atoms of a list.
;Exemplu: (1 (2 (1 3 (2 4) 3) 1) (1 4)) ==> (1 2 3 4)

(defun norm(l)
    (cond
    ((null l) nil)
    ((numberp (car l)) (cons (car l) (norm (cdr l))))
    ((atom (car l)) (norm (cdr l)))
    (T (append (norm (car l)) (norm (cdr l))))
    )
)
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
;          { nil, l=[]
; trs(l) = | h(l) U trs(t(l)), coninte(t(l),h(l))=0
;          { trs(t(l)), otherwise
;
(defun trs(l)
    (cond
    ((null l) nil)
    ((=(contine (cdr l) (car l))0) (cons (car l) (trs (cdr l))))
    (T (trs (cdr l)))
    )
)

(write(trs (norm '(1 (2 (1 3 (2 4) 3) 1) (1 4)))))