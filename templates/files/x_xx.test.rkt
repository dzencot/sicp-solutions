#lang racket

(require rackunit/text-ui)
(require rackunit "../solutions/{{ exc }}.rkt")

(define tests
  (test-suite
    "Test for exercise {{ exc }}"
    (check-equal? solution 1 "")
    (test-case
      "Case here"
      (check-not-equal? solution 0 ""))))

(run-tests tests 'verbose)
