#lang scheme

;a 
(define (append l m)
  (cond ((null? l) m)
        ((null? m) l)
        (else (foldr (lambda (prev acc)
                       (cons prev acc)) m l))))

(append '(1 2 3) '(4 5 6))

;b
(define (delete x l)
  (foldr (lambda (prev acc)
           (if (= prev x)
               acc
               (cons prev acc))) '() l))

(displayln (delete 2 '(1 2 3 4 5 2 7 2 2 8)))