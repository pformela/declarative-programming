#lang scheme

(define (product term next a b)
  (if (> a b)
      1
      (* (term a) (product term next (next a) b))))

(define (silnia n)
  (define (term k)
    k)

  (define (next k)
    (+ k 1))

  (product term next 1 n))

(silnia 5)

(define (approximate-p n)
  (define (term k)
    (if (even? k)
        (* k k)
        (* k k)))
  
  (define (next k)
    (if (even? k)
        (+ k 2)
        (+ k 2)))

  (/ (* 2 (product term next 2 n))
     (product term next 3 n)))

(approximate-p 6)

