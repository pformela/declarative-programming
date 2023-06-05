#lang scheme

; a
(define (append l m)
  (cond ((null? l) m)
        ((null? m) l)
        (else (foldr (lambda (prev acc) (cons prev acc)) m l))))

(define my-list1 (list 1 2 3))
(define my-list2 (list 4 5 6))

(displayln (append my-list1 my-list2))

; b
(define (nth n x l)
  (cond ((null? l) '())
        ((= n 1) (cons x (nth (- n 1) x (cdr l))))
        (else (cons (car l) (nth (- n 1) x (cdr l))))
      ))

(displayln (nth 3 7 my-list1))