(defun remNth(l i n)
    (cond
    ((null l) nil)
    ((= i n) (remNth (cdr l) 1 n))
    (t (cons (car l) (remNth (cdr l) (+ i 1) n)))
    )
)

(write(remNth '(1 2 3 4 5) 1 2))