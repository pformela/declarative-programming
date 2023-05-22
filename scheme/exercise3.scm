#lang scheme

(define (absolute x)
  (if (< x 0)
      (- x)
      x))

(define (nwd a b)
  (cond ((= b 0) (absolute a))
        (nwd b (modulo a b))))

(nwd 60 48)