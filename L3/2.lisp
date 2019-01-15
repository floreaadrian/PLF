;2. Write a function that returns the sum of numeric atoms in a list, at any level.

(defun sumEl(l)
    (cond
    ((atom l) l)
    (t (apply '+ (mapcar 'sumEl l)))
    )
)

(write(sumEl '(1 2 3 4)))