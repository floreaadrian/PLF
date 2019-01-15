(defun sumodd(x lvl)
    (cond
    ((AND (numberp x) (= (mod lvl 2) 0)) 0)
    ((numberp x) x)
    ((atom x) 0)
    (t (apply '+ (mapcar (lambda (el) (sumodd el (+ lvl 1))) x)))
    )
)

(defun check(l)
    (- 1 (mod (sumodd l 0) 2))
)

(defun solve(l)
    (cond
    ((atom l) 0)
    (t (+ (check l) (apply '+ (mapcar 'solve l))))
    )
)

(write (solve '(a 1 (b 2) (1 c 4) (d 1 (6 f)) ((g 4) 6))))
