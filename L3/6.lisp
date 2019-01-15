(defun maxi(x)
    (cond
        ((numberp x) x)
        ((atom x) -999999)
        (t (apply 'max (mapcar 'maxi x)))
    )
)

(write(maxi '(1 3 43 54 (12 (332 54 (54 32 54) 32 65) 43 58) 3)))