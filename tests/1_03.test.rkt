#lang racket

(require rackunit/text-ui)
(require rackunit "../solutions/1_03.rkt")

(define tests
  (test-suite
    "1.03 test"
    (check-equal? (solution 1 2 3) 13)
    (check-equal? (solution 3 5 1) 34)
    (check-equal? (solution 1 -1 10) 101)
    (check-equal? (solution 14 -2 1) 197)
    (check-equal? (solution -1 -3 -2) 5)))

(run-tests tests 'verbose)

