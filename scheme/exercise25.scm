#lang scheme

(define (matrix-mult A B)
  (list (list (+ (* (car (car A)) (car (car B))) (* (cadr (car A)) (car (cadr B)))) (+ (* (car (car A)) (cadr (car B))) (* (cadr (car A)) (cadr (cadr B)))))
        (list (+ (* (car (cadr A)) (car (car B))) (* (cadr (cadr A)) (car (cadr B)))) (+ (* (car (cadr A)) (cadr (car B))) (* (cadr (cadr A)) (cadr (cadr B)))))))

(define (matrix-power A n)
  (cond ((= n 0) '( (1 0) (0 1) ))
        ((= n 1) A)
        ((even? n) (matrix-power (matrix-mult A A) (/ n 2)))
        (else (matrix-mult A (matrix-power A (- n 1))))))

(define (fibonacci n)
  (let ((fib-matrix (list (list 1 1) (list 1 0) )))
    (let ((result-matrix (matrix-power fib-matrix (- n 1))))
      (car (car result-matrix)))))

; a11 (car (car matrix))
; a12 (cadr (car matrix))
; a21 (car (cadr matrix))
; a22 (cadr (cadr matrix))

(display (fibonacci 10))