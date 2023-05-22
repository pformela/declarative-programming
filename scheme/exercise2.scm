#lang scheme

(define (new.< x y)
  (< x y))

(new.< 1 2)

(define (new.> x y)
  (< y x))

(new.> 1 2)

(define (new.<= x y)
  (not (new.> x y)))

(newline)
(new.<= 1 2)
(new.<= 2 2)

(define (new.>= x y)
  (not (new.< x y)))

(newline)
(new.>= 3 2)
(new.>= 2 2)

(define (new.= x y)
  (and (not (new.> x y)) (not (new.< x y))))

(newline)
(new.= 1 1)
(new.= 1 2)
(new.= 2 1)

(define (new.<> x y)
  (not (new.= x y)))

(newline)
(new.<> 1 2)
(new.<> 2 1)
(new.<> 1 1)