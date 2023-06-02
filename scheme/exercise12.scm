#lang scheme

(define (is-prime? n)
  (cond ((<= n 1) #f)
        ((= n 2) #t)
        ((even? n) #f)
        (else (check-divisors n 3))))

(define (check-divisors n divisor)
  (cond ((> (square divisor) n) #t)
        ((divides? divisor n) #f)
        (else (check-divisors n (+ divisor 2)))))

(define (divides? a b)
  (= (modulo b a) 0))

(define (square x)
  (* x x))


(define (filter-accumulate combiner null-value term a next b pred)
  (if (> a b)
      null-value
      (if (pred a)
          (combiner (term a) (filter-accumulate combiner null-value term (next a) next b pred))
          (filter-accumulate combiner null-value term (next a) next b pred))))

(define (sum-of-prime-squares a b)
  (define (term k)
    (* k k))

  (define (next m)
    (+ m 1))

  (filter-accumulate + 0 term a next b is-prime?))

(sum-of-prime-squares 1 9)

(define (nwd a b)
  (if (= b 0)
      a
      (nwd b (remainder a b))))


(define (natural-numbers-product i n)
  (define (next m)
    (+ m 1))

  (define (term k)
    k)

  (define (pred j)
    (= (nwd j n) 1))

  (filter-accumulate * 1 term i next n pred))

(natural-numbers-product 1 10)














