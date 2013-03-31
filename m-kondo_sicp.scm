#!/usr/local/bin/gosh

(define (p str)
 (print str))


;; 1.1.2
(p "# 1.1.2")
(p "(define x 1)")
(define x 1)
(p x)
(p "(define y 2)")
(define y 2)
(p y)

;; 1.1.3
(p "# 1.1.3")
(p "(+ 1 2)")
(p (+ 1 2))
(p "(+ (+ 1 2) (+ 3 4))")
(p "(+ 3 7)")
(p (+ (+ 1 2) (+ 3 4)))



;; 1.1.4
(p "# 1.1.4")
(p "(define (square x) (* x x))")
(define (square x) (* x x))
(p (square 2))

(p "(define (sum-of-squares x y) (+ (square x) (square y)))")
(define (sum-of-squares x y) (+ (square x) (square y)))
(p (sum-of-squares 1 2))

(p "(define (f a sum-of-squares (+ a 1) (* a 2)))")
(define (f a) (sum-of-squares (+ a 1) (* a 2)))
(p (f 1))

;; 1.1.5
(p "# 1.1.5")
(p "(define a 5)")
(define a 5)
(p "(f a)")

(p "## 作用的順序の評価")
(p "(sum-of-squares (+ 5 1) (* 5 2))")
(p "(+ (square 6) (square 10))")
(p "(+ (* 6 6) (* 10 10))")
(p "(+ 36 100)")

(p "## 正規的順序の評価")
(p "(sum-of-squares (+ 5 1) (* 5 2))")
(p "(+ (square (+ 5 1)) (square (* 5 2)))")
(p "(+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))")
(p "(+ (* 6 6) (* 10 10))")
(p "(+ 36 100)")

(p (f a))

;; 1.1.6
(p "# 1.1.5")
(p "(define (abs x)\n(cond ((> x 0) x)\n((= x 0) x)\n((< x 0) (- x))))\n")
(define (abs x)
  (cond ((> x 0) x)
	((= x 0) x)
	((< x 0) (- x))))

(p "(abs 1)")
(p (abs 1))
(p "(abs 0)")
(p (abs 0))
(p "(abs -1)")
(p (abs -1))

;; p_1.1
(p "# p_1.1")
(p 10)
(p (+ 5 3 4))
(p (- 9 1))
(p (/ 6 2))
