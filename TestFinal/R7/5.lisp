(defun mmax(x lvl)
    (cond
        ((AND (numberp x) (= (mod lvl 2) 1))  x)
        ((numberp x) -999999)
        ((atom x) -999999)
        (t (apply 'max (mapcar (lambda (el) (mmax el (+ 1 lvl))) x)))
    )
)

(defun check(l)
    (cond
    ((= (mod (mmax l 0) 2) 0) 1)
    (t 0)
    )
)

(defun solve(l)
    (cond
    ((atom l) 0)
    (t (+ (check l) (apply '+ (mapcar 'solve l))))
    )
)

(write (solve '(A (B 1) (1 C 4) 7 (D 1 (6 F)) ((G 4) 6))))
