#lang scheme

; a
(define (make-konto balance)
  (define (withdraw amount)
    (cond ((> amount balance) (display "Not enough fund to withdraw"))
          ((<= amount 0) (display "Invalid withdraw amount"))
          (else (set! balance (- balance amount)))))

  (define (deposit amount)
    (cond ((<= amount 0) (display "Invalid deposit amount"))
          (else (set! balance (+ balance amount)))))

  (define (print-balance)
    (newline)
    (display "Current account balance: ")
    (display balance))

  (define (dispatch message)
    (cond ((eq? message 'withdraw) withdraw)
          ((eq? message 'deposit) deposit)
          ((eq? message 'balance) (print-balance))
          (else (display "Unknown message"))))
  
  dispatch)

; b
(define k1 (make-konto 100))
((k1 'withdraw) 40)
(k1 'balance)
((k1 'deposit) 10)
(k1 'balance)

; c
(define (make-konto2 balance password)
  (define (withdraw amount)
    (cond ((> amount balance) (display "Not enough fund to withdraw"))
          ((<= amount 0) (display "Invalid withdraw amount"))
          (else (begin
                  (newline)
                  (set! balance (- balance amount))
                  (display "Withdrawn: ")
                  (display amount)
                  (newline)))))

  (define (deposit amount)
    (cond ((<= amount 0) (display "Invalid deposit amount"))
          (else (begin
                  (newline)
                  (set! balance (+ balance amount))
                  (display "Deposited: ")
                  (display amount)
                  (newline)))))

  (define (print-balance)
        (begin (newline)
               (display "Current account balance: ")
               (display balance)
               (newline)))

  (define (dispatch p message)
    (cond ((not (eq? p password)) ((lambda args
                                    (begin
                                      (newline)
                                      (display "Wrong password")
                                      (newline)))))
          ((eq? message 'withdraw) withdraw)
          ((eq? message 'deposit) deposit)
          ((eq? message 'balance) (print-balance))
          (else ((lambda args (display "Unknown message"))))))
  
  dispatch)

(define k2 (make-konto2 100 'password))
((k2 'password 'withdraw) 40)
(k2 'passord 'balance)
(k2 'password 'ballance)