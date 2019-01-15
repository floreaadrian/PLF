(defun F(l)
(max (car l) (caddr l))
)

(SETF G 'F)
(SETQ F 10)
(write(funcall G '(8 11 2 3 7 9)))