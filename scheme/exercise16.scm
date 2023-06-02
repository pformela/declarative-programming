#lang scheme

(define (iter f n)  
  (define (identity x) x)
  
  (define (iter-helper f n acc)
    (if (= n 0)
        acc
        (iter-helper f (- n 1) (compose f acc))))
  
  (iter-helper f n identity))

(define (square x) (* x x))
(define (increment x) (+ x 1))

(define squared-then-incremented (iter (compose increment square) 3))

(display (squared-then-incremented 2))