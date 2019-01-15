;3. Define a function to tests the membership of a node in a n-tree represented as (root
;   list_of_nodes_subtree1 ... list_of_nodes_subtreen)
;   Eg. tree is (a (b (c)) (d) (E (f))) and the node is "b" => true


(defun occorunceMember(l e)
    (cond
    ((AND (atom l) (equal l e)) 1)
    ((atom l) 0)
    (t (apply '+ (mapcar (lambda (el) (occorunceMember el e)) l)))
    )
)

(defun checkMember(l e)
    (cond
    ((null l) nil)
    ((> (occorunceMember l e) 0) 1)
    (t 1)
    )
)
(write(checkMember '(A (B (C)) (D) (E (F))) 'B))