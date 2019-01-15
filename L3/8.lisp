;8. Write a function to determine the number of nodes on the level k from a n-tree represented as follows:
;(root list_nodes_subtree1 ... list_nodes_subtreen)
;   Eg: tree is (a (b (c)) (d) (e (f))) and k=1 => 3 nodes

(defun nNodesAtLvl(l i lvl)
    (cond
    ((AND (listp l) (= i lvl)) 1)
    ((atom l) 0)
    (t (apply '+ (mapcar #'(lambda (el) (nNodesAtLvl el (+ i 1) lvl)) l)))
    )
)

(write(nNodesAtLvl '(a (b e (c)) (d) (e (f))) 1 2))