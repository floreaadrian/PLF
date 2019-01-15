;15. Write a function that reverses a 
;list together with all its sublists elements, at any level.

(defun reverseall(l)
    (cond
    ((listp l) (reverse l))
    (t (apply 'append (mapcar 'reverseall l)))
    )
)

(write (reverseall '(((A B) C) (D E))))