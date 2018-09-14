#lang racket

(require rackunit/text-ui)
(require rackunit "../solutions/1_12.rkt")

(define tests
  (test-suite
    "Test for exercise 1_12"
    (test-case
      "Triangle deep 5"
      (check-equal? (solution 0 0) 0)
      (check-equal? (solution 0 1) 0)
      (check-equal? (solution 0 2) 0)
      (check-equal? (solution 1 0) 0)
      (check-equal? (solution 1 1) 1)
      (check-equal? (solution 1 2) 0)
      (check-equal? (solution 2 0) 0)
      (check-equal? (solution 2 1) 1)
      (check-equal? (solution 2 2) 1)
      (check-equal? (solution 2 3) 0)
      (check-equal? (solution 3 0) 0)
      (check-equal? (solution 3 1) 1)
      (check-equal? (solution 3 2) 2)
      (check-equal? (solution 3 3) 1)
      (check-equal? (solution 3 4) 0)
      (check-equal? (solution 4 0) 0)
      (check-equal? (solution 4 1) 1)
      (check-equal? (solution 4 2) 3)
      (check-equal? (solution 4 3) 3)
      (check-equal? (solution 4 4) 1)
      (check-equal? (solution 4 0) 0)
      (check-equal? (solution 5 0) 0)
      (check-equal? (solution 5 1) 1)
      (check-equal? (solution 5 2) 4)
      (check-equal? (solution 5 3) 6)
      (check-equal? (solution 5 4) 4)
      (check-equal? (solution 5 5) 1)
      (check-equal? (solution 5 6) 0)
    )))

(run-tests tests 'verbose)
