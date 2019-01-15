(defun inloc(l i k)
    (cond
    ((AND (= i k) (atom l) ) 0)
    ((atom l) l)
    (t (mapcar #'(lambda (el) (inloc el (+ i 1) k)) l))
    )
)

(write(inloc '(a (1 (2 b)) (c (d))) 0 2))
(write(inloc '(a (1 (2 b)) (c (d))) 0 1))
(write(inloc '(a (1 (2 b)) (c (d))) 0 3))