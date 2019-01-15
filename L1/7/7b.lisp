;b) Write a function to determine the successor of a number represented digit by 
;digit as a list, without transforming the representation of 
;the number from list to number. Example: (1 9 3 5 9 9) --> (1 9 3 6 0 0)
;
;                  { nill, l=[] and crry =0
; addOne(l crry) = | 1, l=[] and crry =1
;                  { (crry+h(l))%10 U addOne(l,(crry+h(l))/10), otherwise
;

(defun rev (l)
           (cond
             ((null l) '())
             (T (append (rev (cdr l)) (list (car l)))))) 

(defun addOne(l crry)
    (cond
    ((AND (null l) (= crry 0)) nil)
    ((AND (null l) (= crry 1)) (list 1))
    (T (cons (mod (+(car l)crry) 10) (addOne (cdr l) (floor (+ (car l) crry) 10))))
    )
)

(write(rev (addOne (rev '(1 9 3 5 9 9)) 1)))