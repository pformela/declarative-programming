#lang scheme

(define my-list1 (list 1 2 3))
(define my-list2 (list 4 5 6))
(define my-list3 (list 1 2 3 4 5 6))
(define my-list4 (list 1 2 2 3 4 3 5 6 3))

; a
(define (append l m)
  (if (null? l)
      m
      (cons (car l) (append (cdr l) m))))

(display (append my-list1 my-list2))

; b
(define (last l)
  (cond ((null? (cdr l))
         (car l))
        (else (last (cdr l)))))

(newline)

(last my-list1)
(last my-list2)

; c
(define (reverse l)
  (define (reverse-helper l acc)
    (if (null? l)
        acc
        (reverse-helper (cdr l) (cons (car l) acc))))
  (reverse-helper l '()))

(newline)
(reverse my-list3)

; d
(define (delete x l)
  (cond ((null? l) '())
        ((= (car l) x) (delete x (cdr l)))
        (else (cons (car l) (delete x (cdr l))))))

(newline)
(delete 3 my-list4)

; e
(define (pairing l1 l2)
  (define (pairing-helper lst1 lst2 acc)
    (cond ((null? lst1) acc)
          (else (cons (cons (car lst1) (car lst2)) (pairing-helper (cdr lst1) (cdr lst2) acc)))))
  (cond ((= (length l1) (length l2)) (pairing-helper l1 l2 '()))
        (else (display "List sizes are not equal"))))

(pairing my-list1 my-list2)
(pairing my-list1 my-list4)

; f
(define (split x l)
  (if (null? l)
      (list '() '())
      (let ((smaller (filter (lambda (e) (< e x)) l))
            (greater (filter (lambda (e) (> e x)) l)))
        (list smaller greater))))

(newline)
(split 3 my-list4)