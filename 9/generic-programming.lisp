;; maek array
(defparameter x (make-array 3))

;; The aref function gets the second element of the array.
(aref x 1)

;; Use setf and aref to set value as element of array.
(setf (aref x 1) 100)


;; Hash table
(defparameter h (make-hash-table))

;; set value from hash-table
(setf (gethash 'hoge h) "Hoge")
(setf (gethash :hoge h) "Fuga")

;; get value from hash-table
(gethash 'hoge h)
(gethash :hoge h)


;; return multiple value from function.
(defun foo ()
  (values 3 7))

;; multiple-value-bind.
(multiple-value-bind (a b) (foo)
  (* a b))

;; structures
(defstruct person
  name
  age
  waist-size
  favorite-color)

;; make structures
(defparameter *bob* (make-person :name "Bob"
                                 :age 35
                                 :waist-size 32
                                 :favorite-color "blue"))

;; make a structure directory.
(defparameter *that-guy* #S(person :name "That" :age 35 :waist-size 32 :favorite-color "blue"))

;; sequence
(reduce #'+ '(3 4 6 5 2))

(defun my-reduce (fn lst)
  (if (cdr lst)
      (funcall fn (car lst) (my-reduce fn (cdr lst)))
      (car lst)))

(reduce (lambda (best item)
          (if (and (evenp item) (> item best))
              item
              best))
        '(7 4 6 5 2)
        :initial-value 0)

