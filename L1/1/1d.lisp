(defun toSet(l)
    (cond
    ((null l) nil)
    ((not (member (car l) (cdr l))) (cons (car l) (toSet (cdr l))))
    (t (toSet (cdr l)))
    )
)

(write(toSet '(1 2 3 4 4 1 5)))