;; wirte to standard output.
(format t "Add onion rings for only ~$ dollars more!" 1.5)

;; wirte as string.
(format nil "Add onion rings for only ~$ dollars more!" 1.5)

;; '~s' control sequence outputs string that lisp can read. like prin1.
(format t "I am printing ~s in the middle of this sentence." "foo")

;; '~a' control sequence outputs string that human can read. like princ.
(format t "I am printing ~a in the middle of this sentence." "foo")

;; '~10a' outputs string fill in spaces their left.
(format t "I am printing ~10a within ten spaces of room." "foo")

;; '~10@a' outputs string fill in spaces their right.
(format t "I am printing ~10@a within ten spaces of room." "foo")

(format t "I am pringing ~10,3a within ten (or more) spaces of room." "foo")

;; the thered param of '~a' is number of spaces.
(format t "I am printing ~,,4a in the middle of this sentence." "foo")

(format t "I am printing ~,,4,'!a in the middle of this sentence." "foo")

(format t "I am printing ~,,4,'!@a in the middle of this sentence." "foo")


(format t "The number ~d in hexadecimal is ~x" 1000 1000)

(format t "The number ~d in hexadecimal is ~b" 1000 1000)

(format t "The number ~d in hexadecimal is ~d" 1000 1000)

(format t "PI can be estimated as ~4f" 3.141593)

(format t "PI can be estimated as ~,4f" 3.141593)

(format t "PI can be estimated as ~,4f" pi)

(format t "Percentages are ~,,2f percent better than fractions" 0.77)

(format t "I wish I had ~$ dollars in my bank account." 1000000.2)

(progn (princ 22)
       (terpri)
       (princ 33))

(progn (princ 22)
       (fresh-line)
       (princ 33))

(progn (princ 22)
       (fresh-line)
       (fresh-line)
       (princ 33))


(progn (format t "this is on one line ~%")
       (format t "~%this is on another line"))

(progn (format t "this is on one line ~&")
       (format t "~&this is on another line"))

(defun random-animal ()
  (nth (random 5) '("dog" "tick" "tiger" "walrus" "kangaroo")))

(loop
   repeat 10
   do (format t "~5t~a ~5t~a ~25t~a~%"
              (random-animal)
              (random-animal)
              (random-animal)))
