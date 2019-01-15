(defun f(l)
    (cond
    ((null l) 0)
    ((> (f (car l)) 2) (+ (car l) (f (cdr l))))
    (t (f (car l)))
    )
)

(defun aux(e1 e2)
    (cond
    ((> e2 2) (+ e1 e2))
    (t e2)
    )
)

(defun g(l)
    (cond
    ((null l) 0)
    (t (aux (car l) (g (cdr l))))
    )
)

(write (f '(1 2 3 4 5 6 7)))
