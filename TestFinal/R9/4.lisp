(defun removeEl(l e)
    (cond
    ((null l) nil)
    ((equal (car l) e) (removeEl (cdr l) e))
    ((listp (car l)) (cons (removeEl (car l) e) (removeEl (cdr l) e)))
    (t (cons (car l) (removeEl (cdr l) e)))
    )
)

(write(removeEl '(1 (2 A (3 A)) (A)) 'A))
(write(removeEl '(1 (2 A (3 A))) 'A))