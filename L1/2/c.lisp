;c) Write a function to sort a linear list without keeping the double values.

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
    ((=(car l)e) (del (cdr l) e))
    (T (cons (car l)(del (cdr l) e)))
    )
)


(defun mysort(l)
    (COND
    ((null l) nil)
    (T (cons (minimum l) (mysort (del l (minimum l)))))
    )
)

(write(mysort '(7 4 2 5 2 9 5 1 2 5 1)))