#lang racket

(require rackunit/text-ui)
(require rackunit "../solutions/1_08.rkt")

(define tests
  (test-suite
    "Test for exercise 1_08"
    (check-true (< (abs (- (solution 27) 3)) 0.001))
    (check-true (< (abs (- (solution 2654) 13.845234190264)) 0.001))
    (check-true (< (abs (- (solution 999999) 99.999966666656)) 0.001))
    ))

(run-tests tests 'verbose)
