#lang racket

(require rackunit/text-ui)
(require rackunit "../solutions/example.rkt")

(define tests
  (test-suite
    "example test"
    (check-equal? (square 2) 4)))

(run-tests tests 'verbose)
