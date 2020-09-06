(defun my-length (list)
  (if list
      (1+ (my-length (cdr list)))
      0))


;; if and Similar to it.
(if (= (+ 1 2) 3)
    'yup
    'nope)

(if '()
    'the-list-has-stuff-in-it
    'the-list-is-empty)

;; when macro
(defvar *number-is-odd* nil)
(when (oddp 5)
  (setf *number-is-odd* t)
  'odd-number)

;; unless macro
(unless (oddp 4)
  (setf *number-is-odd* nil)
  'even-number)

;; cond !
(defvar *arch-enemy* nil)
(defun pudding-eater (person)
  (cond ((eq person 'henry)
         (setf *arch-enemy* 'stupid-lisp-alien)
         '(curse you lisp alien - you ate my pudding))
        ((eq person 'johnny)
         (setf *arch-enemy* 'useless-old-johnny)
         '(i hope you choked on my pudding johnny))
        (t
         '(why you eat my pudding stranger ?))))
         
;; case case
(defun pudding-eater (person)
  (case person
    ((henry)
     (setf *arch-enemy* 'stupid-lisp-alien)
     '(curse you lisp alien - you ate my pudding))
    ((johnny)
     (setf *arch-enemy* 'useless-old-johnny)
     '(i hope you choked on my pudding johnny))
    (otherwise
     '(why you eat my pudding stranger ?))))
           
     
     
              
