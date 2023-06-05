#lang scheme

; a
(define (exists pred l)
  (if (null? l)
      #f
      (or (pred (car l)) (exists pred (cdr l)))))

(displayln (exists (lambda (x) (= (modulo x 2) 0)) '(1 2 5 7 5)))

(define (fold! f e l)
  (if (null? l) e (f (car l) (fold! f e (cdr l)))))

(define (filter pred l)
  (fold! (lambda (x y) (or x y)) #f (foldr (lambda (prev acc) (cons (pred prev) acc)) '() l)))

(displayln (filter (lambda (x) (= (modulo x 2) 0)) '(1 3 5 7 5)))

; b
(define (sum g a)
  (if (<= a 0) (g a)
      (+ (g a) (sum g (- a 1)))))

(define (square x)
  (* x x))

(sum square 4)
(sum (lambda (x) (+ x 2)) 3)