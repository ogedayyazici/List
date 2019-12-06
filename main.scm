(define lst '())

(define (append-list proc n)
  (let loop ((n n))
    (unless (zero? n)
      (define val(proc))
      (begin (set! lst (append lst (list val)))   
      (loop (- n 1))))
    )
)

(define (removeN lst n)
  (let recur ((i 1)
              (rest lst))
    (cond ((null? rest) '())
          ((= i n) (recur 1 (cdr rest)))
          (else (cons (car rest) (recur (+ i 1) (cdr rest)))))))

(display "Define the length of the list:")
(define val(read))
(display "Add elements to the list:")
(newline)
(append-list read val)
(print lst)
(display "Choose the list element to be removed:")
(define val2(read))
(removeN lst val2)

