#lang scheme

(define (odd? n)
  (cond
    [(< n 0) #t]
    [(= n 0) #f]
    [else (odd? (- n 2))]))

(define (even? n)
  (cond
    [(< n 0) #f]
    [(= n 0) #t]
    [else (even? (- n 2))]))

(odd? 15)
(odd? 14)

(newline)

(even? 15)
(even? 14)