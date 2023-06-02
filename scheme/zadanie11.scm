#lang scheme

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))

(define (sum n)
  (define (term k)
    k)
  
  (define (next m)
    (+ m 1))

  (define (combiner x y)
    (+ x y))
  
  (accumulate combiner 0 term 1 next n))

(sum 5)

(define (product n)
  (define (term k)
    k)

  (define (next m)
    (+ m 1))

  (define (combiner x y)
    (* x y))

  (accumulate combiner 1 term 1 next n))

(product 5)