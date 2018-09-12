#lang racket
#| Solution for exercise 1_08. |#

(require rackunit "../lib/utils.rkt")
(provide solution)

(define (solution x)
  (define (good-enough? guess prevGuess)
    (< (abs (- guess prevGuess)) 0.0001))
  (define (improve guess)
    (/ (+ (/ x (* guess guess))
          (* 2 guess))
       3))
  (define (sqrt-iter guess prevGuess)
    (if (good-enough? guess prevGuess)
      guess
      (sqrt-iter (improve guess) guess)))
  (sqrt-iter 1.0 0))

