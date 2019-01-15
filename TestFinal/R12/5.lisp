(defun liniarizare(l)
    (cond
    ((atom l) (list l))
    (t (apply 'append (mapcar 'liniarizare l)))
    )
)

(defun check(l)
    (cond
    ((null l) 0)
    ((numberp (car l)) 0)
    (t 1)
    )
)

(defun solve(l)
    (cond
        ((atom l) 0)
        (t (+ (check (liniarizare l)) (apply '+ (mapcar 'solve l))))
    )
)

(write (solve '(1 a (b 2) (1 c 4) (d 1 (6 f)) ((g 4) 6))))
