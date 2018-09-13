#lang racket

(require rackunit/text-ui)
(require rackunit "../solutions/1_11.rkt")

(define tests
  (test-suite
    "Test for exercise 1_11"
    (check-true (= (solution-recursive 2) (solution-iterative 2) 2))
    (check-true (= (solution-recursive 4) (solution-iterative 4) 6))
    (check-true (= (solution-recursive 27) (solution-iterative 27) 7256527))
    ))

(run-tests tests 'verbose)
