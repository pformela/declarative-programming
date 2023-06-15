#lang scheme

(define x 3)
(define (p b)
  (define (pp x)
    (begin (+ x b)
           (set! x (* 3 b))
           b))
  (pp 2))

(p 2)