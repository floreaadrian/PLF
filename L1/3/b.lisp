;b) Write a function to get from a given list the list of all atoms, on any
;   level, but reverse order. Example:
;   (((A B) C) (D E)) ==> (E D C B A)

(defun reverseall(l)
    (cond
    ((null l) nil)
    ((listp (car l)) (append (reverseall (cdr l)) (reverseall (car l))))
    (t (append (reverseall (cdr l)) (list (car l))))
    )
)

(write (reverseall '(((A B) C) (D E))))
