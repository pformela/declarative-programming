#lang scheme

(define (f g) (g 2))

(define (square x)
  (* x x))

; a
(f square) ;4

; b
(f (lambda (z) (+ z (* 3 z)))) ;8

; c
; (f f) ; error, function passed as an argument expects to be given a numeric value