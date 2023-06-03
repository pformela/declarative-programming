#lang scheme

(define x (mcons 'a (mcons 'b '())))
(define z1 (mcons x x))

(define z2 (mcons (mcons 'a (mcons 'b '()))
                    (mcons (mcons 'a (mcons 'b '())) '())))

(display z1)
(newline)
(display z2)
(newline)

(set-mcar! (mcar z1) 'g)
(set-mcar! (mcar z2) 'g)

(display z1)
(newline)
(display z2)

; x={a b}
; z1={{a b} a b}
; z2={{a b} {a b}}
; z1={{g b} g b}
; z2={{g b} {a b}}