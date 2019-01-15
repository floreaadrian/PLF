(defun inloc(l i k)
    (cond
    ((AND (atom l) (= i k)) 0)
    ((atom l) l)
    (t (mapcar (lambda (el) (inloc el (+ i 1) k)) l))
    )
)

(write (inloc '(a (1 (2 b)) (c (d))) 0 2))
(format t "~%")
(write (inloc '(a (1 (2 b)) (c (d))) 0 1))
(format t "~%")
(write (inloc '(a (1 (2 b)) (c (d))) 0 4))
(format t "~%")