;a) Write a function to return the product of all the numerical atoms from a list,
; at superficial level.
;               { 1, l =[]
; product(l) = | h(l)*product(t(l)), h(l) number
;               { product(t(l)), otherwise

(defun product(li)
    (COND
    ((null li) 1)
    ((numberp (car li)) (*(car li)(product(cdr li))))
    (T (product(cdr li)))
    )
)

(write(product '(1 2 3 4 a (1 2))))