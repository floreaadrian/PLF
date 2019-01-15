(defun solve(l i k x)
    (cond
    ((AND (atom l) (= i k)) x)
    ((atom l) l)
    (t (mapcar #'(lambda (el) (solve el (+ i 1) k x)) l))
    )
)

(write(solve '(a (b (g)) (c (d (e)) (f))) -1 2 'h))
(write(solve '(a (b (g)) (c (d (e)) (f))) -1 6 'h))