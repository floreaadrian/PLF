;16. Write a function that produces the linear list of all atoms of a given list, from
;all levels, and written in the same order. Eg.: (((A B) C) (D E)) --> (A B C D E)

(defun norm(l)
    (cond
    ((atom l) (list l))
    (t (apply 'append (mapcar 'norm l)))
    )
)

(write(norm '(((A B) C) (D E))))