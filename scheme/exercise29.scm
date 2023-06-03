#lang scheme

(define (counting-version f)
  (let ((count 0))

  (define (dispatch arg)
    (cond ((eq? arg 'how-often) (begin
                                  (newline)
                                  (display count)))
          ((eq? arg 'reset) (begin
                              (set! count 0)
                              (newline)
                              (display count)))
          ((number? arg) (begin
                           (newline)
                           (display (f arg))
                           (set! count (+ count 1))))
          (else (display "Unknown argument"))))
  dispatch))

(define (square x)
  (* x x))

(define sq (counting-version square))

(sq 5)
(sq 7)
(sq 'how-often)
(sq 'reset)
(sq 'how-often)