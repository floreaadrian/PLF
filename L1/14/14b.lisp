;b) Write a function to return the product of all numerical atoms in a list, at any level.
;
;               { 1, l =[]
; product(l) =  | h(l)*product(t(l)), h(l) number  
;               | product(t(l))*product(h(l)), h(l) list
;               { product(t(l)), otherwise
;
(defun product(li)
    (COND
    ((null li) 1)
    ((numberp (car li)) (*(car li)(product(cdr li))))
    ((listp (car li)) (*(product (car li))(product (cdr li))))
    (T (product(cdr li)))
    )
)

(write(product '(1 2 3 4 a (1 2 (2)))))