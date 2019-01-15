;;;idk
(defun sumodd(x lvl)
    (cond
        ((AND (not (listp x)) (= (mod lvl 2) 0)) 0)
        ((AND (not (listp x)) (not (numberp x))) 1)
        ((numberp x) 0)
        (t (apply '+ (mapcar #'(lambda (el) (sumodd el (+ 1 lvl))) x)))
    )
)

(defun check(l)
    (cond
    (t (mod (sumodd l 0) 2))
    )
)

(defun solve(l)
    (cond
    ((atom l) 0)
    (t (+ (check l) (apply '+ (mapcar 'solve l))))
    )
)

(write (sumodd '(A (B 1) (1 C 4) 7 (D 1 (6 F)) ((G 4) 6)) 0))
