#lang scheme

(define (delete x l)
  (cond ((= x (car l)) (cdr l))
        ((null? l) '())
        (else (cons (car l) (delete x (cdr l))))))

(define (count x l)
  (foldr (lambda (prev acc)
           (if (= prev x)
               (+ acc 1)
               acc)) 0 l))

(delete 3 '(1 2 3 3 4 5 3 6 7))
(count 3 '(1 2 3 3 4 5 3 6 7))