;d) Write a function to return the intersection of two sets.

(defun inter(l1 l2)
    (cond
    ((AND (null l1) (null l2)) nil)
    ((null l1) l2)
    ((null l2) l1)
    ((member (car l1) l2) (inter (cdr l1) l2))
    ((member (car l2) l1) (inter l1 (cdr l2)))
    (t (cons (car l1) (cons (car l2) (inter (cdr l1) (cdr l2)))))
    )
)

(write (inter '(1 2 3 4 5) '(1 2 3 6 7)))
