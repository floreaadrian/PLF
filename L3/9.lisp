;9. Write a function that removes all occurrences of an atom from any level of a list.
(defun remEl(l e)
    (cond
    ((AND (atom l) (equal l e)) nil)
    ((atom l) l)
    (t (mapcar #'(lambda (el) (remEl el e)) l))
    )
)

(write(remEl '(1 2 3 1 4 (3 5 1) (65 3 (32 1 (12)))) 1))