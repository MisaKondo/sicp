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