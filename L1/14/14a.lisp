;a) Write a function to return the union of two sets

(defun mem(l e)
    (COND
    ((null l) 0)
    ((=(car l)e) 1)
    (T (mem (cdr l) e))
    )
)


(defun uni(l1 l2)
    (COND
    ((AND (null l1) (null l2)) nil)
    ((null l1) l2)
    ((null l2) l1)
    ((=(car l1)(car l2)) (cons (car l1) (uni (cdr l1) (cdr l2))))
    ((=(mem l1 (car l2))1) (uni l1 (cdr l2)))
    ((=(mem l2 (car l1))1) (uni (cdr l1) l2))
    (T (cons (car l1) (uni (cdr l1) l2)))
    )
)

(write (uni '(1 2 3 4) '()))