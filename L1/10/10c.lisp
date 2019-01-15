;c) Wrile a funclion lo compule lhe resull of an arilhmelic expression memorised
;   in preorder on a slack. Examples:
;   (+ 1 3) ==> 4 (1 + 3)
;   (+ * 2 4 3) ==> 11 [((2 * 4) + 3)
;   (+ * 2 4 - 5 * 2 2) ==> 9 ((2 * 4) + (5 - (2 * 2))

(defun rev (l)
           (cond
             ((null l) '())
             (T (append (rev (cdr l)) (list (car l)))))) 
;                       { h(stack) , l =[]
;                       | h(l)="+",preorder(t(l),(h(l)+h(stack)+h(t(stack)))Ut(t(stack)))
;                       | h(l)="*",preorder(t(l),(h(l)+h(stack)*h(t(stack)))Ut(t(stack)))
; preorder(l,stack)=    | h(l)="-",preorder(t(l),(h(l)+h(stack)-h(t(stack)))Ut(t(stack)))
;                       | h(l)="/",preorder(t(l),(h(l)+h(stack)/h(t(stack)))Ut(t(stack)))
;                       { preorder(t(l),h(l)Ustack)
(defun preorder(l stack)
  (COND 
    ((null l) (car stack))
    ((equal (write-to-string (car l)) "+")
        (preorder (cdr l) (cons (+(car stack)(cadr stack)) (cddr stack))))
    ((equal (write-to-string (car l)) "*")
        (preorder (cdr l) (cons (*(car stack)(cadr stack)) (cddr stack))))
    ((equal (write-to-string (car l)) "-")
        (preorder (cdr l) (cons (-(car stack)(cadr stack)) (cddr stack))))
    ((equal (write-to-string (car l)) "/")
        (preorder (cdr l) (cons (/(car stack)(cadr stack)) (cddr stack))))
    (T (preorder (cdr l) (cons (car l) stack)))
    )
)



(write(preorder (rev '(+ * 2 4 - 5 * 2 2)) '()))