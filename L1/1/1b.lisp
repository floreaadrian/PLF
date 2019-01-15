;b) Write a function to check whether an atom E is a 
;member of a list which is not necessarily linear.
(defun norm(l)
    (cond
    ((null l) nil)
    ((numberp (car l)) (cons (car l) (norm (cdr l))))
    ((atom (car l)) (norm (cdr l)))
    (T (append (norm (car l)) (norm (cdr l))))
    )
)

(defun checkexist(l e)
    (cond
    ((null l) 0)
    ((AND (atom (car l)) (=(car l)e)) 1)
    (t (checkexist (cdr l) e))
    )
)

(write(checkexist (norm '(12 3 5 6)) 3))