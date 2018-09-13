#lang racket
#| Solution for exercise 1_11. |#

(provide solution-recursive)
(provide solution-iterative)

(define (solution-recursive x)
  (if (< x 3)
    x
    (+ (solution-recursive (- x 1))
       (solution-recursive (- x 2))
       (solution-recursive (- x 3)))))

(define (solution-iterative x)
  (define (func-iter current-num num1 num2 num3)
    (if (> current-num x)
        num1
        (func-iter (+ current-num 1)
                   (+ num1 num2 num3)
                   num1
                   num2)))
  (if (< x 3)
      x
      (func-iter 3 2 1 0)))
