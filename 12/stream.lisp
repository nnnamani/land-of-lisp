;; check stream
(output-stream-p *standard-output*)

;; output to standard-output stream
(write-char #\x *standard-output*)

;; read from standard-input stream
(read-char *standard-input*)

;; writes to file.
(with-open-file (my-stream "data.txt" :direction :output)
  (print "my data" my-stream))

(let ((animal-noises '((dog . woof)
                       (cat . meow))))
  (with-open-file (my-stream "animal-noises.txt" :direction :output)
    (print animal-noises my-stream)))

;; overwrite if file exists.
(with-open-file (my-stream "data.txt"
                           :direction :output
                           :if-exists :supersede)
  (print "my data" my-stream))


;; string stream
(defparameter *foo* (make-string-output-stream))
(princ "This will go into foo. " *foo*)
(princ "This will also go into foo. " *foo*)
(get-output-stream-string *foo*)
(close *foo*)

;; jack *standard-output* stream
(with-output-to-string (*standard-output*)
  (princ "the sum of ")
  (princ 5)
  (princ " and ")
  (princ 2)
  (princ " is ")
  (princ (+ 1 5)))
