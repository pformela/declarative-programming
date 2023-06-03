#lang scheme

(define (append! lst1 lst2)
  (cond ((null? lst1) lst2)
        ((null? lst2) lst1)
        (else (append! (set-cdr! lst1 (car lst2)) (cdr lst2)))))

(define x '(a b))
(define y '(c d))

(append! x y)
(append x y)

(cdr x)

