#lang scheme

;a
(define (exchange x y l)
  (foldr (lambda (prev acc)
           (if (= prev x)
               (cons y acc)
               (cons prev acc))) '() l))

(displayln (exchange 2 7 '(1 2 2 3 4 5 6 7)))
(displayln (exchange 1 7 '(4 1 5 10 1)))

;b
(define (drop-while p l)
  (if (not (p (car l))) l
      (drop-while p (cdr l))))

(displayln (drop-while (lambda (x) (= (modulo x 2) 0)) '(4 6 7 8 10)))
(displayln (drop-while (lambda (x) (< x 8)) '(4 6 7 8 5 7)))