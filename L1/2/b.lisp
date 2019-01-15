;b) Write a function to return the depth of a list.
;Example: the depth of a linear list is 1.

(defun list-depth (list depth)
    (cond
    ((null list) depth)
    ((atom (car list)) (list-depth (cdr list) depth))
    (t (max (list-depth (car list) (+ depth 1))
            (list-depth (cdr list) depth)))
    )
)

(write(list-depth '(A (B 2) (2 c 4) (1 (3 f)) (((g)4) 2)) 1))