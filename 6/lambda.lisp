(defun half (n)
  (/ n 2))

(mapcar (lambda (n) (/ n 2)) '(2 4 6))

(defparameter name-of-function nil)
(setf name-of-function (lambda (n) (/ n 2)))
