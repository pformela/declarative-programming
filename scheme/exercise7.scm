#lang scheme

; recursion
(define fibonacci
  (lambda (n)
    (if (<= n 2)
        1
        (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))

(fibonacci 4)
(fibonacci 9)

; recursion with accumulation

(define (fibonacci2 n)
  (define (fibonacci_helper n a b)
    (if (= n 0)
        a
        (fibonacci_helper (- n 1) b (+ a b))))
  (fibonacci_helper n 0 1))

(newline)
(fibonacci 4)
(fibonacci 9)