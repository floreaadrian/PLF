(defun f(l)
    (cond
    ((atom l) -1)
    ((> (f (cdr l)) 0) (+ (car l) (f (car l)) (f (cdr l))))
    (t (f (cdr l)))
    )
)

(defun aux(el e1 e2)
    (cond
    ((> e2 0) (+ el e1 e2))
    (t e2)
    )
)

(defun g(l)
    (cond
    ((atom l) -1)
    (t (aux (car l) (g (car l)) (g (cdr l))))
    )
)

(defun h(l)
(cond
    (t -1)
)
)

(write (h '(ana 2 3 4 5 6 7 8 9)))
