;14. Write a function that returns the number of atoms in a list, at any level.

(defun elNr(l)
    (cond
    ((atom l) 1)
    (t (apply '+ (mapcar 'elNr l)))
    )
)

(write(elNr '(1 2 3 (4 (5 6)) (7 (8 (9))))))