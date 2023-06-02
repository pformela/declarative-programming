#lang scheme

(define (make-node value left right)
  (list value left right))

(define (value tree)
  (car tree))

(define (left-subtree tree)
  (cadr tree))

(define (right-subtree tree)
  (caddr tree))

(define (empty-tree? tree)
  (null? tree))

(define (memberTree? element tree)
  (cond ((empty-tree? tree) #f)
        ((= (value tree) element) #t)
        (else (or (memberTree? element (left-subtree tree)) (memberTree? element (right-subtree tree))))))

;(define (inorder tree))

;(define (mapTree tree))

(define tree (make-node 1 (make-node 2 (make-node 4 '() '()) (make-node 5 '() '())) (make-node 3 (make-node 6 '() '()) (make-node 7 '() '()))))

(memberTree? 3 tree)
(memberTree? 9 tree)

(define (sumTree tree)
  (cond ((empty-tree? tree) 0)
        (else (+ (value tree) (sumTree (left-subtree tree)) (sumTree (right-subtree tree))))))

(sumTree tree)

(define (mapTree f tree)
  (cond ((empty-tree? tree) '())
        (else (make-node (f (value tree)) (mapTree f (left-subtree tree)) (mapTree f (right-subtree tree))))))

(define (double x)
  (+ x x))

(define (increment x)
  (+ x 1))

(sumTree (mapTree increment tree))

(define (inorder tree)
  (cond ((empty-tree? tree) '())
        (else (append (inorder (left-subtree tree))
                      (list (value tree))
                      (inorder (right-subtree tree))))))

(display tree)
(newline)
(display (inorder tree))













