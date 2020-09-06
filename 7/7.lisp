(setf *print-circle* t)

(defparameter foo (list 1 2 3))


;; alist
(defparameter *drink-order* '((bill . double-espresso)
                              (lisa . small-drip-coffee)
                              (john . medium-latte)))

(push '(lisa . large-mocha-with-whipped-cream) *drink-order*)

(assoc 'lisa *drink-order*)

;; tree
(defparameter *house* '((walls
                         (mortar (cement) (water) (sand))
                         (bricks))
                        (windows
                         (glass)
                         (frame)
                         (curtains))
                        (roof
                         (shingles)
                         (chimney))))

(with-open-file (my-stream
                 "testfile.txt"
                 :direction :output
                 :if-exists :supersede)
  (princ "Hello File!" my-stream))
