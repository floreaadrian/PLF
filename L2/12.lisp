(defun preorder(x)
    (cond
        ((null x) nil)
        ((atom x) (cons x nil))
        (T (apply 'append (mapcar 'preorder x)))
    )
)

(write(preorder '(A (B) (C (D) (E)))))