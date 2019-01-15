;d) Build a list which contains positions 
;of a minimum numeric element from a given linear list.
(defun minimum (list)
 (cond

       ((null list) nil)
       ((null (cdr list)) (car list))
       ((< (car list) (cadr list))   
        (minimum (cons (car list) (cddr list))))
       (T (minimum (cdr list))))
)  
;               { nil, l=[]
;pos(l el i) =  | i U pos(t(l),el,i+1), el=h(l)
;               {pos(t(l),el, i+1) otherwise
;
(defun pos(l el i)
    (cond
    ((null l) nil)
    ((=(car l)el) (cons i (pos (cdr l) el (+ 1 i))))
    (T (pos (cdr l) el (+ 1 i)))
    )
)

(defun sol(l)
    (cond
    (T (pos l (minimum l) 0))
    )
)

(write(sol '(1 2 -1 100 3 -4 4 2 -1 100 -4 -3)))