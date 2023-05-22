#lang scheme

; a)

(define factorial
  (lambda (n)
    (if (= n 0)
        1
        (* n (factorial (- n 1))))))

(factorial 5)
(factorial 6)

; b)
(define (factorial_helper n i acc)
  (if (< n i)
      acc
      (factorial_helper n (+ i 1) (* acc i))))

(define (factorial2 n)
  (factorial_helper n 1 1))

(newline)
(factorial2 5)
(factorial2 6)