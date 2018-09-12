#lang racket

(require rackunit/text-ui)
(require rackunit "../solutions/1_07.rkt")

(define tests
  (test-suite
    "Test for exercise 1.07"
    (check-true (< (abs (- (solution 4) (sqrt 4))) 0.001))
    (check-true (< (abs (- (solution 9999999) (sqrt 9999999))) 0.001))
    (check-true (< (abs (- (solution 121) (sqrt 121))) 0.001))
    ))

(run-tests tests 'verbose)
