#lang scheme

; recursion

(define (exp b e)
  (cond ((= e 0) 1)
        ((= e 1) b)
        (else (let ((half (exp b (quotient e 2))))
              (if (even? e)
                  (* half half)
                  (* b half half))))))

(exp 2 6)

; recursion with accumulation
(define (exp2 b e)
  (define (exp_helper b e acc)
     (if (<= e 0)
         acc
         (exp_helper b (- e 1) (* acc b))))
  (cond ((= e 0) 1)
        ((= e 1) b)
        (else (exp_helper b e 1))))

(exp2 2 6)

