;12. Write a function that substitutes an element through
; another one at all levels of a given list.

(defun repl(l e x)
    (cond
    ((AND (atom l) (equal l e)) x)
    ((atom l) l)
    (t (mapcar #'(lambda (el) (repl el e x)) l))
    )
)

(write(repl '(a (b (c)) (d) (e (f))) 'b 'g))