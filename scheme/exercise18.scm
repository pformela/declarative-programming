#lang scheme

(define (square x)
    (* x x))

; a
(define (square-list l)
  (if (null? l)
      '()
      (cons (square (car l)) (square-list (cdr l)))))

(square-list (list 1 2 3 4))

; b
(define (mapf f l)
  (if (null? l)
      '()
      (cons (f (car l)) (mapf f (cdr l)))))

(define (func x)
  (+ x 2))

(mapf func (list 1 3 5 7 9))

; c
(define (filter pred l)
  (cond ((null? l) '())
        ((pred (car l)) (cons (car l) (filter pred (cdr l))))
        (else (filter pred (cdr l)))))

(define (iseven? x)
  (if (= (modulo x 2) 1)
      #f
      #t))

(newline)
(filter iseven? (list 1 2 3 4 5 6))