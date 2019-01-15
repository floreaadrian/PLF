;a) Write a function to eliminate the n-th element of a linear list.
;
;                 { nil, l =[]
;elimN(l n actI) =| elimN(t(l),n,actI+1), n=actI
;                 { h(l) U elimN(t(l),n,actI+1), otherwise
;
(defun elimN(l n actI)
    (cond
    ((null l) nil)
    ((= n actI) (elimN (cdr l) n (+ actI 1)))
    (T (cons (car l) (elimN (cdr l) n (+ actI 1))))
    )
)

(write(elimN '(1 2 3 5 4 45 2) 0 0))