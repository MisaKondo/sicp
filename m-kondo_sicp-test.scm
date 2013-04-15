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

(test-section "# p_1.1")
(test* "10" 10 10)
(test* "(+ 5 3 4)" 12 (+ 5 3 4))
(test* "(- 9 1)" 8 (- 9 1))
(test* "(/ 6 2)" 3 (/ 6 2))

(test-section "# p_1.2")
(test-section "# p_1.3")
(test* "2番目と3番目が大きいsum-of-squares-alpha 1 2 3" 13 (sum-of-squares-alpha 1 2 3))
(test* "1番目と2番目が大きいsum-of-squares-alpha 3 2 1" 13 (sum-of-squares-alpha 3 2 1))
(test* "1番目と3番目が大きいsum-of-squares-alpha 2 1 3" 13 (sum-of-squares-alpha 2 1 3))
(test* "1~3番目の値が等しいsum-of-squares-alpha 1 1 1" 2 (sum-of-squares-alpha 1 1 1))
(test* "1番目と2番目の値が等しいsum-of-squares-alpha 2 2 3" 13 (sum-of-squares-alpha 2 2 3))
(test* "1番目と2番目の値が等しいsum-of-squares-alpha 2 2 1" 8 (sum-of-squares-alpha 2 2 1))
(test* "sum-of-squares-alpha 3 2 3" 18 (sum-of-squares-alpha 3 2 3))

(test-section "# p_1.4")
(test-section "# p_1.5")
(test-end)