(defun dubleNth(l i n)
    (cond
    ((null l) nil)
    ((= i n) (append (list (car l) (car l)) (dubleNth (cdr l) 1 n)))
    (t (cons (car l) (dubleNth (cdr l) (+ i 1) n)))
    )
)

(write(dubleNth '(1 2 3 4 5) '1 '2))