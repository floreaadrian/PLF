;d)Write a function to produce the list of pairs (atom n),
;  where atom appears for n times in the
;  parameter list. Example:
;      (A B A B A C A) --> ((A 4) (B 2) (C 1)).

;
;            { nil, l=[]
; del(l e) = | del(t(l),e),h(l)=e
;            | h(t)Udel(t(l),e), otherwise
;            {
;

(defun del(l e)
    (COND
    ((null l) nil)
    ((equal (car l)e) (del (cdr l) e))
    (T (cons (car l)(del (cdr l) e)))
    )
)
;
;               { 0, l=[]
;atomFrv(l e) = | 1+atomFrv(h(l),e),h(l)=e
;               { atomFrv(h(l),e) otherwise
;
(defun atomFrv(l e)
    (COND
    ((null l) 0)
    ((equal (car l)e) (+(atomFrv (cdr l) e)1))
    (T (atomFrv (cdr l) e))
    )
)
;            {
;            | nil, l = []
; frecv(l) = | atom h(l), (h(l) U atomFrv l (h(l))) U frecv(del l h(l))
;            {
(defun frecv(l)
    (COND
    ((null l) nil)
    ((atom (car l)) (cons 
                (cons (car l) (list (atomFrv l (car l))))
                (frecv (del l (car l)))))
    )
)

(write(frecv '(A B A B A C A)))