(defun solve(l)
    (cond
    ((AND (numberp l) (= (mod l 2) 0)) (+ l 1))
    ((numberp l) l)
    ((atom l) l)
    (t (mapcar 'solve l))
    )
)

(defun solve1(l)
    (cond
    ((null l) nil)
    ((AND (numberp (car l)) (= (mod (car l) 2) 0)) (cons (+ (car l) 1) (solve1 (cdr l))))
    ((numberp (car l)) (cons (car l) (solve1 (cdr l))))
    ((atom (car l)) (cons (car l) (solve1 (cdr l))))
    (t (cons (solve1 (car l)) (solve1 (cdr l))))
    )
)


(write(solve '(1 s 4 (2 f (7 (8)) (4 (7 8))))))