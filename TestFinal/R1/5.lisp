(defun normalizare(l)
    (cond
    ((null l) nil)
    ((numberp l) (list l))
    ((atom l) nil)
    (t (apply 'append (mapcar 'normalizare l)))
    )
)

(defun check(l)
    (cond
    ((= (mod (car l) 2) 0) 1)
    (t 0)
    )
)

(defun solve(l)
    (cond
    ((atom l) 0)
    (t (+ (check (normalizare l)) (apply '+ (mapcar 'solve l))))
    )
)

(write (solve '(a 3 (b 2) (1 c 4) (d 2 (6 f)) ((g 4) 6))))