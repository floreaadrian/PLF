;10. Define a function that replaces one node with another one in a n-tree represented as: root
;   list_of_nodes_subtree1... list_of_nodes_subtreen)
;   Eg: tree is (a (b (c)) (d) (e (f))) and node 'b' will be replace with node 'g' 
;   => tree (a (g (c)) (d) (e (f)))

(defun repl(l e x)
    (cond
    ((AND (atom l) (equal l e)) x)
    ((atom l) l)
    (t (mapcar #'(lambda (el) (repl el e x)) l))
    )
)

(write(repl '(a (b (c)) (d) (e (f))) 'b 'g))