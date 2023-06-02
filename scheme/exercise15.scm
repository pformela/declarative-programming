#lang scheme

(define (comb f g)
  (lambda (x) (f (g x))))

(define (square n)
  (* n n))

(define (double n)
  (+ n n))

((comb square double) 5)
; first we apply double to the value, and then we square it - (5 + 5) ^ 2