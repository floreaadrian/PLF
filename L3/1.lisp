;1. Write a function to check if an atom is member of a list (the list is non-liniar)

(defun occorunceMember(l e)
    (cond
    ((AND (atom l) (= l e)) 1)
    ((atom l) 0)
    (t (apply '+ (mapcar (lambda (el) (occorunceMember el e)) l)))
    )
)

(defun checkMember(l e)
    (cond
    ((null l) nil)
    ((> (occorunceMember l e) 0) 1)
    (t 1)
    )
)

(write(checkMember '(1 2 3 4 1 3 4 5 5) 4))