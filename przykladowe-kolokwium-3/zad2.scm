#lang scheme

; a
(define (filter pred l)
  (foldr (lambda (prev acc)
           (if (pred prev)
               (cons prev acc)
               acc)) '() l))

(filter (lambda (x) (= (modulo x 2) 0)) '(4 3 5 6))
(filter list? '((4 3 ) 7 (1 2 3) 10))

; b
(define (inorder l)
  (if (null? l)
      '()
      (append (inorder (cadr l))
              (list (car l))
              (inorder (caddr l)))))

(inorder '(4
           (3 () ())
           (2 (9 () ()) (7 () ()))))