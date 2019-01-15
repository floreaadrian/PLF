;a) Write a function to return the n-th element of a list, or 
;NIL if such an element does not exist.
(defun nthe(l poz n)
    (cond
    ((null l) nil)
    ((= poz n) (car l))
    (t (nthe (cdr l) (+ 1 poz) n))
    )
)

(write(nthe '(1 2 3 4) 0 1))