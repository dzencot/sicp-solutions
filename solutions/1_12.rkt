#lang racket
#| Solution for exercise 1_12. |#

(provide solution)

(define (solution h w)
  (cond ((or (= w 0) (= h 0)) 0)
        ((and (= w h 1) 1))
        (else (+ (solution (- h 1) (- w 1))
                 (solution (- h 1) w)))))
