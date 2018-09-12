#lang racket
#| Solution for exercise 1.07. |#

(require rackunit "../lib/utils.rkt")
(provide solution)

(define (solution x)
  (define (average x y)
    (/ (+ x y) 2))
  (define (good-enough? guess prevGuess)
    (< (abs (- guess prevGuess)) 0.1))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess prevGuess)
    (if (good-enough? guess prevGuess)
      guess
      (sqrt-iter (improve guess) guess)))
  (sqrt-iter 1.0 0))

