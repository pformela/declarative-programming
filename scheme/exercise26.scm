#lang scheme

(define m 1)

(define (p m)
  (pp 5))

(define (pp x)
  (+ x m))

(p 11) ; p=11 -> pp(x=5, m=1) -> 6

(define n 1)

(define (q n)
  (define (qq x)
    (+ x n))
  (qq 5))

(q 11) ; n=11 -> qq(x=5, n=11) -> 16