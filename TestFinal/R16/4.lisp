(defun f(l)
    (cond
    ((null l) nil)
    ((listp (car l)) (append (f (cdr l)) (f (cdr l)) (car (f (car l)))))
    (t (list (car l)))
    )
)

(defun addIfOk(fcar fcdr)
    (append fcdr fcdr (car fcar))
)

(defun g(l)
    (cond
    ((null l) nil)
    ((listp (car l)) (addIfOk (g (car l)) (f (cdr l))))
    (t (list (car l)))
    )
)

(write (g '((2 3) 100 (4 5))))
