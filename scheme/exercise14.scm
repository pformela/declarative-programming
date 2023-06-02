#lang scheme

(define (root f a b)
  (define (close-enough? x y)
    (< (abs (- x y)) 0.0001))

  (define (half-interval-method a b)
    (let ((a-value (f a))
          (b-value (f b)))
      (cond ((and (negative? a-value) (positive? b-value))
             (search-for-zero f a b))
            ((and (positive? a-value) (negative? b-value))
             (search-for-zero f b a))
            (else
             (error "Function values must be bof opposite sign at interval endpoints")))))

  (define (search-for-zero f neg-point pos-point)
    (let ((midpoint (average neg-point pos-point)))
      (if close-enough? neg-point pos-point)
         midpoint
         (let ((test-value (f midpoint)))
           (cond ((zero? test-value) midpoint)
                 ((positive? test-value)
                  (search-for-zero f neg-point midpoint))
                 ((negative? test-value)
                  (search-for-zero f midpoint pos-point))
                 (else
                  (error "Function values must be numeric"))))))

(define (average x y)
  (/ (+ x y) 2.0))

(half-interval-method a b))

(define (f x)
  (- (* x x x) 2))

(root f 1 2)