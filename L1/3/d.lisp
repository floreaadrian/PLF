;d) Write a function that determines the 
;number of occurrences of a given atom in a nonlinear list.

(defun apariti(l x)
    (cond
    ((null l) 0)
    ((listp (car l)) (+ (apariti (cdr l) x) (apariti (car l) x)))
    ((= (car l) x) (+ (apariti (cdr l) x) 1))
    (t (apariti (cdr l) x))
    )
)

(write(apariti '(1 2 3 (1 2 (1)) 4 1 (3 4 (4 (1))) 4 1 5 5) 1))