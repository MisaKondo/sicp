#!/usr/local/bin/gosh

(use gauche.test)

(add-load-path ".")
(load "m-kondo_sicp")

(test-start "m-kondo_sicp")

(test-section "# 1.1.4")
(test* "square 3" 9 (square 3))
(test* "square 9" 81 (square 9))
(test* "sum-of-squares 1 2" 5 (sum-of-squares 1 2))
(test* "sum-of-squares 2 3" 13 (sum-of-squares 2 3))
(test* "f 1" 8 (f 1))
(test* "f 2" 25 (f 2))

(test-section "# 1.1.6")
(test* "abs 1" 1 (abs 1))
(test* "abs 0" 0 (abs 0))
(test* "abs -1" 1 (abs -1))

(test-end)