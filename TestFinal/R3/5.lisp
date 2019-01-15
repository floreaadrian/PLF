(defun minodd(x lvl)
    (cond
        ((AND (numberp x) (= (mod lvl 2) 1)) x)
        ((atom x) 999999)
        (t (apply 'min (mapcar (lambda (el) (minodd el (+ 1 lvl))) x)))
    )
)

(defun check(l)
    (cond
    ((= (mod (minodd l 0) 2) 0) 1)
    (t 0)
    )
)

(defun solve(l)
    (cond
        ((atom l) 0)
        (t
        (+ (check l) (apply '+ (mapcar 'solve l)))
        )
    )
)


(write (solve '(A (B 2) (2 c 4) (1 (3 f)) (((g)4) 2) )))