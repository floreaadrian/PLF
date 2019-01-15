;11. Write a function to determine the depth of a list.

(defun depth-l(l)
    (cond
    ((atom l) 0)
    (t (+ 1 (reduce #'max (mapcar 'depth-l l))))
    )
)

(write(depth-l '(a (b (c (e))) (d) (e (f (g))))))