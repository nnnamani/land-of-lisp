;; symbols
:foo
'ice9
'my-killer-app27
'--<<==>>--

;; symbol は大文字で評価される
(eq 'fooo 'foOo)

;; 数値
(expt 53 53)
(/ 4 6)
(/ 4.0 6)


;; code-mode and data-mode
(quote this-is-code-mode)
'this-is-data-mode

;; cons!
(cons 'chicken 'cat)
'(checkin . cat)

