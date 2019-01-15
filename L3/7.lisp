;7. Write a function that substitutes an element E with all elements of a
;list L1 at all levels of a given list L.

(defun replEl(l e x)
    (cond
    ((AND (atom l) (equal l e)) x)
    ((atom l) l)
    (t (mapcar (lambda (el) (replEl el e x)) l))
    )
)

(write(replEl '(1 2 3 (3 2 (4 5 (2)))) 2 '(3 4)))