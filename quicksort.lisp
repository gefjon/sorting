(in-package :sorting)

(defun quicksort (list &optional (operator #'<))
  (when list
    (let ((pivot (car list))
          (elems (cdr list)))
      (iterate (for el in elems)
               (if (funcall operator el pivot)
                   (collect el into lesser at beginning)
                   (collect el into greater at beginning))
               (finally (return (append (quicksort lesser operator)
                                        (list pivot)
                                        (quicksort greater operator))))))))
