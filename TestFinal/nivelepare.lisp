(defun nivelePare(x lvl)
    (cond
    ((null x) 0)
    ((AND (atom x) (= (mod lvl 2) 0)) 1)
    ((atom x) 0)
    (t (apply '+ (mapcar (lambda (el) (nivelePare el (+ 1 lvl))) x)))
    )
)


(write(nivelePare '(A (B K) (C (D) (E))) 0))