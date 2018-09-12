#lang racket

(define (sum-of-square x y) (+ (* x x) (* y y)))
(define (solution a b c)
  (cond ((and (< a b) (< a c)) (sum-of-square b c))
        ((and (< b c) (< b a)) (sum-of-square a c))
        (else (sum-of-square a b))))

(provide solution)
