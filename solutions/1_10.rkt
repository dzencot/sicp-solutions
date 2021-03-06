#lang racket
#| Solution for exercise 1_10. |#

(require rackunit "../lib/utils.rkt")

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

; (A 1 10) == 1024 2^10
; (A 2 4) == 65536
; (A 3 3) == 65536

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))
; f = 2 * n
; g = 2^n
; h = (2^n)^n (?)
; k = 5n^2
