#lang scheme

;(define (make-complex real imaginary)
;  (cons real imaginary))

(define (real-part complex)
  (car complex))

(define (imaginary-part complex)
  (cdr complex))

;(define (add-complex c1 c2)
;  (make-complex (+ (real-part c1) (real-part c2))
;               (+ (imaginary-part c1) (imaginary-part c2))))

;(define (sub-complex c1 c2)
;  (make-complex (- (real-part c1) (real-part c2))
;                (- (imaginary-part c1) (imaginary-part c2))))

;(define (mul-complex c1 c2)
;  (make-complex (- (* (real-part c1) (real-part c2))
;                   (* (imaginary-part c1) (imaginary-part c2)))
;                (+ (* (real-part c1) (imaginary-part c2))
;                   (* (imaginary-part c1) (real-part c2)))))

(define (make-complex real imaginary)
  (let ((complex (cons real imaginary)))

    (define (add-complex other)
      (make-complex (+ (real-part complex) (real-part other))
                    (+ (imaginary-part complex) (imaginary-part other))))

    (define (sub-complex other)
      (make-complex (- (real-part complex) (real-part other))
                    (- (imaginary-part complex) (imaginary-part other))))

    (define (mul-complex other)
      (make-complex (- (* (real-part complex) (real-part other))
                       (* (imaginary-part complex) (imaginary-part other)))
                    (+ (* (real-part complex) (imaginary-part other))
                       (* (imaginary-part complex) (real-part other)))))

    (define (display-complex)
      (display (real-part complex))
      (display " + ")
      (display (imaginary-part complex))
      (display "i"))

    (lambda (message . args)
      (case message
        ((add-complex) (apply add-complex args))
        ((sub-complex) (apply sub-complex args))
        ((mul-complex) (apply display-complex args))
        (else (error "Unknown message"))))))

(define c1 (make-complex 3 4))
(define c2 (make-complex 1 2))

;; Use object methods for arithmetic operations
(define c3 (c1 'add-complex c2))
(define c4 (c1 'sub-complex c2))
(define c5 (c1 'mul-complex c2))

;; Display complex numbers
(c1 'display-complex)
(display ", ")
(c2 'display-complex)
(display ", ")
(c3 'display-complex)
(display ", ")
(c4 'display-complex)
(display ", ")
(c5 'display-complex)

