#lang scheme

(define (queue)
  (let ((my-queue '()))

    (define (add element)
      (set! my-queue (append my-queue (list element))))

    (define (pop)
      (if (null? my-queue)
          (displayln "Queue is empty")
          (begin
            (displayln (car my-queue))
            (set! my-queue (cdr my-queue)))))
    
    (define (peek)
      (if (null? my-queue)
          (displayln "Queue is empty")
          (displayln (car my-queue))))

    (define (print-queue)
      (displayln my-queue))

    (define (dispatch msg)
      (cond ((eq? msg 'add) add)
            ((eq? msg 'pop) (pop))
            ((eq? msg 'peek) (peek))
            ((eq? msg 'print) (print-queue))
            (else ((lambda (e) (displayln "Unknown message"))))))
    
    dispatch))

(define q (queue))
((q 'add) 4)
((q 'add) 5)
((q 'add) 6)
(q 'print)
(q 'peek)
(q 'pop)
(q 'print)
(q 'peek)
(q 'pop)
(q 'print)
(q 'peek)
(q 'pop)
(q 'print)
(q 'peek)
(q 'pop)

