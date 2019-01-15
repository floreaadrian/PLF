(defun transform(l)
    (cond
        ((null l) nil)
        ((numberp l) (list l))
        ((atom l) nil)
        (t (apply 'append (mapcar 'transform l)))
    )
)

(defun check(l)
    (setq l (transform l))
    (cond
    ((null l) 0)
    ((AND (null (cdr l)) (= (mod (car l) 2) 1)) 1)
    (t (check (cdr l)))
    )
)

(defun solve(l)
    (cond
    ((atom l) 0)
    (t (+ (check l) (apply '+ (mapcar 'solve l))))
    )
)

(write (solve '(A (B 2) (1 C 4) (D 1 (9 F)) ((G 7) 6))))
