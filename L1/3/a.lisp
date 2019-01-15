;a) Write a function that inserts in a linear list a given atom A
;after the 2nd, 4th, 6th, ... element.

(defun insertAfter(l i x)
    (cond
    ((null l) nil)
    ((= (mod i 2) 0) (cons (car l) (cons x (insertAfter (cdr l) (+ i 1) x))))
    (t (cons (car l) (insertAfter (cdr l) (+ i 1) x)))
    )
)

(write(insertAfter '(1 2 3 4 5 6 7 8) 1 11))