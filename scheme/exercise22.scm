#lang scheme

; a
(define (prod l)
  (foldr * 1 l))

(prod (list 1 2 3 4))

; b
(define (length l)
  (define (add prev acc) (+ acc 1))
  (foldr add 0 l))

(length (list 1 2 3 4))
(length (list 1 2 3 ))
(length (list 1 2))

; c
(define (delete x l)
  (define (remove-element prev acc)
    (if (= prev x)
        acc
        (append acc (list prev))))
  (foldl remove-element '() l))

(delete 4 (list 1 2 4 4 5 6 7 4 4 8 9))

; d
(define (reverse l)
  (define (fold-reverse prev acc)
    (cons prev acc))
  (foldl fold-reverse '() l))

(reverse (list 1 2 3 4 5 6))

; e
(define (map f l)
  (define (fold-map prev acc)
    (cons (f prev) acc))
  (foldr fold-map '() l))

(map (lambda (x) (+ x 1)) (list 1 2 3 4 5))

; f
(define (filter pred l)
  (define (fold-filter prev acc)
    (if (pred prev)
        (cons prev acc)
        acc))
  (foldr fold-filter '() l))

(filter (lambda (x) (not (equal? x 4))) (list 1 2 4 4 5 6 7 4 4 8 9))

; g
(define (forall pred l)
  (define (fold-forall prev acc)
    (and (pred prev) acc))
  (foldl fold-forall #t l))

(forall (lambda (x) (equal? (modulo x 2) 0)) (list 2 4 4 6 4 4 8))

(define iseven?
  (lambda (x) (equal? (modulo x 2) 0)))
















