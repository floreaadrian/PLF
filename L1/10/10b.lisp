;b) Write a function to replace the first occurence of 
;an element E in a given list with an other element O
;                {
;               | nil , l=[]
; repl(l e o) = | o U t(l), e=h(l)
;               { h(l) U t(l) ,otherwise
;
(defun repl(l e o)
    (COND
    ((null l) nil)
    ((=(car l)e) (cons o(cdr l)))
    (T (cons (car l)(repl (cdr l) e o)))
    )
)

(write(repl '(1 2 3 5 2) 2 6))