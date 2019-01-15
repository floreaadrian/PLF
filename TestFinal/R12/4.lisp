(defun addEveryNth(l i n)
    (cond
    ((null l) nil)
    ((= i n) (cons (car l) (cons (car l) (addEveryNth (cdr l) 1 n))))
    (t (cons (car l) (addEveryNth (cdr l) (+ i 1) n)))
    )
)

(write (addEveryNth '(1 2 3 4 5) 1 2))
