;5. Write a function that computes the sum of even numbers and the 
;decrease the sum of odd numbers,at any level of a list.

(defun sumEl(l)
    (cond
    ((AND (numberp l) (= (mod l 2) 0)) l)
    ((AND (numberp l) (= (mod l 2) 1)) (* l '-1))
    ((atom l) l)
    (t (apply '+ (mapcar 'sumEl l)))
    )
)

(write(sumEl '(1 2 3 4)))