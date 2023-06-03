#lang scheme

; a
(define (plus . args)
  (if (null? args)
      0
      (+ (car args) (apply plus (cdr args)))))

(plus 1 2 3 4 5)

; b
(define (par . args)
  (lambda (x)
    (define (func-fold prev acc)
      (cons (prev x) acc))
    (foldr func-fold '() args)))

(define (id x)
  x)

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (double x)
  (+ x x))

((par id square cube) 3)