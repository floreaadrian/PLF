;c) Write a function to sort a linear list with keeping the double values.

(defun minimum (list)
 (cond

       ((null list) nil)
       ((null (cdr list)) (car list))
       ((< (car list) (cadr list))   
        (minimum (cons (car list) (cddr list))))
       (T (minimum (cdr list))))
)         

(defun del(l e)
    (COND
    ((null l) nil)
    ((=(car l)e) (cdr l))
    (T (cons (car l)(del (cdr l) e)))
    )
)

;
;            {nil, l=[]
; mysort(l) =| min(l) U mysort(del(l, min(l)))
;            {


(defun mysort(l)
    (COND
    ((null l) nil)
    (T (cons (minimum l) (mysort (del l (minimum l)))))
    )
)

(write(mysort '(1 2 -1 100 3 4 2 -1 100 -4 -3)))