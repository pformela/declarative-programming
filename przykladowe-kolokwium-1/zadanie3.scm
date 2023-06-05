#lang scheme
(require racket/trace)

(define (alternate x) (alternate(- x)))
(define (test x y z) (if (= x y) 0 z))

(define (func)
  (if (= 1 1) 0 (alternate 3)))

(define (func2)
  (test 1 1 (alternate 3)))

(trace test)
(trace alternate)
(trace func)
(trace func2)

(define m 4)
(define (p x)
  (define (q x)
    (set! m (* x m))
    (+ m x))
  (q 2))

(trace p)

(p 3)