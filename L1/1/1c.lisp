;c) Write a function to determine the list of all sublists of a given list, on any level.
;A sublist is either the list itself, or any element that is a list, at any level. Example:
;   (1 2 (3 (4 5) (6 7)) 8 (9 10)) => 5 sublists :
;   ( (1 2 (3 (4 5) (6 7)) 8 (9 10)) (3 (4 5) (6 7)) (4 5) (6 7) (9 10) )

(defun sublists(l)
    (cond
    ((null l) nil)
    ((listp l) 
            (cons l (cons (sublists (car l)) (sublists (cdr l)))))
    )
)

(write(sublists '(1 2 (3 (4 5) (6 7)) 8 (9 10))))