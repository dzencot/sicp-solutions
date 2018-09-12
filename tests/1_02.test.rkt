#lang racket

(require rackunit/text-ui)
(require rackunit "../solutions/1_02.rkt")

(define tests
  (test-suite
    "1.02 test"
    (check-equal? (solution) (/ -37 150))))

(run-tests tests 'verbose)

