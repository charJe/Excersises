(defun sumOfTwo (a b v)
    (write a)
  (let ((hash (make-hash-table))
        (a (coerce a 'list))
        (b (coerce b 'list)))
    (mapcar #'(lambda (n)
                (setf (gethash (- v n) hash) t))
            a)
    (mapcar #'(lambda (n)
                (when (gethash n hash)
                  (return-from sumOfTwo t)))
            b)
    (return-from sumOfTwo nil))))

(write (sumOfTwo #(1 2 3) #(10 20 30 40) 42))